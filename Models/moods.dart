enum Moods {
  veryHappy, happy , normal, disAppointed, veryDisAppointed
}

class MoodRecord {
  late final DateTime date;
  late final double fear;
  late final double anger;
  late final double anticipate;
  late final double trust;
  late final double surprise;
  late final double sad;
  late final double disgust;
  late final double joy;
  late final double positive;
  late final double negative;
  late final String dominantMood;

}

class DailyMood{
  late final int mood;
  late final DateTime date;

  DailyMood(this.date , this.mood);
}