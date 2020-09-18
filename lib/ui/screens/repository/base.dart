
import 'package:city_clinic_user/ui/screens/repository/repository.dart';

abstract class BaseBloc {
  final repository = Repository();

  void dispose() {}
}
