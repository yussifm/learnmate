import 'package:flutter/material.dart';

SliverFillRemaining NoTodoContainer() {
  return SliverFillRemaining(
    child: Container(
      width: double.maxFinite,
      height: double.maxFinite,
      decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(10), topLeft: Radius.circular(60))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 5, child: Image.asset("assets/images/todo.png")),
          Expanded(
            flex: 1,
            child: Text(
              "Add to Todo",
              style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2.5),
            ),
          )
        ],
      ),
    ),
  );
}
