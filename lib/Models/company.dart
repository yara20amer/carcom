import 'package:carcom/Models/car.dart';

class Company {
  int companyId;
  int registrationNumber;
  List<Car>? cars;

  Company({
    required this.companyId,
    required this.registrationNumber,
  });
}
