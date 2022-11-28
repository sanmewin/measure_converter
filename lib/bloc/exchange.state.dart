import 'package:flutter/material.dart';

import '../models/rates_model.dart';


@immutable
abstract class ExchangeState {}
class InitExchangeState extends ExchangeState{}
  class ExchangeLoadingState extends ExchangeState {
  }
  class ExchangeLoadedState extends ExchangeState{
    final CurrencyRate rates;
    ExchangeLoadedState(this.rates);
  }
  class ExchangeErrorState extends ExchangeState{
    final String error;
    ExchangeErrorState(this.error); 
  }
