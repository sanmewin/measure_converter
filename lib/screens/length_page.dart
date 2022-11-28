import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_textfield.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';

class LengthScreen extends StatefulWidget {
  const LengthScreen({Key? key}) : super(key: key);

  @override
  State<LengthScreen> createState() => _LengthScreenState();
}

class _LengthScreenState extends State<LengthScreen> {
  CustomDecoration decoration = CustomDecoration();
  TextEditingController textEditingController = TextEditingController();
  String _from = 'cm';
  String _to = 'feet';
  double _value = 0;
  double _answer = 0;
  String result = "";
  final formKey = GlobalKey<FormState>();
  void convert(String from, String to, double value) async {
    if (value == 0.0) {
      return;
    }
    if (from == 'cm' && to == 'feet') {
      setState(() {
        _answer = value * 0.0328084;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'feet' && to == 'cm') {
      setState(() {
        _answer = value / 0.0328084;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'inches' && to == 'cm') {
      setState(() {
        _answer = value * 2.54;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'cm' && to == 'inches') {
      setState(() {
        _answer = value / 2.54;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'feet' && to == 'inches') {
      setState(() {
        _answer = value * 12;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'inches' && to == 'feet') {
      setState(() {
        _answer = value / 12;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is  ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "m" && to == "cm") {
      setState(() {
        _answer = value * 100;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "cm" && to == "m") {
      setState(() {
        _answer = value / 100;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "feet" && to == "m") {
      setState(() {
        _answer = value / 3.281;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "m" && to == "feet") {
      setState(() {
        _answer = value * 3.281;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "inches" && to == "m") {
      setState(() {
        _answer = value / 39.37;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "m" && to == "inches") {
      setState(() {
        _answer = value * 39.37;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "inches") {
      setState(() {
        _answer = value * 39370;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "inches" && to == "km") {
      setState(() {
        _answer = value / 39370;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "feet") {
      setState(() {
        _answer = value * 3281;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "feet" && to == "km") {
      setState(() {
        _answer = value / 3281;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "cm") {
      setState(() {
        _answer = value * 100000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "cm" && to == "km") {
      setState(() {
        _answer = value / 100000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "m") {
      setState(() {
        _answer = value * 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "m") {
      setState(() {
        _answer = value * 1609;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "m" && to == "miles") {
      setState(() {
        _answer = value / 1609;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "km") {
      setState(() {
        _answer = value * 1.609;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "miles") {
      setState(() {
        _answer = value / 1.609;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "cm") {
      setState(() {
        _answer = value * 160900;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "cm" && to == "miles") {
      setState(() {
        _answer = value / 160900;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "feet") {
      setState(() {
        _answer = value * 5280;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "feet" && to == "miles") {
      setState(() {
        _answer = value / 5280;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is  ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "inches") {
      setState(() {
        _answer = value * 63360;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "inches" && to == "miles") {
      setState(() {
        _answer = value * 63360;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "inches") {
      setState(() {
        _answer = value / 25.4;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "inches" && to == "mm") {
      setState(() {
        _answer = value * 25.4;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "feet") {
      setState(() {
        _answer = value / 304.8;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "feet" && to == "mm") {
      setState(() {
        _answer = value * 304.8;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "cm") {
      setState(() {
        _answer = value / 10;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "cm" && to == "mm") {
      setState(() {
        _answer = value * 10;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "m") {
      setState(() {
        _answer = value / 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "m" && to == "mm") {
      setState(() {
        _answer = value * 1000;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "km") {
      setState(() {
        _answer = value / 1e+6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "mm") {
      setState(() {
        _answer = value * 1e+6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "miles") {
      setState(() {
        _answer = value / 1.609e+6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "mm") {
      setState(() {
        _answer = value * 1.609e+6;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "inches") {
      setState(() {
        _answer = value * 36;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "inches" && to == "yd") {
      setState(() {
        _answer = value / 36;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "feet") {
      setState(() {
        _answer = value * 3;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "feet" && to == "yd") {
      setState(() {
        _answer = value / 3;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "cm") {
      setState(() {
        _answer = value * 91.44;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "cm" && to == "yd") {
      setState(() {
        _answer = value / 91.44;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "m") {
      setState(() {
        _answer = value / 1.094;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "m" && to == "yd") {
      setState(() {
        _answer = value * 1.094;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "km") {
      setState(() {
        _answer = value / 1094;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "km" && to == "yd") {
      setState(() {
        _answer = value * 1094;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "miles") {
      setState(() {
        _answer = value / 1760;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "miles" && to == "yd") {
      setState(() {
        _answer = value * 1760;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "yd" && to == "mm") {
      setState(() {
        _answer = value * 914.4;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == "mm" && to == "yd") {
      setState(() {
        _answer = value / 914.4;
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
                  "Length",
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
                              "Inches",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'inches',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Feet",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'feet',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Centimeters",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'cm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Meters",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kilometers",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'km',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Miles",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'miles',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Milimetre",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'mm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Yard",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'yd',
                          ),
                        ],
                        hint: const Text('Length Scale'),
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
                              "Inches",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'inches',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Feet",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'feet',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Centimeters",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'cm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Meters",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Kilometers",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'km',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Miles",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'miles',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Milimetre",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'mm',
                          ),
                          DropdownMenuItem(
                            child: Text(
                              "Yard",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            value: 'yd',
                          ),
                        ],
                        hint: const Text('Length Scale'),
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
