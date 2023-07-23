import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(168, 177, 255, 100),
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(22)),
            child: const Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.black38,
            ),
          ),
        ),
        title: Text("スタンプカード詳細"),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.adjust_rounded),
          )
        ],
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color.fromRGBO(168, 177, 255, 100),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Mer キッチン",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "現在の獲得数30個",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18))),
                width: MediaQuery.of(context).size.width,
                height: 580,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount: 2,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Container(
                            // width: 318,
                            // height: 100,
                            child: Image.asset(
                              "assets/image/image55.png",
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(right: 20),
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Text(
                              "2 / 2枚目",
                            )),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          "スタンプ獲得履歴",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 5,
                          itemBuilder: (context, index) => ListTile(
                            title: Text(
                              "2021 / 11 / 18",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[400]),
                            ),
                            subtitle: const Text(
                              "スタンプを獲得しました。",
                              style: TextStyle(fontSize: 18),
                            ),
                            trailing: const Text(
                              "1 個",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    ]),
              )
            ]),
      ),
    );
  }
}
