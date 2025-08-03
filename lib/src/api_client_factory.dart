// @dart=3.8

part of '../japan_post_api_client.dart';

class ApiClientFactory {
  TokenApi createTokeApi(ApiClient apiClient) {
    return TokenApi(apiClient);
  }

  SearchcodeApi createSearchcodeApi(ApiClient apiClient) {
    return SearchcodeApi(apiClient);
  }

  AddresszipApi createAddresszipApi(ApiClient apiClient) {
    return AddresszipApi(apiClient);
  }
}
