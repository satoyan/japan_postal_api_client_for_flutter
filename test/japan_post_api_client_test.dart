import 'package:flutter_test/flutter_test.dart';
import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart';
import 'dart:convert';

import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'japan_post_api_client_test.mocks.dart';

@GenerateNiceMocks([MockSpec<ApiClientFactory>()])
void main() {
  group('JapanPostApiClient', () {
    late JapanPostApiClient target;
    late MockApiClientFactory mockApiClientFactory;
    late ApiResult<JtokenRes?> tokenResult;

    setUp(() async {
      mockApiClientFactory = MockApiClientFactory();
      final apiClient = ApiClient();

      apiClient.client = MockClient((request) async {
        if (request.url.path.contains('/token')) {
          return http.Response(
            json.encode({
              'token': 'test_token',
              'token_type': 'Bearer',
              'expires_in': 3600,
              'scope': 'read',
            }),
            200,
          );
        } else if (request.url.path.contains('/searchcode')) {
          return http.Response(
            json.encode({
              'page': 1,
              'limit': 1,
              'count': 1,
              'searchtype': 'zipcode',
              'addresses': [],
            }),
            200,
          );
        } else if (request.url.path.contains('/addresszip')) {
          return http.Response(
            json.encode({
              'level': 1,
              'page': 1,
              'limit': 1,
              'count': 1,
              'addresses': [],
            }),
            200,
          );
        }
        return http.Response('Not Found', 404);
      });

      when(
        mockApiClientFactory.createTokeApi(any),
      ).thenReturn(TokenApi(apiClient));

      when(
        mockApiClientFactory.createAddresszipApi(any),
      ).thenReturn(AddresszipApi(apiClient));

      when(
        mockApiClientFactory.createSearchcodeApi(any),
      ).thenReturn(SearchcodeApi(apiClient));

      target = JapanPostApiClient(
        clientId: 'test_client_id',
        secretKey: 'test_secret_key',
        apiClientFactory: mockApiClientFactory,
      );

      tokenResult = await target.getToken('127.0.0.1');
    });

    test('getToken success', () async {
      expect(tokenResult, isA<ApiResultOk>());
      expect((tokenResult as ApiResultOk).data, isNotNull);
      expect(target.isTokenValid(), isTrue);
    });

    test('search success', () async {
      final result = await target.searchByPostalCode('1234567');
      expect(result, isA<ApiResultOk>());
      expect((result as ApiResultOk).data, isNotNull);
    });

    test('searchAddress success', () async {
      final result = await target.searchByAddress(AddressReq());
      expect(result, isA<ApiResultOk>());
      expect((result as ApiResultOk).data, isNotNull);
    });
  });
}
