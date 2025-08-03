//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../api.dart';

class AddresszipApi {
  AddresszipApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// 住所から郵便番号を検索 (1-1018/1-1019)
  ///
  /// 住所の一部から該当する郵便番号・住所情報を検索
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AddressReq] addressReq (required):
  ///   - 住所から該当する郵便番号を返す - マッチングレベルに応じたデータを返す - リクエストのデータタイプを添えてリクエストすること。データタイプは下記が該当   - コード (pref_codeなど)   - 名称 (pref_nameなど)   - カタカナ   - ローマ字   - フリーワード - パラメータについての注意   - `page`でページ番号を指定し、`limit`でレスポンスの最大取得件数を指定可能   - `page`と`limit`が省略された場合は、デフォルト値 (page=1, limit=1000)が適用される   - `pref_code`と`pref_name`が両方リクエストされた場合は、`pref_code`が優先される   - `city_code`と`city_name`が両方リクエストされた場合は、`city_code`が優先される
  ///
  /// * [String] ecUid:
  ///   プロバイダーのユーザーID (クエリパラメーター)
  Future<Response> searchAddressWithHttpInfo(
    AddressReq addressReq, {
    String? ecUid,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/addresszip';

    // ignore: prefer_final_locals
    Object? postBody = addressReq;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (ecUid != null) {
      queryParams.addAll(_queryParams('', 'ec_uid', ecUid));
    }

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

  /// 住所から郵便番号を検索 (1-1018/1-1019)
  ///
  /// 住所の一部から該当する郵便番号・住所情報を検索
  ///
  /// Parameters:
  ///
  /// * [AddressReq] addressReq (required):
  ///   - 住所から該当する郵便番号を返す - マッチングレベルに応じたデータを返す - リクエストのデータタイプを添えてリクエストすること。データタイプは下記が該当   - コード (pref_codeなど)   - 名称 (pref_nameなど)   - カタカナ   - ローマ字   - フリーワード - パラメータについての注意   - `page`でページ番号を指定し、`limit`でレスポンスの最大取得件数を指定可能   - `page`と`limit`が省略された場合は、デフォルト値 (page=1, limit=1000)が適用される   - `pref_code`と`pref_name`が両方リクエストされた場合は、`pref_code`が優先される   - `city_code`と`city_name`が両方リクエストされた場合は、`city_code`が優先される
  ///
  /// * [String] ecUid:
  ///   プロバイダーのユーザーID (クエリパラメーター)
  Future<AddressRes?> searchAddress(
    AddressReq addressReq, {
    String? ecUid,
  }) async {
    final response = await searchAddressWithHttpInfo(
      addressReq,
      ecUid: ecUid,
    );
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
        'AddressRes',
      ) as AddressRes;
    }
    return null;
  }
}
