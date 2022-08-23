// To parse this JSON data, do
//
//     final sympromQuestion = sympromQuestionFromJson(jsonString);

import 'dart:convert';

List<SymptomQuestion> symptomQuestionFromJson(String str) =>
    List<SymptomQuestion>.from(
        json.decode(str).map((x) => SymptomQuestion.fromJson(x)));

String symptomQuestionToJson(List<SymptomQuestion> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SymptomQuestion {
  SymptomQuestion({
    required this.question,
    required this.option,
  });

  Question question;
  List<Option> option;

  factory SymptomQuestion.fromJson(Map<String, dynamic> json) =>
      SymptomQuestion(
        question: Question.fromJson(json["question"]),
        option:
            List<Option>.from(json["option"].map((x) => Option.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "question": question.toJson(),
        "option": List<dynamic>.from(option.map((x) => x.toJson())),
      };
}

class Option {
  Option({
    required this.id,
    required this.description,
    required this.marks,
    this.isSelected = false
  });

  int id;
  String description;
  int marks;
  bool isSelected;

  factory Option.fromJson(Map<String, dynamic> json) => Option(
        id: json["id"],
        description: json["description"],
        marks: json["marks"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "marks": marks,
      };

  
}

class Question {
  Question({
    required this.id,
    required this.description,
    required this.questionType,
  });

  int id;
  String description;
  int questionType;

  factory Question.fromJson(Map<String, dynamic> json) => Question(
        id: json["id"],
        description: json["description"],
        questionType: json["questionType"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "description": description,
        "questionType": questionType,
      };
}
