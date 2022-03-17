import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/Models/disorders.dart';

import '../Models/global_values.dart';
import '../Models/questionaire.dart';
import '../Models/rodia_model.dart';

class Assessment extends StatelessWidget {
  Assessment({Key? key, required this.sympId}) : super(key: key);
  final int sympId;
  late List<Questionair> questionair = <Questionair>[];
  @override
  Widget build(BuildContext context) {

    var symptom = symptoms[sympId];
    Size size = MediaQuery.of(context).size;
    String img = 'Assets/images/background/c'+(sympId%7 + 1).toString() + '.jpg';
    var symptomQuestion = symptomQuestions.where((element) => element.symptomId == sympId + 1).toList();
    int totalQuestions = symptomQuestion[0].queryId.length;
    for(int i = 1 ; i < symptomQuestion.length ;i++)
      {
        totalQuestions += symptomQuestion[i].queryId.length;
      }
   // print('question ${questions.length}');
    /**/
    for(int i = 0 ; i < symptomQuestion.length ; i++){
      late Questionair question ;
      for(int questionIndex = 0 ; questionIndex < symptomQuestion[i].queryId.length ; questionIndex++){
        var  ques = questions[symptomQuestion[i].queryId[questionIndex] - 1 ];
        var option = symptomQuestion[i].optionsId;
        question = Questionair(ques.question,option,ques.queryType);
        questionair.add(question);
      }

    }
 //   print(questionair.length);
    return Scaffold(
      appBar: AppBar(
        title: Text(symptom.name),
        backgroundColor: Color(0xff28203e),
      ),
      body : Container(
        width: size.width,
        height: size.height,
        color: colorCodes[sympId % 10].withOpacity(0.4),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.1
                ),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    'Question ${1} / ${questionair.length}',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Aclonica',
                      decorationThickness: 3,
                      fontWeight: FontWeight.w400,
                      fontSize: size.height * 0.04
                    ),

                  ),
                ),
              ),
              CarouselSlider.builder(
                options: CarouselOptions(
                  viewportFraction: 0.9,
                  aspectRatio: 0.72,
                  reverse: true,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  height: size.height * 0.7
                ),
                itemCount: questionair.length,
                itemBuilder: (context , index , currentIndex) {
                  List<RadioModel> radioItems = <RadioModel>[];
                  for(int i = 0 ; i < questionair[index].Options.length ; i++){
                    var option = options[questionair[index].Options[i] - 1];
                    radioItems.add(RadioModel(isSelected: false, text: option.option));
                  }
                  return Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: size.height * 0.02,
                      horizontal: size.width * 0.01
                  ),
                  child: ClipRRect(
                    clipBehavior: Clip.hardEdge,
                    borderRadius: BorderRadius.circular(45),
                    child: Card(
                      elevation: 25,
                      shadowColor: Colors.grey,

                      child: Card(
                        elevation: 50,
                        shadowColor: Colors.white,
                        child: Container(
                          height: double.infinity,
                          decoration: const BoxDecoration(
                            color: Colors.white,

                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                              top: size.height * 0.03,
                              left:size.width * 0.05,
                              right:size.width * 0.05
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Text(
                                     questionair[index].Question,
                                   style: TextStyle(
                                       color: Colors.black,
                                       fontFamily: 'Ubuntu',
                                       decorationThickness: 3,
                                       fontWeight: FontWeight.w500,
                                       fontSize: size.height * 0.025
                                   ),

                                 ),
                                Expanded(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                        vertical: size.height * 0.02
                                      ),
                                      height: size.height * 0.5,
                                      child: Align(
                                          alignment: Alignment.topCenter,
                                          child: CustomRadio(
                                            sampleData: radioItems,
                                            height: size.height * 0.5,
                                            width: size.width * 0.8,
                                          )
                                      )
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
                },
              ),
            ],
          ),
        )
      )
    );
  }
}