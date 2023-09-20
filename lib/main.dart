int calculateDurationInMonths(DateTime startDate) {
  DateTime currentDate = DateTime.now();
  //
  int months = (currentDate.year - startDate.year) * 12 +
      currentDate.month -
      startDate.month;

  if (currentDate.day < startDate.day) {
    months--;
  }

  return months;
}

int calculateDurationInDays(DateTime startDate) {
  DateTime currentDate = DateTime.now();
  DateTime aMonthLater = startDate.add(Duration(days: 30));

  if (currentDate.isBefore(aMonthLater)) {
    return currentDate.difference(startDate).inDays;
  } else {
    return currentDate.day - startDate.day;
  }
}

double calculateInterest(
    double principal, double interestRatePer100, int months, int days) {
  double monthlyInterestRate = interestRatePer100 / 100;
  double dailyInterestRate = monthlyInterestRate / 30;

  double totalMonthlyInterest = monthlyInterestRate * principal * months;
  double totalDailyInterest = dailyInterestRate * principal * days;

  return totalMonthlyInterest + totalDailyInterest;
}

void main() {
  // type name value
  String inputDateStr = "10/07/2022";
  DateTime startDate = DateTime.parse(
      '${inputDateStr.split('/')[2]}-${inputDateStr.split('/')[1]}-${inputDateStr.split('/')[0]}');
  double principalAmount = 250;
  double interestRatePer100 = 2;
// months laga convert chese function
  int monthsSinceStart = calculateDurationInMonths(startDate);
  print("Months since start date: $monthsSinceStart months");

  // days wise interest
  int daysSinceStart = calculateDurationInDays(startDate);
  print("Days since last month of start date: $daysSinceStart days");


  double totalInterest = calculateInterest(principalAmount, interestRatePer100, monthsSinceStart, daysSinceStart);

  double monthlyInterestRate = interestRatePer100 / 100;
  double dailyInterestRate = monthlyInterestRate / 30;

  double totalMonthlyInterest =
      monthlyInterestRate * principalAmount * monthsSinceStart;
  double totalDailyInterest =
      dailyInterestRate * principalAmount * daysSinceStart;

  print(
      "Interest for $monthsSinceStart months: ₹${totalMonthlyInterest.toStringAsFixed(2)}");
  print(
      "Interest for $daysSinceStart days: ₹${totalDailyInterest.toStringAsFixed(2)}");
  print("Total interest amount: ₹${totalInterest.toStringAsFixed(2)}");
  print(
      "The complete total amount: ₹${principalAmount + double.parse(totalInterest.toStringAsFixed(2))}");
}