import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/components/constant/custom_textstyle.dart';
import 'package:measure_converter/components/widget/custom_appBar.dart';
import 'package:measure_converter/components/widget/custom_box.dart';
import 'package:measure_converter/components/widget/shimmer.dart';
import '../bloc/exchange.state.dart';
import '../bloc/exchange_cubit.dart';
import 'temperature_page.dart';
import '../components/widget/custom_textfield.dart';

class CurrencyRate extends StatefulWidget {
  const CurrencyRate({Key? key}) : super(key: key);

  @override
  State<CurrencyRate> createState() => _CurrencyRateState();
}

class _CurrencyRateState extends State<CurrencyRate> {
  String _from = 'USD';
  String _to = 'AED';
  double _value = 0;
  double _answer = 0;
  String result = "";
  late double usd;
  late double aed;
  late double afn;
  late double all;
  late double amd;
  late double ang;
  late double aoa;
  late double ars;
  late double aud;

  CustomDecoration decoration = CustomDecoration();
  void convert(String from, String to, double value) {
    if (value == 0.0) {
      return;
    }
    if (from == 'AED' && to == 'USD') {
      setState(() {
        _answer = value / aed;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'USD' && to == 'AED') {
      setState(() {
        _answer = value * aed;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'AFN') {
      setState(() {
        _answer = value * afn;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AFN' && to == 'AED') {
      setState(() {
        _answer = value / afn;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'ALL') {
      setState(() {
        _answer = value * all;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'ALL' && to == 'AED') {
      setState(() {
        _answer = value / all;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'AMD') {
      setState(() {
        _answer = value * amd;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AMD' && to == 'AED') {
      setState(() {
        _answer = value / amd;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'ANG') {
      setState(() {
        _answer = value / ang;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'ANG' && to == 'AED') {
      setState(() {
        _answer = value * ang;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'AOA') {
      setState(() {
        _answer = value * aoa;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AOA' && to == 'AED') {
      setState(() {
        _answer = value / aoa;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'ARS') {
      setState(() {
        _answer = value * ars;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'ARS' && to == 'AED') {
      setState(() {
        _answer = value / ars;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AED' && to == 'AUD') {
      setState(() {
        _answer = value / aud;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
    if (from == 'AUD' && to == 'AED') {
      setState(() {
        _answer = value * aud;
        if (_answer == 0.0) {
          result = "";
        } else {
          result = "$_value $_from is ${_answer.toStringAsFixed(2)} $_to .";
        }
      });
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final cubit = context.read<ExchangeCubit>();
      cubit.fetchRates();
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: customAppBar(),
        body: BlocBuilder<ExchangeCubit, ExchangeState>(
            builder: ((context, state) {
          if (state is InitExchangeState || state is ExchangeLoadingState) {
            print(state);
            return const ShimmerEffect();
          } else if (state is ExchangeLoadedState) {
            final data = state.rates;
            var ratesKey = data.rates.keys;
            var ratesValue = data.rates.values;
            usd = ratesValue.elementAt(0);
            aed = ratesValue.elementAt(1);
            afn = ratesValue.elementAt(2);
            all = ratesValue.elementAt(3);
            amd = ratesValue.elementAt(4);
            ang = ratesValue.elementAt(5);
            aoa = ratesValue.elementAt(6);
            ars = ratesValue.elementAt(7);
            aud = ratesValue.elementAt(8);
            return SingleChildScrollView(
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      "These all are based on USD",
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                    const SizedBox(
                      height: 50,
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
                      height: 50,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: customBox(
                          DropdownButton(
                            value: _from,
                            items: ratesKey.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            hint: const Text('Currency'),
                            onChanged: (from) {
                              setState(() {
                                _from = from.toString();
                              });
                            },
                          ),
                        )),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 70),
                        child: customBox(
                          DropdownButton(
                            value: _to,
                            items: ratesKey.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(
                                  items,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList(),
                            hint: const Text('Currency'),
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
            );
          }
          return Center(
            child: Text(state.toString()),
          );
        })),
      ),
    );
  }
}
