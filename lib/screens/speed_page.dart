import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';
import 'package:measure_converter/screens/temperature_page.dart';

import '../components/widget/custom_textfield.dart';

class SpeedScreen extends StatefulWidget {
  const SpeedScreen({Key? key}) : super(key: key);

  @override
  State<SpeedScreen> createState() => _SpeedScreenState();
}

class _SpeedScreenState extends State<SpeedScreen> {
  CustomDecoration decoration = CustomDecoration();
  String _from = 'mph';
  String _to = 'f.p.s';
  double _value = 0;
  double _answer = 0;
  String result = "";
  void convert(String from, String to, double value) async {
    if (value == 0.0) {
      return;
    }
    if (from == 'mph' && to == 'f.p.s') {
      setState(() {
        _answer = value * 1.467;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'f.p.s' && to == 'mph') {
      setState(() {
        _answer = value / 1.467;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mph' && to == 'm/s') {
      setState(() {
        _answer = value / 2.237;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'm/s' && to == 'mph') {
      setState(() {
        _answer = value * 2.237;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is  ${_answer.toStringAsFixed(2)}$_to .";
        }
      });
    }
    if (from == 'mph' && to == 'km/h') {
      setState(() {
        _answer = value * 1.609;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'km/h' && to == 'mph') {
      setState(() {
        _answer = value / 1.609;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mph' && to == 'kn') {
      setState(() {
        _answer = value / 1.151;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'kn' && to == 'mph') {
      setState(() {
        _answer = value * 1.151;
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
                  "Speed",
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
                      if (value!.isEmpty) {
                        return 'Please enter something.';
                      } else {
                        return null;
                      }
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
                              "Miles per hour",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'mph',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Foot per second",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'f.p.s',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Meter per second",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'm/s',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kilometer per hour",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'km/h',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Knot",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'kn',
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
                              "Miles per hour",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'mph',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Foot per second",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'f.p.s',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Meter per second",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'm/s',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kilometer per hour",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'km/h',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Knot",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'kn',
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
