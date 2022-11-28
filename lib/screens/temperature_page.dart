import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';

import '../components/widget/custom_textfield.dart';

final formKey = GlobalKey<FormState>();

class TemperatureScreen extends StatefulWidget {
  const TemperatureScreen({Key? key}) : super(key: key);

  @override
  State<TemperatureScreen> createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  CustomDecoration decoration = CustomDecoration();
  String _from = 'F';
  String _to = 'C';
  double _value = 0;
  double _answer = 0;
  String result = "";
  void convert(String from, String to, double value) async {
    if (value == 0.0) {
      return;
    }
    if (from == 'F' && to == 'C') {
      setState(() {
        _answer = (value - 32) * 5 / 9;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value °$_from is ${_answer.toStringAsFixed(2)} °$_to .";
        }
      });
    }
    if (from == 'C' && to == 'F') {
      setState(() {
        _answer = (value * 9 / 5) + 32;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value °$_from is ${_answer.toStringAsFixed(2)} °$_to .";
        }
      });
    }
    if (from == 'F' && to == 'K') {
      setState(() {
        _answer = (value - 32) * 5 / 9 + 273.15;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "°$_value °$_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'K' && to == 'F') {
      setState(() {
        _answer = (value - 273.15) * 9 / 5 + 32;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} °$_to .";
        }
      });
    }
    if (from == 'C' && to == 'K') {
      setState(() {
        _answer = value + 273.15;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value °$_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'K' && to == 'C') {
      setState(() {
        _answer = value - 273.15;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} °$_to .";
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
                const Text(
                  "Mass",
                  style: TextStyle(color: Colors.black, fontSize: 20),
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
                              "Celsius",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'C',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Fahrenheit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'F',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kelvin",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'K',
                          ),
                        ],
                        hint: const Text('Temperature Scale'),
                        onChanged: (from) {
                          setState(() {
                            _from = from.toString();
                          });
                        },
                      ),
                    )),
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
                              "Celsius",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'C',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Fahrenheit",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'F',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kelvin",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'K',
                          ),
                        ],
                        hint: const Text('Temperature Scale'),
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
