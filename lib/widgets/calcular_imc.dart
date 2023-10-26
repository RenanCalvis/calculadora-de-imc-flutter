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
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.surface,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Magreza Grave",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (imc < 17) {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Magreza Moderada",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (imc < 18.5) {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Magreza Leve",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (imc < 25) {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Saudável",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (imc < 30) {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Sobrepeso",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (imc < 35) {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Obesidade Grau I",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 18,
                            fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else if (imc < 40) {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text(
                      "Obesidade Grau II",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.onBackground,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    Text("(Severa)",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    } else {
      return SafeArea(
        child: Container(
          decoration: BoxDecoration(
              border: Border(
            bottom: BorderSide(
              color: Theme.of(context).colorScheme.primary,
              width: 1,
            ),
          )),
          margin: const EdgeInsets.only(top: 10),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, top: 10, bottom: 5),
                  child: Column(
                    children: [
                      Text("Seu IMC é:",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(imc.toStringAsFixed(2),
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 38,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Column(
                  children: [
                    Text("Obesidade Grau III",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                    Text("(Mórbida)",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onBackground,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    }
  }

  double calcularIMC(double peso, double altura) {
    return peso / (altura * altura);
  }
}
