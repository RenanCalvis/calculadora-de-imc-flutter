import 'package:calculadora_imc_flutter/widgets/calcular_IMC.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isVisible = false;
  double peso = 0.0;
  double altura = 0.0;
  @override
  Widget build(BuildContext context) {
    var pesoController = TextEditingController(text: "");
    var alturaController = TextEditingController(text: "");

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Calculadora de IMC",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onPrimary),
          ),
          elevation: 0.0,
          centerTitle: true,
        ),
        body: Container(
          color: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 50),
            child: ListView(
              children: [
                Text(
                  "Peso em Kg",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: pesoController,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                  ],
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground),
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffF0F4F2), width: 3)),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 2)),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.weightHanging,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    suffixText: "Kg",
                    suffixStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Altura em Metros",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: alturaController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.onBackground),
                  decoration: InputDecoration(
                    focusedBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xffF0F4F2), width: 3)),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.blueGrey, width: 2)),
                    prefixIcon: Container(
                      padding: const EdgeInsets.all(10),
                      child: FaIcon(
                        FontAwesomeIcons.ruler,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                    suffixText: "m",
                    suffixStyle: TextStyle(
                        color: Theme.of(context).colorScheme.onBackground,
                        fontSize: 16),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: TextButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.primary,
                        )),
                    child: Text(
                      "Calcular",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontWeight: FontWeight.w800,
                          fontSize: 18),
                    ),
                    onPressed: () {
                      setState(() {
                        if (isVisible == false) {
                          isVisible = !isVisible;
                        }
                        FocusScope.of(context).unfocus();
                        peso = double.tryParse(pesoController.text) ?? 0.0;
                        altura = double.tryParse(alturaController.text) ?? 0.0;
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Visibility(
                  visible: isVisible,
                  child: IMCResultBuilder(
                    peso: peso,
                    altura: altura,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
