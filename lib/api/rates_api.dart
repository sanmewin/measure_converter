
import 'package:http/http.dart';

import '../models/rates_model.dart';

class CurrencyRateRepository {
  String endpoint = "https://api.exchangerate-api.com/v4/latest/USD";
  Future<CurrencyRate> showRate() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      return currencyRateFromJson(response.body);
    } else {
      print(response.statusCode);
      throw Exception(response.statusCode);
    }
  }
}
