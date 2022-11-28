import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';
import 'package:measure_converter/screens/temperature_page.dart';

import '../components/widget/custom_textfield.dart';

class PressureScreen extends StatefulWidget {
  const PressureScreen({Key? key}) : super(key: key);

  @override
  State<PressureScreen> createState() => _PressureScreenState();
}

class _PressureScreenState extends State<PressureScreen> {
  CustomDecoration decoration = CustomDecoration();
  String _from = 'bar';
  String _to = 'Pa';
  double _value = 0;
  double _answer = 0;
  String result = "";
  void convert(String from, String to, double value) async {
    if (value == 0.0) {
      return;
    }
    if (from == 'bar' && to == 'Pa') {
      setState(() {
        _answer = value * 100000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Pa' && to == 'bar') {
      setState(() {
        _answer = value / 100000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'bar' && to == 'psi') {
      setState(() {
        _answer = value * 14.504;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'psi' && to == 'bar') {
      setState(() {
        _answer = value / 14.504;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'bar' && to == 'atm') {
      setState(() {
        _answer = value / 1.013;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'atm' && to == 'bar') {
      setState(() {
        _answer = value * 1.013;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'bar' && to == 'Torr') {
      setState(() {
        _answer = value * 750.1;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Torr' && to == 'bar') {
      setState(() {
        _answer = value / 750.1;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Pa' && to == 'psi') {
      setState(() {
        _answer = value / 6895;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'psi' && to == 'Pa') {
      setState(() {
        _answer = value * 6895;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Pa' && to == 'atm') {
      setState(() {
        _answer = value / 101300;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'atm' && to == 'Pa') {
      setState(() {
        _answer = value * 101300;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Pa' && to == 'Torr') {
      setState(() {
        _answer = value / 133.3;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Torr' && to == 'Pa') {
      setState(() {
        _answer = value * 133.3;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'psi' && to == 'atm') {
      setState(() {
        _answer = value / 14.696;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'atm' && to == 'psi') {
      setState(() {
        _answer = value * 14.696;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'psi' && to == 'Torr') {
      setState(() {
        _answer = value * 51.715;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'Torr' && to == 'psi') {
      setState(() {
        _answer = value / 51.715;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
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
                  "Pressure",
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
                              "Bar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'bar',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Pascal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'Pa',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Pound per square inches",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'psi',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Standard atmosphere",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'atm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "torr",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'Torr',
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
                              "Bar",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'bar',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Pascal",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'f.p.s',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Pound per square inches",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'Pa',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Standard atmosphere",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'atm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "torr",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'Torr',
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
