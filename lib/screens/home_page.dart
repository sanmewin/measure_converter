import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:measure_converter/components/constant/color_constant.dart';
import 'package:measure_converter/screens/speed_page.dart';
import 'package:measure_converter/components/constant/size_constant.dart';
import '../components/widget/custom_cart.dart';
import 'currency_convert_page.dart';
import 'fuel_page.dart';
import 'pressure_page.dart';
import 'length_page.dart';
import 'mass_page.dart';
import 'temperature_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: primaryColor,
        elevation: 0,
        leading: Padding(
          padding: EdgeInsets.only(
              left: MediaQuery.of(context).getProportionateScreenWidth(10)),
          child: const Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        title: const Text(
          " Unit Converter",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(
                right: MediaQuery.of(context).getProportionateScreenWidth(10)),
            child: const Icon(CupertinoIcons.info_circle_fill),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).getProportionateScreenHeight(30),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).getProportionateScreenWidth(13),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const LengthScreen())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.bar_chart,
                        size: 50,
                        color: Color(0xff713045),
                      ),
                      text: "Length",
                    ),
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SecondScreen())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.sort,
                        size: 50,
                        color: Color(0xff003545),
                      ),
                      text: "Weight",
                    ),
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) =>
                                  const TemperatureScreen())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.device_thermostat,
                        size: 50,
                        color: Color(0xffA21232),
                      ),
                      text: "Temperature",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).getProportionateScreenHeight(20),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).getProportionateScreenWidth(13),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const SpeedScreen())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.speed,
                        size: 50,
                        color: Color(0xffB55400),
                      ),
                      text: "Speed",
                    ),
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const PressureScreen())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.air,
                        size: 50,
                        color: Color(0xffFDC57B),
                      ),
                      text: "Pressure",
                    ),
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const FuelUnit())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.local_gas_station,
                        size: 50,
                        color: Color(0xffD9534F),
                      ),
                      text: "Mileage",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).getProportionateScreenHeight(20),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).getProportionateScreenWidth(13),
              ),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => const CurrencyRate())));
                    },
                    child: const CommonCart(
                      icon: Icon(
                        Icons.currency_exchange,
                        size: 50,
                        color: Color(0xff2c6470),
                      ),
                      text: "Currency",
                    ),
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  GestureDetector(
                    child: const CommonCart(
                      icon: Icon(
                        Icons.data_exploration,
                        size: 50,
                        color: Color(0xff6A5495),
                      ),
                      text: "Data",
                    ),
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  const CommonCart(
                    icon: Icon(
                      Icons.flash_on,
                      size: 50,
                      color: Color(0xffFFD700),
                    ),
                    text: "Power",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).getProportionateScreenHeight(20),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: MediaQuery.of(context).getProportionateScreenWidth(13),
              ),
              child: Row(
                children: [
                  const CommonCart(
                    icon: Icon(
                      Icons.area_chart_sharp,
                      size: 50,
                      color: Color(0xff62A388),
                    ),
                    text: "Area",
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  const CommonCart(
                    icon: Icon(
                      Icons.calculate,
                      size: 50,
                      color: Color(0xff04879C),
                    ),
                    text: "Volume",
                  ),
                  SizedBox(
                    width:
                        MediaQuery.of(context).getProportionateScreenWidth(10),
                  ),
                  const CommonCart(
                    icon: Icon(
                      Icons.timelapse_sharp,
                      size: 50,
                      color: Color(0xff62ac99),
                    ),
                    text: "Time",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
