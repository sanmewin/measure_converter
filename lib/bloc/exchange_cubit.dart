import 'package:flutter_bloc/flutter_bloc.dart';

import '../api/rates_api.dart';
import 'exchange.state.dart';


class ExchangeCubit extends Cubit<ExchangeState> {
  final CurrencyRateRepository currencyRes;
  ExchangeCubit(this.currencyRes) : super(InitExchangeState());
  Future<void> fetchRates()async{
     emit(ExchangeLoadingState());
     try{
      print(state);
      final response = await currencyRes.showRate();
      emit(ExchangeLoadedState(response));
     }
     catch(e){
      emit(ExchangeErrorState(e.toString()));
     }
  }
}
