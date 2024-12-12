import 'package:currency_app/Model/currencies_model.dart';
import 'package:currency_app/Model/rates_model.dart';
import 'package:currency_app/res/app_url.dart';
import 'package:http/http.dart' as http;

Future<RatesModel> fetchRates() async {
  var response = await http.get(Uri.parse(AppUrl.ratesUrl));

  final ratesModel = ratesModelFromJson(response.body);
  return ratesModel;
}

Future<Map> fetchCurrencies() async {
  var response = await http.get(Uri.parse(AppUrl.currenciesUrl));

  final allCurrencies = allCurrenciesFromJson(response.body);
  return allCurrencies;
}
