import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomRadio extends StatefulWidget {
  final List<RadioModel> sampleData;
  final double height;
  final double width;
  const CustomRadio({Key? key, required this.sampleData,
    required this.height, required this.width}) : super(key: key);
  @override
  createState() {
    return CustomRadioState();
  }
}

class CustomRadioState extends State<CustomRadio> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
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
      height: 50,
      decoration:BoxDecoration(
        border: Border.all(
            width: 2.0,
            color: _item.isSelected
                ? Colors.blueAccent
                : Colors.white),
        borderRadius: const BorderRadius.all(const Radius.circular(5.0)),

      ) ,
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal:5
      ),
      margin: EdgeInsets.symmetric(
          vertical: 5,
          horizontal:5
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: 20.0,
            width: 20.0,
            child: Center(
              child: Text(_item.buttonText,
                  style: TextStyle(
                      fontFamily: 'Candal',
                      color: _item.isSelected ? Colors.white : Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 25.0)),
            ),
            decoration: BoxDecoration(
              color: _item.isSelected
                  ? Colors.blueAccent
                  : Colors.transparent,
              border: Border.all(
                  width: 2.0,
                  color: _item.isSelected
                      ? Colors.blueAccent
                      : Colors.grey),
              borderRadius: const BorderRadius.all(const Radius.circular(2.0)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                left: 10.0,
            //  bottom: 10
            ),
            child: Text(_item.text,
                style: TextStyle(
                fontFamily: 'PoiretOne',
                fontWeight: FontWeight.bold,
                color: _item.isSelected ? Colors.blueAccent : Colors.grey[700],
                 fontSize: 18),
              softWrap: true,
            ),
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
