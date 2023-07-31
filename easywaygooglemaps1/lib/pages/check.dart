import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:easywaygooglemaps/pages/Hotels.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'mapi.dart';

class CheckScreen extends StatefulWidget {
  @override
  _CheckScreenState createState() => _CheckScreenState();
}

class _CheckScreenState extends State<CheckScreen>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController = ScrollController();
  bool _showImage = true;
  bool _shouldShow = false;
  final LatLng _center = const LatLng(37.42796133580664, -122.085749655962);
  final double _zoom = 11.0;
  late GoogleMapController mapController;
  late AnimationController _animationController;
  late Size _size;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _animationController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset <=
        _scrollController.position.minScrollExtent + 100) {
      setState(() {
        _showImage = true;
      });
    } else {
      setState(() {
        _showImage = true;
      });
    }
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    _size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        controller: _scrollController,
        children: <Widget>[
          if (_showImage)
            Stack(
              children: [
                Container(
                  height: 200, // Set the desired height
                  width: double.infinity, // Cover all the width
                  child: Image.asset(
                    'assets/images/hotel_num1.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 12,
                  left: 12,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back),
                    color: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HotelsScreen()),
                      );
                      // Perform action when back icon is pressed
                    },
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 16,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 18,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 32,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 18,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 48,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 18,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 64,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 18,
                  ),
                ),
                Positioned(
                  bottom: 16,
                  left: 80,
                  child: Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 18,
                  ),
                ),
                Positioned(
                  top: 16,
                  left: 0,
                  right: 0,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Zaybi hotel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          const SizedBox(height: 30),
          Column(
            children: [
              Row(
                children: [
                  Text(
                    "data",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 250),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: Colors.green,
                      padding: EdgeInsets.all(8),
                      child: Text(
                        '45dnt',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  height: 25,
                ),
              ),
              Text(
                "Location",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("Redeyef, Gafsa"),
              SizedBox(height: 5),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.infinity,
                  height: 200, // Set the desired height for the map
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: LatLng(34.384232, 8.154360),
                      zoom: 300,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                child: Divider(
                  color: Colors.grey,
                  thickness: 1.0,
                  height: 25,
                ),
              ),
              SizedBox(width:8),
              Column(
                children: [
                  Text(
                    "Hotel details",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.home,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Zaybi hotel",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children:[
                        Icon(
                          Icons.hotel,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Hotel ,100 rooms",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Check-in: 14:00, check-out: 12:00",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.room_service,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "24 hour Front Desk Service",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.translate,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Staff speaks: french ,arabic ,english",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 25,
                    ),
                  ),
                  Text(
                    "Room amenities",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.tv,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "TV",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.air,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Air conditioning",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_cafe,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Coffee/Tea",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.cleaning_services,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Daily Housekeeping",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.check_circle,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Private Bathroom",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.checkroom,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Bathrobes",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.bathtub,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Bathtub",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 25,
                    ),
                  ),
                  Text(
                    "Hotel amenities",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.wifi,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Wi-Fi in public areas",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.fitness_center,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Gym",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pool,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Swimming Pool",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.pets,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Pets allowed",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.admin_panel_settings,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Concierge service",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.business,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Business centre",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_parking,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                            "Parking",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.accessible_forward,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Low mobility guests welcome",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_bar,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Bar",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.restaurant,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Restaurant/cafe",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.spa,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Spa",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Padding(
                    padding: const EdgeInsets.only(left:10.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.local_laundry_service,
                          color: Colors.black54,
                          size: 25,
                        ),
                        SizedBox(width: 15),
                        Text(
                          "Laundry service",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(right: 8.0, left: 8.0),
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1.0,
                      height: 25,
                    ),
                  ),
                  Text(
                    "Suggestions",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/hotel2.jpg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 150,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30, left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                child: Container(
                  color: Colors.green,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 7, right: 15, top: 2, bottom: 2),
                    child: Text(
                      '8 - 100 reviews',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    'hotel 2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 5),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellowAccent,
                    size: 16,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Price: \$100',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Distance: 3 miles',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
