import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class AdsBanner extends StatefulWidget {
  const AdsBanner({Key? key}) : super(key: key);

  @override
  State<AdsBanner> createState() => _AdsBannerState();
}

class _AdsBannerState extends State<AdsBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Colors.black),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[800]),
                  child: Icon(
                    UniconsSolid.star,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "GO Premium",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Get Unlimited access \nto all our features ",
                      style: TextStyle(color: Colors.grey[500], fontSize: 10),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            right: 15,
            bottom: 15,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(15)),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                  )),
            ),
          )
        ],
      ),
    );
  }
}
