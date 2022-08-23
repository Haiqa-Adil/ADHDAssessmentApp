import 'package:flutter/material.dart';

import '../Models/global_values.dart';
import '../Widgets/DisOrders/Custome_disorder_listview.dart';
import '../services/getSymptom.dart';

class Symptoms extends StatefulWidget {
  const Symptoms({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<Symptoms> createState() => _SymptomsState();
}

class _SymptomsState extends State<Symptoms> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    symptom = await getSymptom(widget.id);
    if (symptom != null) {
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
          title: Text(disorder![widget.id].name),
          backgroundColor: Color(0xff28203e),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            //  int i = ran.Nex
            String img = 'Assets/images/background/${(9 - index) % 10 + 1}.jpg';
            int symptomId = symptom![index].id;

            return CustomListViewContainer(
              size: size,
              name: symptom![symptomId].name,
              img: "",
              index: symptomId,
              isSymptom: true,
            );
          },
          separatorBuilder: (BuildContext context, int index) => SizedBox(
            height: size.height / 30,
          ),
          itemCount: symptom!.length,
          padding: EdgeInsets.symmetric(
              vertical: size.height / 40, horizontal: size.width / 30),
        ));
  }
}
