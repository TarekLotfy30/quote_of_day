import 'package:apiii/model/quote_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ApiDemo extends StatefulWidget {
  const ApiDemo({Key? key}) : super(key: key);

  @override
  State<ApiDemo> createState() => _ApiDemoState();
}

class _ApiDemoState extends State<ApiDemo> {
  Dio dio = Dio();
  QuoteModel? todayQuote;

  @override
  void initState() {
    super.initState();
    callAPI();
  }

  Future<void> callAPI() async {
    try {
      final Response response = await dio.get("https://favqs.com/api/qotd");
      setState(() {
        todayQuote = QuoteModel.fromJson(response.data);
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: Center(
        child: Container(
          height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 5),
          ),
          child: Padding(
            padding: const EdgeInsets.all(25),
            child: Center(
              child: Text(
                todayQuote?.quote?.body ?? "",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  letterSpacing: 2,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
