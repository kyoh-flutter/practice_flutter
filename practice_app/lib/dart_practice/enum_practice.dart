enum Time { mornig, afternoon, night }

enum Day {
  monday(time: Time.mornig, isEat: true),
  tuesday(time: Time.afternoon, isEat: true),
  friday(time: Time.night, isEat: true);

  const Day({required this.time, required this.isEat});
  final Time time;
  final bool isEat;

  bool get isMorning => time == Time.mornig;
}
