import 'package:flutter/material.dart';
import 'package:learnmate/models/ContainerModel.dart';

Widget mainCardContainer(
    {required BuildContext context, required ContainerModel mainItem}) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, '/${mainItem.name}');
    },
    child: Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: mainItem.bgColor, borderRadius: BorderRadius.circular(10)),
      child: Stack(
        children: [
          Positioned(
              right: 10,
              bottom: 50,
              child: Container(
                child: Icon(
                  mainItem.iconModel,
                  size: 50,
                  color: mainItem.iconColor,
                ),
              )),
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    mainItem.name,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    '${mainItem.totalItems} ${mainItem.name}',
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    ),
  );
}
