<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages).
-->

A Flutter client for the Japan Post API (https://lp-api.da.pf.japanpost.jp/). 
This package simplifies interaction with Japan Post services, making it incredibly straightforward to integrate postal code and address search functionalities into your Flutter applications.

## Features

*   **Postal Code Search:** Easily search for addresses using a Japanese postal code.
*   **Address Detail Search:** Search for addresses by providing prefecture, city, and town names.
*   **API Token Management:** Handles API token acquisition and management for seamless integration.
*   **Error Handling:** Provides clear error handling for API responses.


## Getting started

1.  **Add to `pubspec.yaml`:**
    Add the `japan_post_api_client` to your project's `pubspec.yaml` file:

    ```yaml
    dependencies:
      japan_post_api_client: ^0.0.1 # Use the latest version
    ```

2.  **Install dependencies:**
    Run `flutter pub get` in your project's root directory.


## Usage

### Initialize the API Client

Initialize the `JapanPostApiClient` with your client ID and secret key. 
You will also need to obtain an API token using your public IP address. The `getToken` method handles this process.

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';

// Replace with your actual client ID and secret key
final JapanPostApiClient apiClient = JapanPostApiClient(
  clientId: 'YOUR_CLIENT_ID',
  secretKey: 'YOUR_SECRET_KEY',
);

Future<void> initializeApiClient(String publicIp) async {
  try {
    await apiClient.getToken(publicIp);
    print('API Client initialized and token obtained.');
  } catch (e) {
    print('Error initializing API Client or getting token: $e');
  }
}
```

### Postal Code Search

To search for an address using a postal code:

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';

Future<void> searchByPostalCode(String postalCode) async {
  try {
    final searchcodeRes = await apiClient.search(postalCode);
    if (searchcodeRes != null && searchcodeRes.addresses.isNotEmpty) {
      for (var address in searchcodeRes.addresses) {
        print('Address: ${address.prefName} ${address.cityName} ${address.townName}');
      }
    } else {
      print('No address found for postal code: $postalCode');
    }
  } catch (e) {
    print('Error searching by postal code: $e');
  }
}
```

### Address Detail Search

To search for an address using prefecture, city, and town names:

```dart
import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:japan_post_api_client/src/model/address_req.dart';

Future<void> searchByAddressDetails(String prefName, String cityName, String townName) async {
  try {
    final addressReq = AddressReq(
      prefName: prefName,
      cityName: cityName,
      townName: townName,
    );
    final addressRes = await apiClient.searchAddress(addressReq);
    if (addressRes != null && addressRes.addresses.isNotEmpty) {
      for (var address in addressRes.addresses) {
        print('Address: ${address.prefName} ${address.cityName} ${address.townName}');
      }
    } else {
      print('No address found for the provided details.');
    }
  } catch (e) {
    print('Error searching by address details: $e');
  }
}
```

For a complete, runnable example, please refer to the `example/` directory in this repository.


## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
