// import 'dart:typed_data';

// import 'package:flutter/material.dart';
// import 'package:google_place/google_place.dart';

// class HomePage extends StatefulWidget {
//   static String routeName = "getTheApp";
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   GooglePlace googlePlace;
//   List<NearBySearchResponse> predictions = [];

//   @override
//   void initState() {
//     String apiKey = "AIzaSyAizHMaRTTHJqJ7fHRDzeWVUHxDNqXHml0";
//     googlePlace = GooglePlace(apiKey);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.only(right: 20, left: 20, top: 20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: "Search",
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.blue,
//                       width: 2.0,
//                     ),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.black54,
//                       width: 2.0,
//                     ),
//                   ),
//                 ),
//                 onChanged: (value) {
//                   if (value.isNotEmpty) {
//                     autoCompleteSearch(value);
//                   } else {
//                     if (predictions.length > 0 && mounted) {
//                       setState(() {
//                         predictions = [];
//                       });
//                     }
//                   }
//                 },
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: predictions.length,
//                   itemBuilder: (context, index) {
//                     return ListTile(
//                       leading: CircleAvatar(
//                         child: Icon(
//                           Icons.pin_drop,
//                           color: Colors.white,
//                         ),
//                       ),
//                       title: Text(predictions[index].),
//                       onTap: () {
//                         debugPrint(predictions[index].placeId);
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => DetailsPage(
//                               placeId: predictions[index].placeId,
//                               googlePlace: googlePlace,
//                             ),
//                           ),
//                         );
//                       },
//                     );
//                   },
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 10, bottom: 10),
//                 child: Image.asset("assets/images/logo.jpg"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void autoCompleteSearch(String value) async {
//     var googlePlace = GooglePlace("Your-Key");
// var ftry = await googlePlace.search.getNearBySearch(
//     Location(lat: -33.8670522, lng: 151.1957362), 1500,
//     type: "restaurant", keyword: "cruise");
//     var result=ftry.results;
//     if (result != null && result.predictions != null && mounted) {
//       setState(() {
//         predictions = result.predictions;
//       });
//     }
//   }
// }

// class DetailsPage extends StatefulWidget {
//   final String placeId;
//   final GooglePlace googlePlace;

//   DetailsPage({Key key, this.placeId, this.googlePlace}) : super(key: key);

//   @override
//   _DetailsPageState createState() =>
//       _DetailsPageState(this.placeId, this.googlePlace);
// }

// class _DetailsPageState extends State<DetailsPage> {
//   final String placeId;
//   final GooglePlace googlePlace;

//   _DetailsPageState(this.placeId, this.googlePlace);

//   DetailsResult detailsResult;
//   List<Uint8List> images = [];

//   @override
//   void initState() {
//     getDetils(this.placeId);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Details"),
//         backgroundColor: Colors.blueAccent,
//       ),
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.blueAccent,
//         onPressed: () {
//           getDetils(this.placeId);
//         },
//         child: Icon(Icons.refresh),
//       ),
//       body: SafeArea(
//         child: Container(
//           margin: EdgeInsets.only(right: 20, left: 20, top: 20),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Container(
//                 height: 200,
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: images.length,
//                   itemBuilder: (context, index) {
//                     return Container(
//                       width: 250,
//                       child: Card(
//                         elevation: 4,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.0),
//                         ),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10.0),
//                           child: Image.memory(
//                             images[index],
//                             fit: BoxFit.fill,
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Expanded(
//                 child: Card(
//                   elevation: 4,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10.0),
//                   ),
//                   child: ListView(
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.only(left: 15, top: 10),
//                         child: Text(
//                           "Details",
//                           style: TextStyle(
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       detailsResult != null && detailsResult.types != null
//                           ? Container(
//                               margin: EdgeInsets.only(left: 15, top: 10),
//                               height: 50,
//                               child: ListView.builder(
//                                 scrollDirection: Axis.horizontal,
//                                 itemCount: detailsResult.types.length,
//                                 itemBuilder: (context, index) {
//                                   return Container(
//                                     margin: EdgeInsets.only(right: 10),
//                                     child: Chip(
//                                       label: Text(
//                                         detailsResult.types[index],
//                                         style: TextStyle(
//                                           color: Colors.white,
//                                         ),
//                                       ),
//                                       backgroundColor: Colors.blueAccent,
//                                     ),
//                                   );
//                                 },
//                               ),
//                             )
//                           : Container(),
//                       Container(
//                         margin: EdgeInsets.only(left: 15, top: 10),
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             child: Icon(Icons.location_on),
//                           ),
//                           title: Text(
//                             detailsResult != null &&
//                                     detailsResult.formattedAddress != null
//                                 ? 'Address: ${detailsResult.formattedAddress}'
//                                 : "Address: null",
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 15, top: 10),
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             child: Icon(Icons.location_searching),
//                           ),
//                           title: Text(
//                             detailsResult != null &&
//                                     detailsResult.geometry != null &&
//                                     detailsResult.geometry.location != null
//                                 ? 'Geometry: ${detailsResult.geometry.location.lat.toString()},${detailsResult.geometry.location.lng.toString()}'
//                                 : "Geometry: null",
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 15, top: 10),
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             child: Icon(Icons.timelapse),
//                           ),
//                           title: Text(
//                             detailsResult != null &&
//                                     detailsResult.utcOffset != null
//                                 ? 'UTC offset: ${detailsResult.utcOffset.toString()} min'
//                                 : "UTC offset: null",
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 15, top: 10),
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             child: Icon(Icons.rate_review),
//                           ),
//                           title: Text(
//                             detailsResult != null &&
//                                     detailsResult.rating != null
//                                 ? 'Rating: ${detailsResult.rating.toString()}'
//                                 : "Rating: null",
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 15, top: 10),
//                         child: ListTile(
//                           leading: CircleAvatar(
//                             child: Icon(Icons.attach_money),
//                           ),
//                           title: Text(
//                             detailsResult != null &&
//                                     detailsResult.priceLevel != null
//                                 ? 'Price level: ${detailsResult.priceLevel.toString()}'
//                                 : "Price level: null",
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Container(
//                 margin: EdgeInsets.only(top: 20, bottom: 10),
//                 child: Image.asset("assets/images/logo.jpg"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   void getDetils(String placeId) async {
//     var result = await this.googlePlace.details.get(placeId);
//     if (result != null && result.result != null && mounted) {
//       setState(() {
//         detailsResult = result.result;
//         images = [];
//       });

//       if (result.result.photos != null) {
//         for (var photo in result.result.photos) {
//           getPhoto(photo.photoReference);
//         }
//       }
//     }
//   }

//   void getPhoto(String photoReference) async {
//     var result = await this.googlePlace.photos.get(photoReference, null, 400);
//     if (result != null && mounted) {
//       setState(() {
//         images.add(result);
//       });
//     }
//   }
// }
