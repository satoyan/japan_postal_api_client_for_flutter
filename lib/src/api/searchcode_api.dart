//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of '../api.dart';

class SearchcodeApi {
  SearchcodeApi([ApiClient? apiClient])
      : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// コード番号検索 (1-1029)
  ///
  /// 郵便番号、事業所個別郵便番号、デジタルアドレスの統一検索エンドポイント。 いずれかを指定して検索を行い、住所情報を返す。   検索時に、ページ番号や取得件数を指定。指定がない場合はデフォルト値が適用される。    パラメーター: - `page`: ページ番号 (デフォルト値:1) - `limit`: 取得する最大レコード数 (デフォルト値:1、最大値:1000) - `choikitype`: 返却する町域フィールド (指定がない場合はchoikitype=1とみなす)   - `1`: 括弧なし   - `2`: 括弧あり - `searchtype`: 検索対象 (指定がない場合はsearchtype=1とみなす)   - `1`: 郵便番号、事業所個別郵便番号、デジタルアドレスを検索   - `2`: 郵便番号、デジタルアドレスを検索
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] searchCode (required):
  ///   - 郵便番号   (3桁以上の数値。入力された値が7桁未満であった場合、入力値から始まるデータをパターン検索する。) - 事業所個別郵便番号 - デジタルアドレス
  ///
  /// * [num] page:
  ///   ページ番号 (デフォルト値:1)
  ///
  /// * [num] limit:
  ///   取得最大レコード数 (デフォルト値:1、最大値:1000)
  ///
  /// * [String] ecUid:
  ///   プロバイダーのユーザーID (クエリパラメーター)
  ///
  /// * [num] choikitype:
  ///   返却するフィールドを指定 (指定がない場合はchoikitype=1とみなす) - `1`: 括弧無し町域フィールド - `2`: 括弧有り町域フィールド
  ///
  /// * [num] searchtype:
  ///   検索方法を指定 (指定がない場合はsearchtype=1とみなす) - `1`: 郵便番号、事業所個別郵便番号、デジタルアドレスを検索する - `2`: 郵便番号、デジタルアドレスを検索する (事業所個別郵便番号は検索対象外)
  Future<Response> searchCodeWithHttpInfo(
    String searchCode, {
    num? page,
    num? limit,
    String? ecUid,
    num? choikitype,
    num? searchtype,
  }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/v1/searchcode/{search_code}'
        .replaceAll('{search_code}', searchCode);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (page != null) {
      queryParams.addAll(_queryParams('', 'page', page));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
    if (ecUid != null) {
      queryParams.addAll(_queryParams('', 'ec_uid', ecUid));
    }
    if (choikitype != null) {
      queryParams.addAll(_queryParams('', 'choikitype', choikitype));
    }
    if (searchtype != null) {
      queryParams.addAll(_queryParams('', 'searchtype', searchtype));
    }

    const contentTypes = <String>[];

    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// コード番号検索 (1-1029)
  ///
  /// 郵便番号、事業所個別郵便番号、デジタルアドレスの統一検索エンドポイント。 いずれかを指定して検索を行い、住所情報を返す。   検索時に、ページ番号や取得件数を指定。指定がない場合はデフォルト値が適用される。    パラメーター: - `page`: ページ番号 (デフォルト値:1) - `limit`: 取得する最大レコード数 (デフォルト値:1、最大値:1000) - `choikitype`: 返却する町域フィールド (指定がない場合はchoikitype=1とみなす)   - `1`: 括弧なし   - `2`: 括弧あり - `searchtype`: 検索対象 (指定がない場合はsearchtype=1とみなす)   - `1`: 郵便番号、事業所個別郵便番号、デジタルアドレスを検索   - `2`: 郵便番号、デジタルアドレスを検索
  ///
  /// Parameters:
  ///
  /// * [String] searchCode (required):
  ///   - 郵便番号   (3桁以上の数値。入力された値が7桁未満であった場合、入力値から始まるデータをパターン検索する。) - 事業所個別郵便番号 - デジタルアドレス
  ///
  /// * [num] page:
  ///   ページ番号 (デフォルト値:1)
  ///
  /// * [num] limit:
  ///   取得最大レコード数 (デフォルト値:1、最大値:1000)
  ///
  /// * [String] ecUid:
  ///   プロバイダーのユーザーID (クエリパラメーター)
  ///
  /// * [num] choikitype:
  ///   返却するフィールドを指定 (指定がない場合はchoikitype=1とみなす) - `1`: 括弧無し町域フィールド - `2`: 括弧有り町域フィールド
  ///
  /// * [num] searchtype:
  ///   検索方法を指定 (指定がない場合はsearchtype=1とみなす) - `1`: 郵便番号、事業所個別郵便番号、デジタルアドレスを検索する - `2`: 郵便番号、デジタルアドレスを検索する (事業所個別郵便番号は検索対象外)
  Future<SearchcodeSearchRes?> searchCode(
    String searchCode, {
    num? page,
    num? limit,
    String? ecUid,
    num? choikitype,
    num? searchtype,
  }) async {
    final response = await searchCodeWithHttpInfo(
      searchCode,
      page: page,
      limit: limit,
      ecUid: ecUid,
      choikitype: choikitype,
      searchtype: searchtype,
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
        'SearchcodeSearchRes',
      ) as SearchcodeSearchRes;
    }
    return null;
  }
}
