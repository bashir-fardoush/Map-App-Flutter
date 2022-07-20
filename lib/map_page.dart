import 'package:camp_map/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
import 'package:flutter_map/plugin_api.dart'; // Only import if required functionality is not exposed by 'flutter_map.dart'
import 'package:latlong2/latlong.dart'; // Recommended for most use-cases
import 'dart:math';

class MapPage extends StatelessWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MapUI(),
      drawer: DrawerWidget(),
    );
  }
}

class MapUI extends StatefulWidget {
  const MapUI({Key? key}) : super(key: key);

  @override
  State<MapUI> createState() => _MapUIState();
}

 class _MapUIState extends State<MapUI> {

  List<LatLng> markerLocs =[];
  List<Marker> campMarkers = [];
  List<LatLng> rightSide = [];
  List<LatLng> leftSide = [];
  List<Color> colors = [
    Colors.green.shade500,
    Colors.yellow.shade500,
    Colors.red.shade500,
  ];

  @override
  void initState() {
    leftSide = [
      LatLng(21.214876,92.144823),
      LatLng(21.214556,92.138643),
      LatLng(21.207675,92.135210),
      LatLng(21.200153,92.135382),
      LatLng(21.198232,92.130747),
      LatLng(21.187989,92.135210),
      LatLng(21.182547,92.138815),
      LatLng(21.180306,92.134867),
      LatLng(21.174063,92.143793),
      LatLng(21.176785,92.153234),
      LatLng(21.174384,92.156153),
      LatLng(21.182700,92.151561),
      LatLng(21.188942,92.151475),
      LatLng(21.195600,92.147205),
      LatLng(21.201562,92.146347),
      LatLng(21.205643,92.147033),
      LatLng(21.207871,92.145542),
      LatLng(21.212524,92.146561),
    ];

    rightSide =[
      LatLng(21.215429,92.162719),
      LatLng(21.217109,92.157397),
      LatLng(21.222230,92.151904),
      LatLng(21.215669,92.148213),
      LatLng(21.208788,92.146325),
      LatLng(21.205803,92.148149),
      LatLng(21.202002,92.147892),
      LatLng(21.198601,92.147076),
      LatLng(21.193559,92.149394),
      LatLng(21.189078,92.152183),
      LatLng(21.183316,92.152483),
      LatLng(21.181675,92.153986),
      LatLng(21.179914,92.154243),
      LatLng(21.177513,92.156732),
      LatLng(21.181823,92.157665),
      LatLng(21.185824,92.160906),
      LatLng(21.186325,92.163159),
      LatLng(21.190186,92.167107),
      LatLng(21.190906,92.168437),
      LatLng(21.192631,92.169612),
      LatLng(21.192981,92.168271),
      LatLng(21.194661,92.169612),
      LatLng(21.194818,92.170983),
      LatLng(21.195234,92.170881),
      LatLng(21.195484,92.169196),
      LatLng(21.201282,92.170036),
      LatLng(21.205083,92.170079),
      LatLng(21.208763,92.168276),
      LatLng(21.212404,92.167633),
      LatLng(21.213924,92.166345),
      LatLng(21.215669,92.162805)
    ];
    markerLocs = [LatLng(21.196568,92.154597),LatLng(21.203530,92.157065),LatLng(21.202490,92.150928), LatLng(21.197921,92.141497), LatLng(21.190438,92.141240)];
    Random random =  Random();

    markerLocs.forEach((element) {
      campMarkers.add( Marker(
        width: 20.0,
        height: 20.0,
        point: element,
        builder: (ctx)=>  Container(
          child:   InkWell( child:  Icon(Icons.circle, size: 20, color: colors[random.nextInt(3)] ),
          onTap: (){
            print( element.toString());
          },
          ),
        ),
      ),
      );
    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      FlutterMap(
        options: MapOptions(center: LatLng(21.194307,92.149490), zoom: 14),
        layers: [
          TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            subdomains: ['a', 'b', 'c'],
          ),
          PolygonLayerOptions(
            polygonCulling: false,
            polygons: [
              Polygon(
                points: leftSide,
                color: Colors.purple.withOpacity(0.3),
                isFilled: true,
                label: "Left Side"
              ),
              Polygon(
                points: rightSide,
                color: Colors.blue.withOpacity(0.3),
                isFilled: true,
                label: 'Right Side',
              ),
            ],
          ),
          MarkerLayerOptions(
            markers: campMarkers,
          ),
        ],
      )
    ],
    );
  }
}
