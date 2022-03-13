import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/domain/forecast/entity/forecast_response_entity.dart';
import 'package:weather_app/presentation/features/forecast/bloc/forecast_cubit.dart';
import 'package:weather_app/presentation/features/forecast/bloc/forecast_state.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({Key? key}) : super(key: key);

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage>
    with TickerProviderStateMixin {
  late TabController tabController;
  late ForecastResponseEntity responseEntity;
  @override
  void initState() {
    // responseEntity = ForecastResponseEntity();
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForecastCubit, ForecastState>(
      listener: (context, state) {
        if (state is ForecastSuccessState) {
          responseEntity = state.forecastResponseEntity;
        }
      },
      builder: (context, state) {
        if (state is ForecastLoadingState || state is ForecastInitState) {
          log('Is Loading');
          return const Scaffold(
            body: Center(
              child: Text('IsLoading'),
            ),
          );
        } else if (state is ForecastErrorState) {
          return Scaffold(
            body: Center(
              child: Text(state.message!),
            ),
          );
        } else {
          // final cubit = context.read<ForecastCubit>();

          return Scaffold(
            appBar: AppBar(
              title: Text(responseEntity.location!.name!),
              actions: [
                IconButton(
                  tooltip: 'Search',
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                IconButton(
                  tooltip: 'Dark mode',
                  onPressed: () {},
                  icon: const Icon(
                    Icons.brightness_4,
                  ),
                ),
              ],
            ),
            body: Container(
              width: double.maxFinite,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sunset.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Today'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blueAccent),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text('Tommorow'),
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blueAccent),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // /////////////////////////////
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Day ${responseEntity.forecast!.forecastday!.first.day!.maxtempC!}° - Night ${responseEntity.forecast!.forecastday!.first.day!.mintempC!}°',
                            ),
                            Image(
                              image: NetworkImage(
                                'http:${responseEntity.current!.condition!.icon!}',
                              ),
                              fit: BoxFit.fitWidth,
                              width: 150,
                            ),
                            Text(responseEntity.current!.condition!.text!),
                            Text('${responseEntity.current!.tempC!}°'),
                          ],
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                const Text('Wind:'),
                                Column(
                                  children: const [
                                    Text('156 mph'),
                                    Text('156 kph'),
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                    // /////////////////////////
                    const Spacer(),
                    // ///////////////////////////
                    LimitedBox(
                      maxHeight: MediaQuery.of(context).size.height * 0.18,
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: const [
                                  Text('10 AM'),
                                  Image(
                                    image: NetworkImage(
                                      'http://cdn.weatherapi.com/weather/64x64/day/113.png',
                                    ),
                                  ),
                                  Text('18.3° C'),
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: 24,
                        scrollDirection: Axis.horizontal,
                        physics: const BouncingScrollPhysics(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
