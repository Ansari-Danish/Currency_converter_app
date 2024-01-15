import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CurrencyConverterPage extends StatefulWidget {
  const CurrencyConverterPage({super.key});

  @override
  State<CurrencyConverterPage> createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
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
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 193, 57, 220),
      navigationBar: const CupertinoNavigationBar(
        middle:  Text('Currency Converter'),
        backgroundColor:  Color.fromARGB(255, 57, 160, 220),
       
      ),
      child: Center(
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
              child: CupertinoTextField(
                controller: textEditingController,
                decoration : BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ) ,
                placeholder: "Please Enter the Amount in USD",
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                placeholderStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
        
                ),),)
                
                  
                  
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