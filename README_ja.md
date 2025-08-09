<!--
このREADMEはパッケージを説明します。このパッケージをpub.devに公開すると、
このREADMEの内容がパッケージのランディングページに表示されます。

良いパッケージREADMEを書く方法については、
[パッケージページを書く](https://dart.dev/tools/pub/writing-package-pages)ガイドを参照してください。

パッケージの開発に関する一般的な情報については、Dartガイドの
[パッケージの作成](https://dart.dev/guides/libraries/create-packages)と
Flutterガイドの[パッケージとプラグインの開発](https://flutter.dev/to/develop-packages)を参照してください。
-->

[English](README.md) | [日本語](README_ja.md)

# japan_post_api_client

[![pub package](https://img.shields.io/pub/v/japan_post_api_client.svg)](https://pub.dev/packages/japan_post_api_client)
![style: effective dart](https://img.shields.io/badge/style-effective_dart-40c4ff.svg)
[![Platform Badge](https://img.shields.io/badge/platform-android%20|%20ios%20-green.svg)](https://pub.dev/packages/japan_post_api_client)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

日本郵便API（https://lp-api.da.pf.japanpost.jp/） のFlutterクライアントです。 
このパッケージは日本郵便サービスとの連携を簡素化し、郵便番号や住所検索機能をFlutterアプリケーションに非常に簡単に統合できるようにします。

![デモ!](https://raw.githubusercontent.com/satoyan/japan_postal_api_client_for_flutter/refs/heads/master/example/demo.gif)

## 特徴

*   **郵便番号検索:** 日本の郵便番号を使用して住所を簡単に検索できます。
*   **住所詳細検索:** 都道府県、市区町村、町名を指定して住所を検索できます。
*   **APIトークン管理:** シームレスな統合のためにAPIトークンの取得と管理を行います。
*   **エラーハンドリング:** APIレスポンスの明確なエラーハンドリングを提供します。

## はじめに

1.  **`pubspec.yaml`に追加:**
    プロジェクトの`pubspec.yaml`ファイルに`japan_post_api_client`を追加します。

    ```yaml
    dependencies:
      japan_post_api_client: ^0.0.1 # 最新バージョンを使用
      public_ip_address: ^1.2.0 # 実行中のデバイスでパブリックIPアドレスを取得するためにこのパッケージを使用します。お好みのパッケージを使用することもできます。
    ```

2.  **依存関係のインストール:**
    プロジェクトのルートディレクトリで`flutter pub get`を実行します。

## 簡単な例 (Dart CLI)

```dart
import 'dart:io';

import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:public_ip_address/public_ip_address.dart';

Future<void> main() async {
  final client = JapanPostApiClient(
    clientId: 'YOUR_CLIENT_ID',
    secretKey: 'YOUR_SECRET_KEY',
  );

  final ipAddress = await (IpAddress().getIp());
  await client.getToken(ipAddress);
  final result = await client.searchByPostalCode('1000001');

  switch (result) {
    case ApiResultOk(data: SearchcodeSearchRes(addresses: final data)):
      for (final address in data) {
        print('$data');
      }
    case ApiResultError(error: final e, stackTrace: final s):
      print('Error: $e, $s');
    default:
      print('何かがうまくいきませんでした');
  }

  exit(0);
}
```

## 使用方法

### APIクライアントの初期化

`JapanPostApiClient`をクライアントIDとシークレットキーで初期化します。
公開IPアドレスを使用してAPIトークンを取得する必要もあります。`getToken`メソッドがこのプロセスを処理します。

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';

// 実際のクライアントIDとシークレットキーに置き換えてください
final JapanPostApiClient apiClient = JapanPostApiClient(
  clientId: 'YOUR_CLIENT_ID',
  secretKey: 'YOUR_SECRET_KEY',
);

Future<void> initializeApiClient(String publicIp) async {
  final result = await apiClient.getToken(publicIp);
  switch (result) {
    case ApiResultOk():
      // APIクライアントが初期化され、トークンが取得されました。
      // TODO: 初期化成功を示すUI状態を更新する
      // 例: setState(() { _isApiClientInitialized = true; });
      break;
    case ApiResultError(error: final e, stackTrace: final s):
      // TODO: 初期化エラーを処理する（例: SnackBarやダイアログを表示する）
      // print('Error initializing API Client or getting token: $e');
      break;
  }
}
```

**パブリックIPアドレスの取得（例）**

日本郵便APIはトークン取得のためにパブリックIPアドレスを必要とします。`public_ip_address`のようなパッケージを使用してプログラムで取得できます。

まず、`pubspec.yaml`に依存関係を追加します：

```yaml
dependencies:
  public_ip_address: ^1.2.0 # 最新のバージョンを使用してください
```

Then, you can get the IP address like this:

```dart
import 'package:public_ip_address/public_ip_address.dart';

Future<String?> getPublicIp() async {
  final ipChecker = IpAddress();
  try {
    final ipAddress = await ipChecker.getIp();
    return ipAddress;
  } catch (e) {
    // エラーを処理します。例：ログに記録するかメッセージを表示する
    return null;
  }
}
```

### 郵便番号検索

郵便番号を使用して住所を検索するには:

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';

Future<List<SearchcodeSearchResAddressesInner>> searchByPostalCode(String postalCode) async {
  final result = await apiClient.searchByPostalCode(postalCode);
  switch (result) {
    case ApiResultOk(data: final searchcodeRes):
      if (searchcodeRes != null && searchcodeRes.addresses.isNotEmpty) {
        // TODO: 住所リストでUIを更新する
        // 例: setState(() { _addresses = searchcodeRes.addresses; });
        return searchcodeRes.addresses;
      } else {
        // TODO: 住所が見つからなかった場合を処理する（例: ユーザーにメッセージを表示する）
        // print('No address found for postal code: $postalCode');
        return [];
      }
    case ApiResultError(error: final e, stackTrace: final s):
      // TODO: 検索エラーを処理する（例: SnackBarやダイアログを表示する）
      // print('Error searching by postal code: $e');
      return [];
  }
}
```

### 住所詳細検索

都道府県、市区町村、町域名を使用して住所を検索するには:

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:japan_post_api_client/src/model/address_req.dart';

Future<List<AddressResAddressesInner>> searchByAddressDetails(String prefName, String cityName, String townName) async {
  final addressReq = AddressReq(
    prefName: prefName,
    cityName: cityName,
    townName: townName,
  );
  final result = await apiClient.searchByAddress(addressReq);
  switch (result) {
    case ApiResultOk(data: final addressRes):
      if (addressRes != null && addressRes.addresses.isNotEmpty) {
        // TODO: 住所リストでUIを更新する
        // 例: setState(() { _addresses = addressRes.addresses; });
        return addressRes.addresses;
      } else {
        // TODO: 住所が見つからなかった場合を処理する
        // print('No address found for the provided details.');
        return [];
      }
    case ApiResultError(error: final e, stackTrace: final s):
      // TODO: 検索エラーを処理する（例: SnackBarやダイアログを表示する）
      // print('Error searching by address details: $e');
      return [];
  }
}
```

完全な実行可能な例については、このリポジトリの`example/`ディレクトリを参照してください。

### 直接APIアクセス

よりきめ細かな制御や特定のAPIエンドポイントに直接アクセスするには、トークン初期化後に`apiClient.searchcodeApi`および`apiClient.addresszipApi`フィールドを使用できます。これらのフィールドは基になるAPIクライアントオブジェクトを公開し、利用可能なすべてのパラメータでメソッドを呼び出すことができます。

**例: `searchcodeApi`を直接使用する**

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:japan_post_api_client/src/api/searchcode_api.dart'; // 既に利用可能な場合はインポート不要
import 'package:japan_post_api_client/src/model/searchcode_search_res.dart'; // 既に利用可能な場合はインポート不要

Future<List<SearchcodeSearchResAddressesInner>> directSearchCode(String postalCode, {
  num? page,
  num? limit,
  String? ecUid,
  num? choikitype,
  num? searchtype,
}) async {

  final SearchcodeApi? searchcodeApi = apiClient.searchcodeApi;

  if (searchcodeApi == null) {
    // searchcodeApiが初期化されていない場合を処理する（例: トークンが取得されていない）
    return [];
  }

  try {
    final searchcodeRes = await searchcodeApi.searchCode(
      postalCode,
      limit: limit,
      searchtype: searchtype,
      page: page,
      choikitype: choikitype,
    );

    if (searchcodeRes != null && searchcodeRes.addresses.isNotEmpty) {
      // TODO: 住所を処理して表示する
      return searchcodeRes.addresses;
    } else {
      // TODO: 住所が見つからなかった場合を処理する
      return [];
    }
  } catch (e) {
    // TODO: APIエラーを処理する
    return [];
  }
}
```

**例: `addresszipApi`を直接使用する**

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:japan_post_api_client/src/api/addresszip_api.dart'; // 既に利用可能な場合はインポート不要
import 'package:japan_post_api_client/src/model/address_req.dart'; // 既に利用可能な場合はインポート不要
import 'package:japan_post_api_client/src/model/address_res.dart'; // 既に利用可能な場合はインポート不要

Future<List<AddressResAddressesInner>> directSearchAddress(AddressReq addressReq) async {
  // APIクライアントが初期化され、トークンが有効であることを確認する
  // await apiClient.getToken(publicIp); // トークンがまだ取得されていないか期限切れの場合はこれを呼び出す

  final AddresszipApi? addresszipApi = apiClient.addresszipApi;

  if (addresszipApi == null) {
    // addresszipApiが初期化されていない場合を処理する（例: トークンが取得されていない）
    return [];
  }

  try {
    final addressRes = await addresszipApi.searchAddress(addressReq);

    if (addressRes != null && addressRes.addresses.isNotEmpty) {
      // TODO: 住所を処理して表示する
      return addressRes.addresses;
    } else {
      // TODO: 住所が見つからなかった場合を処理する
      return [];
    }
  } catch (e) {
    // TODO: APIエラーを処理する
    return [];
  }
}
```

## 追加情報
