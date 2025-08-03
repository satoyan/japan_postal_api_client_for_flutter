import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:japan_post_api_client/japan_post_api_client.dart';
import 'package:public_ip_address/public_ip_address.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Japan Post API Client Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AddressSearchPage(),
    );
  }
}

class AddressSearchPage extends StatefulWidget {
  const AddressSearchPage({super.key});

  @override
  State<AddressSearchPage> createState() => _AddressSearchPageState();
}

class _AddressSearchPageState extends State<AddressSearchPage> {
  final _apiClient = JapanPostApiClient(
    clientId: dotenv.env['CLIENT_ID']!,
    secretKey: dotenv.env['SECRET_KEY']!,
  );
  final Logger _logger = Logger();

  @override
  void initState() {
    _initClient();
    super.initState();
  }

  void _initClient() async {
    try {
      final myPublicIp = await IpAddress().getIp();
      await _apiClient.getToken(myPublicIp);
      _logger.i('API Client initialized and token obtained.');
    } catch (e) {
      _logger.e('Error initializing API Client or getting token: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Japan Post API Client Example'),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Postal Code Search'),
              Tab(text: 'Address Detail Search'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            PostalCodeSearchTab(apiClient: _apiClient),
            AddressDetailSearchTab(apiClient: _apiClient),
          ],
        ),
      ),
    );
  }
}

class PostalCodeSearchTab extends StatefulWidget {
  const PostalCodeSearchTab({super.key, required this.apiClient});

  final JapanPostApiClient apiClient;

  @override
  State<PostalCodeSearchTab> createState() => _PostalCodeSearchTabState();
}

class _PostalCodeSearchTabState extends State<PostalCodeSearchTab> {
  final TextEditingController _postalCodeController = TextEditingController();
  List<String> _addressResults = ['Enter a postal code to search'];
  final Logger _logger = Logger();

  Future<void> _searchByPostalCode() async {
    final postalCode = _postalCodeController.text;
    if (postalCode.isEmpty) {
      setState(() {
        _addressResults = ['Please enter a postal code.'];
      });
      return;
    }

    setState(() {
      _addressResults = ['Searching...'];
    });

    final searchcodeRes = await widget.apiClient.searchByPostalCode(postalCode);
    switch (searchcodeRes) {
      case ApiResultOk(data: SearchcodeSearchRes(addresses: final addresses)):
        setState(() {
          _addressResults = addresses
              .map(
                (address) =>
                    '${address.prefName} ${address.cityName} ${address.townName}',
              )
              .toList();
        });
      case ApiResultError(error: final e, stackTrace: final s):
        setState(() {
          _addressResults = ['Something went wrong.'];
        });
        _logger.e('Error searching by postal code', error: e, stackTrace: s);
      default:
        setState(() {
          _addressResults = ['No address found for this postal code.'];
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _postalCodeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Postal Code (e.g., 1000001)',
              ),
            ),
            ElevatedButton(
              onPressed: _searchByPostalCode,
              child: const Text('Search by Postal Code'),
            ),
            Text(
              _addressResults.join('\n'),
              // textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}

class AddressDetailSearchTab extends StatefulWidget {
  const AddressDetailSearchTab({super.key, required this.apiClient});

  final JapanPostApiClient apiClient;

  @override
  State<AddressDetailSearchTab> createState() => _AddressDetailSearchTabState();
}

class _AddressDetailSearchTabState extends State<AddressDetailSearchTab> {
  final TextEditingController _prefNameController = TextEditingController();
  final TextEditingController _cityNameController = TextEditingController();
  final TextEditingController _townNameController = TextEditingController();
  List<String> _addressResults = ['Enter address details to search'];
  final Logger _logger = Logger();

  Future<void> _searchByAddressDetails() async {
    final prefName = _prefNameController.text;
    final cityName = _cityNameController.text;
    final townName = _townNameController.text;

    if (prefName.isEmpty && cityName.isEmpty && townName.isEmpty) {
      setState(() {
        _addressResults = ['Please enter at least one address detail.'];
      });
      return;
    }

    setState(() {
      _addressResults = ['Searching...'];
    });

    final addressReq = AddressReq(
      prefName: prefName.isEmpty ? null : prefName,
      cityName: cityName.isEmpty ? null : cityName,
      townName: townName.isEmpty ? null : townName,
    );
    final addressRes = await widget.apiClient.searchByAddress(addressReq);

    switch (addressRes) {
      case ApiResultOk(data: AddressRes(addresses: final addresses)):
        setState(() {
          _addressResults = addresses
              .map(
                (address) =>
                    '${address.prefName} ${address.cityName} ${address.townName}',
              )
              .toList();
        });
      case ApiResultError(error: final e, stackTrace: final s):
        _logger.e(
          'Error searching by address details: ',
          error: e,
          stackTrace: s,
        );
        setState(() {
          _addressResults = ['Error: ${e.toString()}'];
        });
      default:
        setState(() {
          _addressResults = ['No address found for the provided details.'];
        });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _prefNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Prefecture Name (e.g., 東京都)',
              ),
            ),
            TextField(
              controller: _cityNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'City Name (e.g., 千代田区)',
              ),
            ),
            TextField(
              controller: _townNameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Town Name (e.g., 丸の内)',
              ),
            ),
            ElevatedButton(
              onPressed: _searchByAddressDetails,
              child: const Text('Search by Address Details'),
            ),
            Text(
              _addressResults.join('\n'),
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
