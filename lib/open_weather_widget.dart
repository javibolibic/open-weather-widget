library open_weather_widget;

import 'package:flutter/material.dart';
import 'package:open_weather_widget/weather_bloc.dart';
import 'weather_widget.dart';

class OpenWeatherWidget extends StatefulWidget {
  const OpenWeatherWidget(
      {Key? key,
      required this.latitude,
      required this.longitude,
      required this.location,
      required this.apiKey,
        this.language,
      this.height,
      this.width,
      this.padding,
      this.alignment,
      this.margin,
      this.locationColor,
      this.color,
      this.temperatureColor,
      this.borderRadius,
      this.weatherTextColor,
      this.activeColor,
      this.iconColor,
      this.activeBorderRadius,
      this.locationTextStyle,
      this.weatherDetailsTextStyle,
      this.temperatureTextStyle,
      this.weekdayTextStyle,
      this.maxTemperatureTextStyle,
      this.minTemperatureTextStyle,
      this.temperatureScaleTextStyle})
      : super(key: key);
  final double latitude;
  final double longitude;
  final String location;
  final double? height;
  final double? width;
  final String apiKey;
  final String? language;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final MainAxisAlignment? alignment;
  final Color? locationColor;
  final Color? color;
  final Color? temperatureColor;
  final BorderRadiusGeometry? borderRadius;
  final Color? weatherTextColor;
  final Color? activeColor;
  final Color? iconColor;
  final BorderRadiusGeometry? activeBorderRadius;
  final TextStyle? locationTextStyle;
  final TextStyle? weatherDetailsTextStyle;
  final TextStyle? temperatureTextStyle;
  final TextStyle? weekdayTextStyle;
  final TextStyle? maxTemperatureTextStyle;
  final TextStyle? minTemperatureTextStyle;
  final TextStyle? temperatureScaleTextStyle;
  @override
  _OpenWeatherWidgetState createState() => _OpenWeatherWidgetState();
}

class _OpenWeatherWidgetState extends State<OpenWeatherWidget> {
  @override
  void initState() {
    super.initState();
    weatherBloc.getWeather(
      latitude: widget.latitude,
      longitude: widget.longitude,
      language: widget.language ?? 'en',
      apiKey: widget.apiKey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return WeatherWidget(
      location: widget.location,
      weatherBloc: weatherBloc,
      height: widget.height,
      width: widget.width,
      padding: widget.padding,
      margin: widget.margin,
      alignment: widget.alignment,
      activeBorderRadius: widget.activeBorderRadius,
      activeColor: widget.activeColor,
      color: widget.color,
      locationColor: widget.locationColor,
      temperatureColor: widget.temperatureColor,
      weatherTextColor: widget.weatherTextColor,
      iconColor: widget.iconColor,
      borderRadius: widget.borderRadius,
      temperatureScaleTextStyle: widget.temperatureScaleTextStyle,
      temperatureTextStyle: widget.temperatureTextStyle,
      weekdayTextStyle: widget.weekdayTextStyle,
      locationTextStyle: widget.locationTextStyle,
      maxTemperatureTextStyle: widget.maxTemperatureTextStyle,
      minTemperatureTextStyle: widget.minTemperatureTextStyle,
      weatherDetailsTextStyle: widget.weatherDetailsTextStyle,
    );
  }
}
