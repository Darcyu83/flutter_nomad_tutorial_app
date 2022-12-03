import 'package:flutter/material.dart';

typedef CurrencyData = List<Map<String, dynamic>>;

const CurrencyData currencyApiData = [
  {
    'title': 'Euro',
    'amount': '6 500',
    'currencyCode': 'EUR',
    'currencyIcon': Icons.euro_rounded,
    'isInverted': false,
  },
  {
    'title': 'Dollar',
    'amount': '55 620',
    'currencyCode': 'US',
    'currencyIcon': Icons.monetization_on_outlined,
    'isInverted': true,
  },
  {
    'title': 'Rupee',
    'amount': '26 500',
    'currencyCode': 'INR',
    'currencyIcon': Icons.currency_rupee_rounded,
    'isInverted': false,
  },
  {
    'title': 'BitCoin',
    'amount': '26 500',
    'currencyCode': 'BTC',
    'currencyIcon': Icons.currency_bitcoin_rounded,
    'isInverted': true,
  }
];
