import 'package:flutter/material.dart';

import './main_card.dart';

//List of Main Cards to be displayed on Explore Page.
Widget exploreList(datas) {
  return ListView.builder(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.horizontal,
    itemCount: datas.length,
    itemBuilder: (BuildContext context, int index) {
      return Row(
        children: <Widget>[
          SizedBox(
              width: (index == 0) ? 30 : (index < datas.length - 1) ? 10 : 10),
          MainCard(
            imagePath: datas[index]['originalUrl'],
            venueName: datas[index]['displayName'],
            venueLocation: datas[index]['latitude'].toString(),
            description: datas[index]['address'],
            locationID: datas[index].documentID,
          ),
          SizedBox(
              width: (index == 0) ? 0 : (index < datas.length - 1) ? 0 : 30),
        ],
      );
    },
  );
}

//Info to be displayed on Explore Page when no Search result found.
Widget noSearch() {
  return Center(
    child: Text('No Data'),
  );
}
