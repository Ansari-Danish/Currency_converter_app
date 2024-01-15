import 'package:flutter/material.dart';

//1. Create a variable to store the value
//2. create a function to multiply the value givene by the text
//3 store the value that we created
//4. Display the value

class CurrencyconverterMaterialpage extends StatefulWidget {
  const CurrencyconverterMaterialpage({super.key});

  @override
  State<CurrencyconverterMaterialpage> createState() =>
      _CurrencyConverterMaterialState();
}

class _CurrencyConverterMaterialState
    extends State<CurrencyconverterMaterialpage> {
  double result = 0;
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(20),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 147, 220),
      appBar: AppBar(
        title: const Text('Currency Converter'),
        backgroundColor: const Color.fromARGB(255, 57, 160, 220),
        elevation: 0,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}",
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Please Enter the Amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black87,
                  ),
                  prefix: const Icon(Icons.monetization_on_rounded),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            ////button
            //raised button
            //appears like a text.
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 81;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text("Convert"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
