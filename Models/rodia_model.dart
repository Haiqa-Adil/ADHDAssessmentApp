import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final List<RadioModel> sampleData;

  const CustomRadio({Key? key, required this.sampleData}) : super(key: key);
  @override
  createState() {
    return CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.sampleData.length,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            //highlightColor: Colors.red,
            splashColor: Colors.blueAccent,
            onTap: () {
              setState(() {
                widget.sampleData.forEach((element) => element.isSelected = false);
                widget.sampleData[index].isSelected = true;
              });
            },
            child: RadioItem(widget.sampleData[index]),
          );
        },
      );
  }
}

class RadioItem extends StatelessWidget {
  final RadioModel _item;
  const RadioItem(this._item);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration:BoxDecoration(
        border: Border.all(
            width: 1.0,
            color: _item.isSelected
                ? Colors.blueAccent
                : Colors.white),
        borderRadius: const BorderRadius.all(const Radius.circular(2.0)),

      ) ,
      margin: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 20.0,
            width: 20.0,
            child: Center(
              child: Text(_item.buttonText,
                  style: TextStyle(
                      fontFamily: 'ConcertOne',
                      color: _item.isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
            ),
            decoration: BoxDecoration(
              color: _item.isSelected
                  ? Colors.blueAccent
                  : Colors.transparent,
              border: Border.all(
                  width: 1.0,
                  color: _item.isSelected
                      ? Colors.blueAccent
                      : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 10.0),
            child: Text(_item.text),
          )
        ],
      ),
    );
  }
}

class RadioModel {
  bool isSelected;
  final String buttonText;
  final String text;

  RadioModel({required this.isSelected, this.buttonText = "", required this.text});
}
