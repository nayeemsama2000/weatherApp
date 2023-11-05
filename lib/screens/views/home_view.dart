import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/screens/providers/home_provider.dart';
import 'package:weather_app/screens/providers/internet_provider.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _noInternet = false;
    final homeProvider = context.watch<HomeProvider>();
    final internetProvider = context.watch<InternetProvider>();

    homeProvider.addListener(() {
      setState(() {});
    });

    internetProvider.addListener(() {
      setState(() {});
    });

    if (internetProvider.hasInternet == false) {
      return const Scaffold(
        body: SafeArea(
            child: Center(
                child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.cancel_rounded,
              size: 70,
            ),
            SizedBox(
              height: 15,
            ),
            Text('No Internet')
          ],
        ))),
      );
    }

    if (homeProvider.locationPermission == 'ask') {
      return Scaffold(
        body: Center(
          child: AlertDialog(
            title: Text('Give Permission for Location'),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Dont Allow')),
              TextButton(
                  onPressed: () {
                    homeProvider.getPermission();
                  },
                  child: Text('Allow'))
            ],
          ),
        ),
      );
    }

    if (homeProvider.locationPermission == 'denied forever') {
      return Scaffold(
        body: Center(
          child: AlertDialog(
            title: Text('App needs Permission for Location'),
            actions: [
              TextButton(
                  onPressed: () {
                    setState(() {});
                  },
                  child: Text('Dont Allow')),
              TextButton(
                  onPressed: () {
                    homeProvider.getLocationSetting();
                  },
                  child: Text('Allow'))
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
          child: homeProvider.weatherForecast?.location == null
              ? Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/clouds.png",
                      height: 200,
                      width: 200,
                    ),
                    const CircularProgressIndicator()
                  ],
                ))
              : Center(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            alignment: Alignment.topLeft,
                            child: Text(
                              homeProvider.currentCity!,
                              style: const TextStyle(fontSize: 35, height: 2),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
                            alignment: Alignment.topLeft,
                            child: Text(
                              '${homeProvider.currentDate!} | Today',
                              style: TextStyle(fontSize: 14, color: Colors.grey[700], height: 1.5),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            'https:${homeProvider.weatherForecast!.current!.condition!.icon!}',
                            height: 80,
                            width: 80,
                          ),
                          Container(
                            height: 50,
                            width: 1,
                            color: Colors.blue,
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: '${homeProvider.weatherForecast!.current!.tempC!}',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 68,
                                    color: Colors.black,
                                  )),
                              const TextSpan(
                                text: '°C',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  color: Colors.black,
                                ),
                              ),
                            ]),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(15),
                        decoration: BoxDecoration(color: Colors.grey.shade300, borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topLeft,
                              margin: const EdgeInsets.only(bottom: 10),
                              child: const Text(
                                "Next Days",
                                style: TextStyle(color: Colors.black, fontSize: 17),
                              ),
                            ),
                            ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: homeProvider.weatherForecast!.forecast!.forecastday!.length,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Container(
                                        height: 60,
                                        padding: const EdgeInsets.only(left: 10, right: 10),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                                          children: [
                                            SizedBox(
                                              width: 80,
                                              child: Text(
                                                homeProvider.weatherForecast!.forecast!.forecastday![index].date!,
                                                style: const TextStyle(color: Colors.black, fontSize: 13),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 30,
                                              width: 30,
                                              child: Image.network('https:${homeProvider.weatherForecast!.forecast!.forecastday![index].day!.condition!.icon!}'),
                                            ),
                                            Text(
                                                '${homeProvider.weatherForecast!.forecast!.forecastday![index].day!.maxtempC!}°C - ${homeProvider.weatherForecast!.forecast!.forecastday![index].day!.mintempC!}°C')
                                          ],
                                        )),
                                    Container(
                                      height: 1,
                                      color: Colors.black,
                                    )
                                  ],
                                );
                              },
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                )),
    );
  }
}
