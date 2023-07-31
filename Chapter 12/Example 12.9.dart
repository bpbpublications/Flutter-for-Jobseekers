import 'package:location/location.dart';

Future<void> main() async {
  final LocationData location = await getLocation();
  final double? lat = location.latitude;
  final double? lon = location.longitude;
}
