class HomeRepair {
  final String jobName;
  final double costOfMaterial;
  final int hoursOfWork;
  final int hoursOfTravel;

  const HomeRepair({
    required this.jobName,
    required this.costOfMaterial,
    required this.hoursOfWork,
    required this.hoursOfTravel,
  });

  double computedJobCost(){
    final totalJobCost = costOfMaterial + (35 * hoursOfWork) + (12 * hoursOfTravel);
    return totalJobCost;
  }

  @override
  String toString() => 'Job Name: $jobName \nEstimated Cost: \$${computedJobCost()}';
}

void main() {
  const jobOne = HomeRepair(
    jobName: 'Sink Repair',
    costOfMaterial: 40.51,
    hoursOfWork: 2,
    hoursOfTravel: 12,
  );

  print(jobOne);
}
