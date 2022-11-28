import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_textfield.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';
import 'package:measure_converter/screens/temperature_page.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);
  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  CustomDecoration decoration = CustomDecoration();
  String _from = 'kg';
  String _to = 'g';
  double _value = 0;
  double _answer = 0;
  String result = "";
  void convert(String from, String to, double value) async {
    if (value == 0.0) {
      return;
    }
    if (from == 'kg' && to == 'g') {
      setState(() {
        _answer = value * 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'g' && to == 'kgg') {
      setState(() {
        _answer = value / 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'kg' && to == 'lb') {
      setState(() {
        _answer = value * 2.205;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'lb' && to == 'kg') {
      setState(() {
        _answer = value / 2.205;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'kg' && to == 'oz') {
      setState(() {
        _answer = value * 35.274;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'oz' && to == 'lb') {
      setState(() {
        _answer = value / 35.274;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'kg' && to == 'tn') {
      setState(() {
        _answer = value / 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is  ${_answer.toStringAsFixed(2)}$_to .";
        }
      });
    }
    if (from == 'tn' && to == 'kg') {
      setState(() {
        _answer = value * 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'g' && to == 'lb') {
      setState(() {
        _answer = value / 453.6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'lb' && to == 'g') {
      setState(() {
        _answer = value * 453.6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'g' && to == 'oz') {
      setState(() {
        _answer = value / 28.35;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'g' && to == 'oz') {
      setState(() {
        _answer = value * 28.35;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'g' && to == 'tn') {
      setState(() {
        _answer = value / 907200;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'tn' && to == 'g') {
      setState(() {
        _answer = value * 907200;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'lb' && to == 'oz') {
      setState(() {
        _answer = value * 16;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'oz' && to == 'lb') {
      setState(() {
        _answer = value / 16;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'tn' && to == 'lb') {
      setState(() {
        _answer = value / 2205;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'lb' && to == 'tn') {
      setState(() {
        _answer = value * 2205;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'oz' && to == 'tn') {
      setState(() {
        _answer = value / 32000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'tn' && to == 'oz') {
      setState(() {
        _answer = value * 32000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mg' && to == 'g') {
      setState(() {
        _answer = value / 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'g' && to == 'mg') {
      setState(() {
        _answer = value * 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mg' && to == 'kg') {
      setState(() {
        _answer = value / 1e+6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'kg' && to == 'mg') {
      setState(() {
        _answer = value * 1e+6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mg' && to == 'lb') {
      setState(() {
        _answer = value / 453600;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'lb' && to == 'mg') {
      setState(() {
        _answer = value * 453600;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mg' && to == 'oz') {
      setState(() {
        _answer = value / 28350;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'oz' && to == 'mg') {
      setState(() {
        _answer = value * 28350;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'mg' && to == 'tn') {
      setState(() {
        _answer = value / 9.072e+8;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'tn' && to == 'mg') {
      setState(() {
        _answer = value * 9.072e+8;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    FocusScope.of(context).unfocus();
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
                  "Mass",
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
                              "Kilogram",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'kg',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Gram",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'g',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Pound",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'lb',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Ounce",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'oz',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Ton",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'tn',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Miligram",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'mg',
                          ),
                        ],
                        hint: const Text('Mass Scale'),
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
                              "Kilogram",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'kg',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Gram",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'g',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Pound",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'lb',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Ounce",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'oz',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Ton",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'tn',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Miligram",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'mg',
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
                      convert(_from, _to, _value);
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
