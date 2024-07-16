import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  Homepage({super.key});
  String cityVal = '';

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String countryVal = '';
  String stateVal = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Homepage')),
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CSCPicker(
                showStates: true,
                showCities: true,
                countrySearchPlaceholder: 'Country',
                stateSearchPlaceholder: 'State',
                citySearchPlaceholder: 'City',
                onCountryChanged: (value) {
                  setState(() {
                    countryVal = value;
                  });
                },
                onStateChanged: (value) {
                  setState(() {
                    stateVal = value ?? '';
                  });
                },
                onCityChanged: (value) {
                  setState(() {
                    widget.cityVal = value ?? '';
                  });
                },
              ),
            ),
            if (widget.cityVal.isNotEmpty)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/weather');
                },
                child: const Text('Submit City'),
              ),
          ],
        ),
      ),
    );
  }
}
