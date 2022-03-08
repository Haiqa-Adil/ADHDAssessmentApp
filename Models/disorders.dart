enum QueryType {freeText,checkBox,radioButton,dropDown}
class DisOrder{
  final int id;
  final String disOrder;
  final List<int> symptoms ;
  DisOrder( this.id,this.disOrder ,this.symptoms );
}

class Symptom{
  final int id;
  final String name;
  Symptom(this.id,this.name);
}


class Query{
  final int id ;
  final String question;
  final QueryType queryType;

  Query(this.id, this.question, this.queryType);
}

class QueryOptions{
  final int id;
  final String option;
  final int marks;

  QueryOptions(this.id, this.option, this.marks);
}

class SymptomQuestion{
  final int symptomId;
  final List<int> queryId;
  final List<int> optionsId;

  SymptomQuestion(this.symptomId , this.queryId, this.optionsId);
}


final disorders = [
  DisOrder(1, "Stress", [1,2,3]),
  DisOrder(2, "Anxiety", [4]),
  DisOrder(3, "UnOfficial", [4]),

  DisOrder(4, "Attentive DisOrder", [4]),
  DisOrder(5, "HyperActivity DisOrder", [4]),
  DisOrder(6, "UnOfficial DisOrder", [4]),
];


final symptoms = [
  Symptom(1, "Frequent Symptoms"),
  Symptom(2, "Perceived Stress Scale"),
  Symptom(3, "Ardell Wellness Stress Test"),
  Symptom(4, "General Anxiety"),
];

final questions = [
  Query(1,questionString[0],QueryType.radioButton),
  Query(2,questionString[1],QueryType.radioButton),
  Query(3,questionString[2],QueryType.radioButton),
  Query(4,questionString[3],QueryType.radioButton),
  Query(5,questionString[4],QueryType.radioButton),
  Query(6,questionString[5],QueryType.radioButton),
  Query(7,questionString[6],QueryType.radioButton),
  Query(8,questionString[7],QueryType.radioButton),
  Query(9,questionString[8],QueryType.radioButton),
  Query(10,questionString[9],QueryType.radioButton),
  Query(11,questionString[10],QueryType.radioButton),
  Query(12,questionString[11],QueryType.radioButton),
  Query(13,questionString[12],QueryType.radioButton),
  Query(14,questionString[13],QueryType.radioButton),
  Query(15,questionString[14],QueryType.radioButton),
  Query(12,questionString[15],QueryType.radioButton),
  Query(17,questionString[16],QueryType.radioButton),
  Query(18,questionString[17],QueryType.radioButton),
  Query(19,questionString[18],QueryType.radioButton),
  Query(20,questionString[19],QueryType.radioButton),
  Query(21,questionString[20],QueryType.radioButton),
  Query(22,questionString[21],QueryType.radioButton),
  Query(23,questionString[22],QueryType.radioButton),
  Query(24,questionString[23],QueryType.radioButton),
  Query(25,questionString[24],QueryType.radioButton),
  Query(26,questionString[25],QueryType.radioButton),
  Query(27,questionString[26],QueryType.radioButton),
  Query(28,questionString[27],QueryType.radioButton),
  Query(29,questionString[28],QueryType.radioButton),
  Query(30,questionString[29],QueryType.radioButton),
  Query(31,questionString[30],QueryType.radioButton),
  Query(32,questionString[31],QueryType.radioButton),
  Query(33,questionString[32],QueryType.radioButton),
  Query(34,questionString[33],QueryType.radioButton),
  Query(35,questionString[34],QueryType.radioButton),
  Query(36,questionString[35],QueryType.radioButton),
  Query(37,questionString[36],QueryType.radioButton),
  Query(38,questionString[37],QueryType.radioButton),
  Query(39,questionString[38],QueryType.radioButton),
  Query(40,questionString[39],QueryType.radioButton),
  Query(41,questionString[40],QueryType.radioButton),
  Query(42,questionString[41],QueryType.radioButton),
  Query(43,questionString[42],QueryType.radioButton),
  Query(44,questionString[43],QueryType.radioButton),
  Query(45,questionString[44],QueryType.radioButton),
  Query(46,questionString[45],QueryType.radioButton),
  Query(47,questionString[46],QueryType.radioButton),
  Query(48,questionString[47],QueryType.radioButton),
  Query(49,questionString[48],QueryType.radioButton),
  Query(50,questionString[49],QueryType.radioButton),
  Query(51,questionString[50],QueryType.radioButton),
  Query(52,questionString[51],QueryType.radioButton),
  Query(53,questionString[52],QueryType.radioButton),
  Query(54,questionString[53],QueryType.radioButton),
  Query(55,questionString[54],QueryType.radioButton),


];

final options = [
  QueryOptions(1, 'Never', 0),
  QueryOptions(2, 'Once in A day', 1),
  QueryOptions(3, 'One in a week ', 2),
  QueryOptions(4, 'Twice or more in week ', 3),
  QueryOptions(5, 'Once in A Month', 4),

  QueryOptions(6, 'Never', 0),
  QueryOptions(7, 'Almost Never', 1),
  QueryOptions(8, 'Sometimes', 2),
  QueryOptions(9, 'Fairly Often', 3),
  QueryOptions(10, 'Ver Often', 4),

  QueryOptions(11, 'Ecstatic', 0),
  QueryOptions(12, 'Very happy', 0),
  QueryOptions(13, 'Mildly happy', 0),
  QueryOptions(14, 'Indifferent', 0),
  QueryOptions(15, 'Mildly disappointed', 0),
  QueryOptions(16, 'Very disappointed', 0),

  QueryOptions(17, 'Never', 0),
  QueryOptions(18, 'Several days', 0),
  QueryOptions(19, 'Over half the days', 0),
  QueryOptions(20, 'Nearly every days', 0),


];

final symptomQuestions = [
  SymptomQuestion(1, [1,2,3,4,5,6,7,8,9,10,11,12], [1,2,3,4,5]),
  SymptomQuestion(2, [13,14,15,16,17,18,19,20,21,22], [6,7,8,9,10]),
  SymptomQuestion(3, [23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47], [11,12,13,14,15,16]),
  SymptomQuestion(4, [48,49,50,51,52,53,54,55], [17,18,19,20])
];

final questionString = [
  "How frequently do you find yourself experiencing headaches?",
  "How frequently do you find yourself experiencing tense muscles or sore neck and back?",
  "How frequently do you find yourself experiencing fatigue?",
  "How frequently do you find yourself experiencing anxiety, worry or phobias?",
  "How frequently do you find yourself experiencing difficulty falling asleep?",
  "How frequently do you find yourself experiencing  irritability?",
  "How frequently do you find yourself experiencing  insomnia?",
  "How frequently do you find yourself experiencing anger/hostility?",
  "How frequently do you find yourself experiencing  boredom or depression?",
  "How frequently do you find yourself experiencing  eating too much or too little?",
  "How frequently do you find yourself experiencing diarrhea, cramps, gas, constipation?",
  "How frequently do you find yourself experiencing Restlessness, itching or tics?",
  "In the last month, how often have you been upset because of something that happened unexpectedly?",
  "In the last month, how often have you felt that you were unable to control the important things in your life?",
  "In the last month, how often have you felt nervous and stressed?",
  "In the last month, how often have you felt confident about your ability to handle your personal problems?",
  "In the last month, how often have you felt that things were going your way?",
  "In the last month, how often have you found that you could not cope with all the things that you had to do?",
  "In the last month, how often have you been able to control irritations in your life?",
  "In the last month, how often have you felt that you were on top of things?",
  "In the last month, how often have you been angered because of things that happened that were outside of your control?",
  "In the last month, how often have you felt difficulties were piling up so high that you could not overcome them?",

'How would you rate your choice of career',
'What do you think about your marital status?',
'How are you with your primary relationships?',
'How would you rate your inner capacity to have fun?',
'Rate the amount of fun you had last month?',
'How do you feel about your future goals? Are you satisfied with them? Kindly rate.',
'Rate your current Income level.',
'Rate your spirituality.',
'How would you rate your level of self-esteem?',
'How would you rate your prospects for having impact on those who know you and possibly others?',
'Rate your sex life.',
'Rate your body, how it looks and performs.',
'Rate your home life.',
'Rate your life skills and knowledge of issues and facts unrelated to your job or profession.',
'Rate your Learned stress management capacities.',
'Rate your nutritional knowledge, attitudes, and choices.',
'Rate your ability to recover from disappointment, hurts, setbacks, and tragedies.',
'Rate the confidence that you currently are, or will in the future be, reasonably close to your highest potential.',
'Rate the achievement of a rounded or balanced quality in your life.',
'Rate the sense that life for you is on an upward curve, getting better and fuller all the time.',
'Rate the level of participation in issues and concerns beyond your immediate interests.',
'Rate the choice whether to parent or not and with the consequences or results of that choice',
'Rate the role in some kind of network of friends, relatives, and/or others about whom you care deeply and who reciprocate that commitment to you.',
'Rate your emotional acceptance of the inescapable reality of aging.',

'Over the last 2 weeks, how often have you been bothered by  Over the last 2 weeks, how often have you been bothered by?',
'Over the last 2 weeks, how often have you been bothered by feeling nervous, anxious, or on edge?',
  'Over the last 2 weeks, how often have you  not been able to stop or control worrying not being able to stop or control worrying?',
  'Over the last 2 weeks, how often have you  not been able to stop or control worrying not being able to stop or control worrying?',
'Over the last 2 weeks, how often have you been worrying too much about different things?',
  'Over the last 2 weeks, how often have you having trouble relaxing?',
  'Over the last 2 weeks, how often have you having trouble relaxing?',
'Over the last 2 weeks, how often have you been so restless that it\'s hard to sit still',
'Over the last 2 weeks, how often have you been becoming easily annoyed or Irritable',
  'Over the last 2 weeks, how often have you been feeling afraid as if something awful might happen?'
      'Over the last 2 weeks, how often have you been feeling afraid as if something awful might happen?'
];