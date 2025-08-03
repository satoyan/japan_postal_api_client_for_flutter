import 'package:japan_post_api_client/src/api.dart';

class JapanPostApiClient {
  final String clientId;
  final String secretKey;
  final TokenApi _tokenApi = TokenApi(ApiClient());
  SearchcodeApi? _searchcodeApi;
  AddresszipApi? _addresszipApi;
  DateTime? _tokenExpiration;

  JapanPostApiClient({required this.clientId, required this.secretKey});

  Future<void> getToken(String publicIp) async {
    try {
      final jtokenReq = JtokenReq(
        grantType: 'client_credentials',
        clientId: clientId,
        secretKey: secretKey,
      );
      final tokenResponse = await _tokenApi.posttoken(publicIp, jtokenReq);

      if (tokenResponse != null) {
        _tokenExpiration = DateTime.now().add(
          Duration(seconds: tokenResponse.expiresIn),
        );
        final auth = HttpBearerAuth();
        auth.accessToken = tokenResponse.token;
        _searchcodeApi = SearchcodeApi(ApiClient(authentication: auth));
        _addresszipApi = AddresszipApi(ApiClient(authentication: auth));
      } else {
        _tokenExpiration = null;
        _searchcodeApi = null;
      }
    } catch (e) {
      print('Error getting token: $e');
      _tokenExpiration = null;
      _searchcodeApi = null;
      rethrow;
    }
  }

  Future<SearchcodeSearchRes?> search(String postalCode) async {
    if (!isTokenValid() || _searchcodeApi == null) {
      throw Exception(
        'Token is not available or has expired. Please get a new token.',
      );
    }
    try {
      final result = await _searchcodeApi!.searchCode(postalCode);
      return result;
    } catch (e) {
      print('Error searching: $e');
      rethrow;
    }
  }

  Future<AddressRes?> searchAddress(AddressReq addressReq) async {
    if (!isTokenValid() || _addresszipApi == null) {
      throw Exception(
        'Token is not available or has expired. Please get a new token.',
      );
    }

    try {
      final result = await _addresszipApi!.searchAddress(addressReq);
      return result;
    } catch (e) {
      print('Error searching address: $e');
      rethrow;
    }
  }

  bool isTokenValid() {
    if (_tokenExpiration == null) {
      return false;
    }
    return DateTime.now().isBefore(_tokenExpiration!);
  }
}
