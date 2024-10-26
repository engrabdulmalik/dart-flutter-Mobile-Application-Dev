import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});
  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
      
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
      double result = 0;
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    
    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(
        color: Color.fromARGB(222, 63, 76, 160),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );
    return Scaffold(
      backgroundColor: const Color.fromARGB(222, 56, 62, 101),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              result.toString(),
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
             Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: "Please Enter Amount in Rupees",
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(
                    Icons.monetization_on,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Color.fromARGB(222, 63, 76, 160),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            //elevatedButton for raised button and elevation property
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 300;
                });
                // debugPrint('Pressed');
                
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll<Color>(
                  Color.fromARGB(222, 63, 76, 160),
                ),
                foregroundColor: WidgetStatePropertyAll<Color>(
                  Color.fromARGB(222, 63, 76, 160),
                ),
                fixedSize: WidgetStatePropertyAll<Size>(
                  Size(200, 50),
                ),
              ),
              child: const Text(
                'Convert',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

