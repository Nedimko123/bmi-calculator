double calculateBMI(
    {required double height,
    required double weight,
    required bool isAmericanMode}) {
  double bmi;
  if (isAmericanMode) {
    final int feet = height.floor() ~/ 12;
    final int inches = height.toInt() % 12;
    final int heightInInches = (feet * 12) + inches;
    bmi = (weight / (heightInInches * heightInInches)) * 703;
  } else {
    bmi = weight / ((height / 100) * (height / 100));
  }
  return bmi;
}
