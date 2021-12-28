import 'package:project_1/get_req_res.dart';
import 'package:project_1/get_country.dart';

void main(List<String> arguments) {
  try {
    getReqRes();
    getCountry();
  } catch (err) {
    print('Error: $err');
  }
}
