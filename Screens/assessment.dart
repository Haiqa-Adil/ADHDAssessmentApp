import 'package:adhdassessmentapp/services/getSymptomQuestion.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Models/global_values.dart';
import '../Models/rodia_model.dart';

class Assessment extends StatefulWidget {
  const Assessment({Key? key, required this.sympId}) : super(key: key);
  final int sympId;

  @override
  State<Assessment> createState() => _AssessmentState();
}

class _AssessmentState extends State<Assessment> {
  bool isLoaded = false;

  @override
  void initState() {
    super.initState();

    getData();
  }

  getData() async {
    symptomQuestion = await getSymptomQuestion(widget.sympId);
    if (symptomQuestion != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String img = 'Assets/images/background/c${widget.sympId % 7 + 1}.jpg';
    return Scaffold(
        appBar: AppBar(
          title: Text(symptom![widget.sympId].name),
          backgroundColor: Color(0xff28203e),
        ),
        body: Container(
            width: size.width,
            height: size.height,
            color: colorCodes[widget.sympId % 10].withOpacity(0.4),
            alignment: Alignment.bottomCenter,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                  viewportFraction: 0.9,
                  aspectRatio: 0.72,
                  reverse: true,
                  initialPage: symptomQuestion!.length - 1,
                  enableInfiniteScroll: false,
                  height: size.height * 0.75),
              itemCount: symptomQuestion!.length,
              itemBuilder: (context, index, currentIndex) {
                List<RadioModel> radioItems = <RadioModel>[];
                for (int i = 0;
                    i < symptomQuestion![index].option.length;
                    i++) {
                  var option = symptomQuestion![index].option[i];
                  radioItems.add(RadioModel(
                      questionId: index,
                      optionId: i,
                      isSelected: option.isSelected,
                      text: option.description));
                }
                return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.01),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 0.05,
                            bottom: size.height * 0.03),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'Question ${(symptomQuestion!.length - index) % symptomQuestion!.length} / ${symptomQuestion!.length}',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Roboto',
                                decorationThickness: 3,
                                fontWeight: FontWeight.bold,
                                fontSize: size.height * 0.05),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 20,
                          shadowColor: Colors.grey,
                          clipBehavior: Clip.hardEdge,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Colors.white,
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: size.height * 0.03,
                                  left: size.width * 0.05,
                                  right: size.width * 0.05),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text(
                                    symptomQuestion![index]
                                        .question
                                        .description,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: 'Ubuntu',
                                        decorationThickness: 3,
                                        fontWeight: FontWeight.w500,
                                        fontSize: size.height * 0.025),
                                  ),
                                  Flexible(
                                    child: Container(
                                        padding: EdgeInsets.symmetric(
                                            vertical: size.height * 0.02),
                                        height: size.height * 0.5,
                                        child: Align(
                                            alignment: Alignment.topCenter,
                                            child: CustomRadio(
                                              sampleData: radioItems,
                                              height: size.height * 0.5,
                                              width: size.width * 0.8,
                                            ))),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            )));
  }
}
