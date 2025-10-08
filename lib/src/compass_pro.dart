// ignore_for_file: deprecated_member_use

import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_compass/flutter_compass.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class CompassPro extends StatefulWidget {
  final Widget? compassImage;
  final Color? backgroundColor;
  final double? height;
  final double? weight;
  final bool? currentHeadingShow;
  final TextStyle? currentHeadingStyle;
  final bool? latitudeLongitudeShow;
  final TextStyle? latitudeLongitudeStyle;
  final bool? addressShow;
  final TextStyle? addressStyle;
  final bool? altitudeShow;
  final TextStyle? altitudeStyle;
  const CompassPro({
    super.key,
    this.compassImage,
    this.backgroundColor,
    this.height,
    this.weight,
    this.currentHeadingShow = true,
    this.currentHeadingStyle,
    this.latitudeLongitudeShow = true,
    this.latitudeLongitudeStyle,
    this.addressShow = true,
    this.addressStyle,
    this.altitudeShow = true,
    this.altitudeStyle,
  });

  @override
  State<CompassPro> createState() => _CompassProState();
}

class _CompassProState extends State<CompassPro> {
  double? heading;
  Position? _position;
  String? _address;

  @override
  void initState() {
    super.initState();

    /// compass
    FlutterCompass.events!.listen((event) {
      setState(() {
        heading = event.heading;
      });
    });

    /// location
    _getLocation();
  }

  Future<void> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return;

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return;
    }
    if (permission == LocationPermission.deniedForever) return;

    final pos = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
    );

    List<Placemark> placemarks =
        await placemarkFromCoordinates(pos.latitude, pos.longitude);

    String place = "Unknown";
    if (placemarks.isNotEmpty) {
      final p = placemarks[0];
      place = p.locality?.isNotEmpty == true
          ? p.locality!
          : p.subAdministrativeArea?.isNotEmpty == true
              ? p.subAdministrativeArea!
              : p.administrativeArea?.isNotEmpty == true
                  ? p.administrativeArea!
                  : p.country ?? "Unknown";
    }

    setState(() {
      _position = pos;
      _address = place;
    });
  }

  String getCardinalDirection(double heading) {
    if (heading >= 337.5 || heading < 22.5) return "N";
    if (heading >= 22.5 && heading < 67.5) return "NE";
    if (heading >= 67.5 && heading < 112.5) return "E";
    if (heading >= 112.5 && heading < 157.5) return "SE";
    if (heading >= 157.5 && heading < 202.5) return "S";
    if (heading >= 202.5 && heading < 247.5) return "SW";
    if (heading >= 247.5 && heading < 292.5) return "W";
    if (heading >= 292.5 && heading < 337.5) return "NW";
    return "";
  }

  @override
  Widget build(BuildContext context) {
    final currentHeading = heading ?? 0;
    final cardinal =
        heading != null ? getCardinalDirection(currentHeading) : "";
    return Container(
      height: widget.height,
      width: widget.weight,
      color: widget.backgroundColor ?? Colors.black,
      child: Center(
        child: heading == null
            ? const Text(
                "Device does not have sensors",
                style: TextStyle(color: Colors.white),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Compass Image
                  Transform.rotate(
                    angle: (currentHeading * (math.pi / 180) * -1),
                    child: widget.compassImage ??
                        Image.network(
                            "https://github.com/nooralom1/compass_pro/blob/main/asset/compass.png?raw=true"),
                  ),
                  if (widget.currentHeadingShow == true)
                    Column(
                      children: [
                        const SizedBox(height: 30),

                        /// Heading + Cardinal
                        Text(
                          "${currentHeading.toStringAsFixed(0)}° $cardinal",
                          style: widget.currentHeadingStyle ??
                              const TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                  if (_position != null && widget.latitudeLongitudeShow == true)
                    Column(
                      children: [
                        const SizedBox(height: 40),

                        /// Location info
                        Text(
                          "${_position!.latitude.toStringAsFixed(5)}° N, "
                          "${_position!.longitude.toStringAsFixed(5)}° E",
                          style: widget.latitudeLongitudeStyle ??
                              const TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                        ),
                      ],
                    ),
                  if (_position != null && widget.addressShow == true)
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          _address ?? "Fetching location...",
                          style: widget.addressStyle ??
                              const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                        ),
                      ],
                    ),
                  if (_position != null && widget.altitudeShow == true)
                    Column(
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          "${_position!.altitude.toStringAsFixed(0)} m Elevation",
                          style: widget.altitudeStyle ??
                              const TextStyle(
                                fontSize: 18,
                                color: Colors.white70,
                              ),
                        ),
                      ],
                    ),
                ],
              ),
      ),
    );
  }
}
