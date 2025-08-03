//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=3.8

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../../japan_post_api_client.dart';

class TokenApi {
  TokenApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// API利用トークンの取得 (1-1028)
  ///
  /// OAuth2.0におけるgrant_typeがclient_credentialsに基づいてトークンリクエストに対してAPI利用のトークンを返す。<br> grant_typeとともに、組織およびシステム登録で事前に取得しているクライアントIDとシークレットキーを指定してリクエストし、検証結果が問題ない場合はJWT形式のトークンを返却。
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] xForwardedFor (required):
  ///   送信元IPアドレス
  ///
  /// * [JtokenReq] jtokenReq (required):
  Future<Response> posttokenWithHttpInfo(
    String xForwardedFor,
    JtokenReq jtokenReq,
  ) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/j/token';

    // ignore: prefer_final_locals
    Object? postBody = jtokenReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'x-forwarded-for'] = parameterToString(xForwardedFor);

    const contentTypes = <String>['application/json'];

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// API利用トークンの取得 (1-1028)
  ///
  /// OAuth2.0におけるgrant_typeがclient_credentialsに基づいてトークンリクエストに対してAPI利用のトークンを返す。<br> grant_typeとともに、組織およびシステム登録で事前に取得しているクライアントIDとシークレットキーを指定してリクエストし、検証結果が問題ない場合はJWT形式のトークンを返却。
  ///
  /// Parameters:
  ///
  /// * [String] xForwardedFor (required):
  ///   送信元IPアドレス
  ///
  /// * [JtokenReq] jtokenReq (required):
  Future<JtokenRes?> posttoken(
    String xForwardedFor,
    JtokenReq jtokenReq,
  ) async {
    final response = await posttokenWithHttpInfo(xForwardedFor, jtokenReq);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty &&
        response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(
            await _decodeBodyBytes(response),
            'JtokenRes',
          )
          as JtokenRes;
    }
    return null;
  }
}
