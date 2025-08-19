import 'package:flutter/material.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatefulWidget {
  @override
  _calculator_app createState() => _calculator_app();
}

class _calculator_app extends State<Calculator> {
  String selectedOption = 'Gross';
  double? amountValue;
  final List<String> options = ['Gross', 'Net'];

  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('Tax Calculator'))),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Container(
                margin: EdgeInsets.only(bottom: 15, right: 80),
                child: SizedBox(
                  width: 200,
                  child: TextField(
                    autofocus: true,

                    keyboardType: TextInputType.number,
                    onChanged: (value) {
                      setState(() {
                        amountValue = double.tryParse(value);
                        if (amountValue == null && value.isNotEmpty) {
                          print('Invalid number');
                        }
                      });
                    },
                    decoration: InputDecoration(labelText: 'Enter Amount'),
                  ),
                ),
              ),

              Container(
                child: SizedBox(
                  width: 100,

                  child: DropdownButton(
                    value: selectedOption,
                    items: options.map((String value) {
                      return DropdownMenuItem(child: Text(value), value: value);
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                      if (amountValue == null) {
                        print('empty');
                      } else {
                        if (value == 'Gross') {
                          if (amountValue! < 600) {
                            double tax = (amountValue! * 0.00).toDouble() - 0;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;

                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                          if (amountValue! > 601 && amountValue! < 1650) {
                            double tax = (amountValue! * 0.10).toDouble() - 60;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;
                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                          if (amountValue! > 1651 && amountValue! < 3200) {
                            double tax =
                                (amountValue! * 0.15).toDouble() - 142.5;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;
                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                          if (amountValue! > 3201 && amountValue! < 5250) {
                            double tax =
                                (amountValue! * 0.20).toDouble() - 302.50;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;

                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                          if (amountValue! > 5251 && amountValue! < 7800) {
                            double tax = (amountValue! * 0.25).toDouble() - 565;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;

                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                          if (amountValue! > 7801 && amountValue! < 10900) {
                            double tax = (amountValue! * 0.30).toDouble() - 955;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;
                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                          if (amountValue! > 10901) {
                            double tax =
                                (amountValue! * 0.35).toDouble() - 1500;
                            double gross = amountValue!;
                            double incomTax = tax;
                            double taxableIncome = gross - incomTax;
                            double pansion = gross * 0.07;
                            double netSalary = taxableIncome - pansion;
                            print(gross);
                            print(incomTax);
                            print(pansion);
                            print(netSalary);
                          }
                        } else {
                          print('gggggggggggg');
                        }
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
