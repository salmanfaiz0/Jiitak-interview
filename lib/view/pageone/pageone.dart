import 'package:demo/model/cardmodel.dart';
import 'package:demo/view/pageone/widget/rowwidget.dart';
import 'package:demo/view/pagethree/page3.dart';
import 'package:demo/view/pagetwo/pagetwo.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import 'widget/listviewWidget.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: FloatingActionButton(
            backgroundColor: Colors.white,
            onPressed: () {},
            child: Icon(
              Icons.location_on_outlined,
              color: Colors.black,
            )),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(
              child: Container(
                height: 40,
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(22),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: '北海道, 札幌市',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            IconButton(
              icon: Image.asset("assets/image/image4.png"),
              onPressed: () {},
            ),
            IconButton(
              icon: Image.asset("assets/image/image3.png"),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          color: Colors.amber,
          child: Center(
              child: Text(
            "2022年 5月 26日（木）",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
        ),
        SizedBox(
          height: 15,
        ),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CountRow(
                  date: "木",
                  number: "26",
                  color: Colors.amber,
                ),
                CountRow(
                  date: "金",
                  number: "27",
                  color: Colors.transparent,
                ),
                CountRow(
                  date: "土",
                  number: "28",
                  color: Colors.transparent,
                ),
                CountRow(
                  date: "日",
                  number: "29",
                  color: Colors.transparent,
                ),
                CountRow(
                  date: "月",
                  number: "30",
                  color: Colors.transparent,
                ),
                CountRow(
                  date: "火",
                  number: "31",
                  color: Colors.transparent,
                ),
                CountRow(
                  date: "水",
                  number: "1",
                  color: Colors.transparent,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
        Expanded(
          child: ListviewWidget(),
        ),
      ]),
    );
  }
}
