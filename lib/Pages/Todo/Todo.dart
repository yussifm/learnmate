import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learnmate/Pages/Todo/widgets/NoTodoContainer.dart';
import 'package:learnmate/Pages/Todo/widgets/todoStatusContainer.dart';

class Todo extends StatefulWidget {
  const Todo({Key? key}) : super(key: key);

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List todoData = [
    {
      "title": "buy  eggs",
      "desc": "buy eggs 10",
      "isDone": false,
      "color": "red"
    },
    {
      "title": "buy  eggs",
      "desc": "buy eggs 10",
      "isDone": false,
      "color": "blue"
    },
    {
      "title": "buy  eggs",
      "desc": "buy eggs 10",
      "isDone": true,
      "color": "green"
    },
    {
      "title": "buy  eggs",
      "desc": "buy eggs 10",
      "isDone": false,
      "color": "pink"
    },
  ];

  bool checkTodoListIsEmpty() {
    if (todoData.length < 0) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void setState(VoidCallback fn) {
    checkTodoListIsEmpty();
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.pink[800],
        tooltip: "Add to your todo",
        elevation: 5.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.pink[500],
        onPressed: () {},
        child: Icon(
          Icons.add_rounded,
          size: 40,
        ),
      ),
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          _buildSliverAppBar(context),
          checkTodoListIsEmpty()
              ? NoTodoContainer()
              : SliverToBoxAdapter(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          topRight: Radius.circular(10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildToDoStatusContainer(
                            doneTodos: "5", pendingTodos: "3"),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      floating: true,
      pinned: false,
      snap: true,
      stretch: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_rounded,
          size: 20,
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Personal To-Dos",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            checkTodoListIsEmpty()
                ? Text("You have NO To-do",
                    style: TextStyle(color: Colors.pink[50], fontSize: 10))
                : Text("You have ${todoData.length} To-dos ",
                    style: TextStyle(color: Colors.pink[50], fontSize: 10))
          ],
        ),
      ),
    );
  }
}
