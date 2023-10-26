// ignore_for_file: file_names

import 'package:flutter/material.dart';

class IMCResultBuilder extends StatelessWidget {
  final double peso;
  final double altura;
  const IMCResultBuilder({super.key, required this.peso, required this.altura});

  @override
  Widget build(BuildContext context) {
    var imc = calcularIMC(peso, altura);

    if (imc < 16) {
      return SafeArea(
        child: Container(
          color: Colors.amber,
          margin: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              const Text("Seu IMC é:",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
              Text("$imc",
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold)),
              const Text("Magreza Grave",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold))
            ],
          ),
        ),
      );
    } else if (imc < 17) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Magreza Moderada",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    } else if (imc < 18.5) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Magreza Leve",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    } else if (imc < 25) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Saudável",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    } else if (imc < 30) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Sobrepeso",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    } else if (imc < 35) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Obesidade Grau I",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    } else if (imc < 40) {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Obesidade Grau II (Severa)",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    } else {
      return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Center(
          child: Text("IMC = $imc - Obesidade Grau III (Mórbida)",
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ),
      );
    }
  }

  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }
}
