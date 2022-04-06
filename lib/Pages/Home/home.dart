import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnmate/widgets/AdsBanner.dart';

import '../../constants/ContainerDetails.dart';
import '../../widgets/mainCardContainer.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppbar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AdsBanner(),
          Container(
            margin: EdgeInsets.only(left: 20, top: 20, bottom: 10),
            child: Text(
              "Select your Managing Tool",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: GridView.builder(
                  itemCount: ContainerDetails.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemBuilder: (context, index) {
                    return mainCardContainer(
                      mainItem: ContainerDetails[index],
                      context: context,
                    );
                  }),
            ),
          )
        ],
      ),
    );
  }

  AppBar _buildAppbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(children: [
        Container(
          height: 50,
          width: 50,
          margin: EdgeInsets.only(left: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset("assets/images/avatar.png"),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Hi, Coded",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.black, fontSize: 24),
        )
      ]),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.black,
            ))
      ],
      elevation: 0,
    );
  }
}
