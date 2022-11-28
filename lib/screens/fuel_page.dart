import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';
import 'package:measure_converter/screens/temperature_page.dart';
import '../components/widget/custom_textfield.dart';

class FuelUnit extends StatefulWidget {
  const FuelUnit({Key? key}) : super(key: key);

  @override
  State<FuelUnit> createState() => _FuelUnitState();
}

class _FuelUnitState extends State<FuelUnit> {
  CustomDecoration decoration = CustomDecoration();
  String _from = 'MPG';
  String _to = 'km/L';
  double _value = 0;
  double _answer = 0;
  String result = "";
  void convert(String from, String to, double value) async {
    if (value == 0.0) {
      return;
    }
    if (from == 'MPG' && to == 'km/L') {
      setState(() {
        _answer = value * 1.201;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'km/L' && to == 'MPG') {
      setState(() {
        _answer = value / 1.201;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'MPG' && to == 'L/100km') {
      setState(() {
        _answer = 235.215 / (value);
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'L/100km' && to == 'MPG') {
      setState(() {
        _answer = 235.215 / (value / 100);
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }

    if (from == 'km/L' && to == 'L/100km') {
      setState(() {
        _answer = 100 / (value);
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'L/100km' && to == 'km/L') {
      setState(() {
        _answer = 100 / (value / 100);
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is  ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: customAppBar(),
        body: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Fuel",
                  style: textStyle1,
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: decoration.customTFDecoration(),
                    onSaved: (value) =>
                        convert(_from, _to, double.parse(value!)),
                    onChanged: (value) {
                      setState(() {
                        _value = double.tryParse(value) ?? 0;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty || value == "") {
                        return 'Please enter something.';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "From",
                  style: textStyle1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70),
                  child: customBox(
                    DropdownButton(
                      value: _from,
                      items: const [
                        DropdownMenuItem(
                          child: Text(
                            "Miles per gallon",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: 'MPG',
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Kilometer per liter",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: 'km/L',
                        ),
                        DropdownMenuItem(
                          child: Text(
                            "Liter per 100 kilometers",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          value: 'L/100km',
                        ),
                      ],
                      hint: const Text('Mass Scale'),
                      onChanged: (from) {
                        setState(() {
                          _from = from.toString();
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "To",
                  style: textStyle1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70),
                    child: customBox(
                      DropdownButton(
                        value: _to,
                        items: const [
                          DropdownMenuItem(
                            child: Text(
                              "Miles per gallon",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'MPG',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kilometer per liter",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'km/L',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Liter per 100 kilometers",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'L/100km',
                          ),
                        ],
                        hint: const Text('Mass Scale'),
                        onChanged: (to) {
                          setState(() {
                            _to = to.toString();
                          });
                        },
                      ),
                    )),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  style: buttonStyle,
                  onPressed: () {
                    setState(() {
                      if (formKey.currentState!.validate()) {
                        convert(_from, _to, _value);
                      }
                    });
                  },
                  child: Text(
                    'Convert',
                    style: buttonTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 5),
                  child: Center(
                    child: SizedBox(
                      child: Text(
                        result,
                        style: resultTextstyle,
                      ),
                    ),
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
