import 'package:flutter/material.dart';

Widget buildToDoStatusContainer(
    {required String doneTodos, required String pendingTodos}) {
  return Container(
    height: 100,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("$doneTodos Done", style: TextStyle(color: Colors.grey)),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[400]),
                  child: Icon(
                    (Icons.done),
                    color: Colors.green,
                    size: 25,
                  ),
                )
              ],
            )),
        Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "$pendingTodos Pending",
                  style: TextStyle(color: Colors.grey),
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  margin: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: Colors.grey[400]),
                  child: Icon(
                    (Icons.done),
                    color: Colors.red,
                    size: 25,
                  ),
                )
              ],
            )),
      ],
    ),
  );
}
