class SavingsAccount {
  static double annualInterestRate = 0.0;
  final double _savingsBalance;

  SavingsAccount({
    required double savingsBalance,
  }) : _savingsBalance = savingsBalance;

  double calculateMonthlyInterest() {
    double monthlyInterest = (_savingsBalance * annualInterestRate) / 12;
    return monthlyInterest;
  }

  static double modifyInterestRate(double newInterestRate) =>
      annualInterestRate = newInterestRate;

  double newSavingsBalance() => _savingsBalance + calculateMonthlyInterest();

  @override
  String toString() {
    return 'Interest: ${(annualInterestRate * 100).toStringAsFixed(0)}%\nBalance: \$${newSavingsBalance().toStringAsFixed(2)}\n';
  }
}
