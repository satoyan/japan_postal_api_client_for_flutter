<!--
このREADMEはパッケージについて説明します。このパッケージをpub.devに公開すると、
このREADMEの内容がパッケージのランディングページに表示されます。

優れたパッケージREADMEの書き方については、
[パッケージページの作成](https://dart.dev/tools/pub/writing-package-pages)ガイドを参照してください。

パッケージ開発に関する一般的な情報については、Dartの
[パッケージの作成](https://dart.dev/guides/libraries/create-packages)ガイドとFlutterの
[パッケージとプラグインの開発](https://flutter.dev/to/develop-packages)ガイドを参照してください。
-->

[English](README.md) | 日本語

日本郵便API (https://lp-api.da.pf.japanpost.jp/) 用のFlutterクライアントです。
このパッケージは、日本郵便サービスとの連携を簡素化し、郵便番号や住所検索機能をFlutterアプリケーションに非常に簡単に統合できるようにします。

## 機能

*   **郵便番号検索:** 日本の郵便番号を使用して住所を簡単に検索できます。
*   **住所詳細検索:** 都道府県、市区町村、町域名を指定して住所を検索できます。
*   **APIトークン管理:** APIトークンの取得と管理を処理し、シームレスな統合を実現します。
*   **エラーハンドリング:** API応答に対する明確なエラーハンドリングを提供します。


## はじめに

1.  **`pubspec.yaml`に追加:**
    プロジェクトの`pubspec.yaml`ファイルに`japan_post_api_client`を追加します。

    ```yaml
    dependencies:
      japan_post_api_client: ^0.0.1 # 最新バージョンを使用
    ```

2.  **依存関係のインストール:**
    プロジェクトのルートディレクトリで`flutter pub get`を実行します。


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
  public_ip_address: ^最新バージョン # 最新のバージョンを使用してください
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
  String? dgacode,
  String? prefCode,
  String? prefName,
  String? prefKana,
  String? prefRoma,
  int? cityCode,
  String? cityName,
  String? cityKana,
  String? cityRoma,
  String? townName,
  String? townKana,
  String? townRoma,
  String? bizName,
  String? bizKana,
  String? bizRoma,
  String? blockName,
  String? otherName,
  String? address,
  String? longitude,
  String? latitude,
  int? page,
  int? limit,
}) async {
  // APIクライアントが初期化され、トークンが有効であることを確認する
  // await apiClient.getToken(publicIp); // トークンがまだ取得されていないか期限切れの場合はこれを呼び出す

  final SearchcodeApi? searchcodeApi = apiClient.searchcodeApi;

  if (searchcodeApi == null) {
    // searchcodeApiが初期化されていない場合を処理する（例: トークンが取得されていない）
    return [];
  }

  try {
    final searchcodeRes = await searchcodeApi.searchCode(
      postalCode,
      dgacode: dgacode,
      prefCode: prefCode,
      prefName: prefName,
      prefKana: prefKana,
      prefRoma: prefRoma,
      cityCode: cityCode,
      cityName: cityName,
      cityKana: cityKana,
      cityRoma: cityRoma,
      townName: townName,
      townKana: townKana,
      townRoma: townRoma,
      bizName: bizName,
      bizKana: bizKana,
      bizRoma: bizRoma,
      blockName: blockName,
      otherName: otherName,
      address: address,
      longitude: longitude,
      latitude: latitude,
      page: page,
      limit: limit,
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

TODO: パッケージについてユーザーにもっと伝える: 詳細情報を見つける場所、パッケージへの貢献方法、問題の報告方法、パッケージ作成者からの期待される応答など。
