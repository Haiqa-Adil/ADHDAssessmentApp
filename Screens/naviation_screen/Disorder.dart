import 'dart:math';
import 'package:adhdassessmentapp/services/getDisorder.dart';
import 'package:flutter/material.dart';
import 'package:adhdassessmentapp/Models/global_values.dart';
import 'package:adhdassessmentapp/Widgets/DisOrders/Custome_disorder_listview.dart';

class DisOrders extends StatefulWidget {
  const DisOrders({Key? key}) : super(key: key);

  @override
  State<DisOrders> createState() => _DisOrdersState();
}

class _DisOrdersState extends State<DisOrders> {
  bool isLoaded = false;
  var ran = Random();

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    print("HELLO");
    disorder = await getDisorders();
    print(disorder);
    if (disorder != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('DisOrder'),
          backgroundColor: const Color(0xff28203e),
        ),
        body: Visibility(
          visible: isLoaded,
          replacement: const Center(
            child: CircularProgressIndicator(),
          ),
          child: ListView.separated(
            itemBuilder: (context, index) {
              //  int i = ran.Nex
              String img = 'Assets/images/background/${index % 10 + 1}.jpg';

              return CustomListViewContainer(
                size: size,
                name: disorder![index].name,
                img: img,
                index: index,
                isDisorder: true,
              );
            },
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: size.height / 30,
            ),
            itemCount: disorder!.length,
            padding: EdgeInsets.symmetric(
                vertical: size.height / 40, horizontal: size.width / 30),
          ),
        ));
  }
}
