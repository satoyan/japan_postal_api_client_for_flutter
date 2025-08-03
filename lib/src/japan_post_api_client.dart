import 'package:japan_post_api_client/japan_post_api_client.dart';

class JapanPostApiClient {
  final String clientId;
  final String secretKey;
  TokenApi? tokenApi;
  SearchcodeApi? searchcodeApi;
  AddresszipApi? addresszipApi;
  DateTime? _tokenExpiration;
  ApiClientFactory? apiClientFactory;

  // JapanPostApiClient({required this.clientId, required this.secretKey});
  JapanPostApiClient({
    required this.clientId,
    required this.secretKey,
    this.apiClientFactory,
  }) {
    apiClientFactory ??= ApiClientFactory();
    tokenApi = apiClientFactory?.createTokeApi(ApiClient());
  }

  Future<ApiResult<JtokenRes?>> getToken(String publicIp) async {
    try {
      final jtokenReq = JtokenReq(
        grantType: 'client_credentials',
        clientId: clientId,
        secretKey: secretKey,
      );

      return switch (await tokenApi?.posttoken(publicIp, jtokenReq)) {
        JtokenRes tokenRes => () {
          _tokenExpiration = DateTime.now().add(
            Duration(seconds: tokenRes.expiresIn),
          );
          final auth = HttpBearerAuth();
          auth.accessToken = tokenRes.token;
          searchcodeApi = apiClientFactory?.createSearchcodeApi(
            ApiClient(authentication: auth),
          );
          addresszipApi = apiClientFactory?.createAddresszipApi(
            ApiClient(authentication: auth),
          );

          return ApiResult.ok(tokenRes);
        }(),
        _ => () {
          _tokenExpiration = null;
          searchcodeApi = null;
          return ApiResult.ok(null);
        }(),
      };
    } catch (e, s) {
      _tokenExpiration = null;
      searchcodeApi = null;
      return ApiResult.error(e, s);
    }
  }

  Future<ApiResult<SearchcodeSearchRes?>> searchByPostalCode(
    String postalCode,
  ) async {
    if (!isTokenValid() || searchcodeApi == null) {
      return ApiResult.error(
        Exception(
          'Token is not available or has expired. Please get a new token.',
        ),
        StackTrace.current,
      );
    }

    try {
      return ApiResult.ok(await searchcodeApi!.searchCode(postalCode));
    } catch (e, s) {
      return ApiResult.error(e, s);
    }
  }

  Future<ApiResult<AddressRes?>> searchByAddress(AddressReq addressReq) async {
    if (!isTokenValid() || addresszipApi == null) {
      return ApiResult.error(
        Exception(
          'Token is not available or has expired. Please get a new token.',
        ),
        StackTrace.current,
      );
    }

    try {
      return ApiResult.ok(await addresszipApi!.searchAddress(addressReq));
    } catch (e, s) {
      return ApiResult.error(e, s);
    }
  }

  bool isTokenValid() {
    if (_tokenExpiration == null) {
      return false;
    }
    return DateTime.now().isBefore(_tokenExpiration!);
  }
}
