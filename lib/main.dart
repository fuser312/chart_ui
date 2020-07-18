import 'package:chartui/sortOptions.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'barChartUI.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData(
          fontFamily: "Poppins_Regular",
          accentColor: Color(0xFF6055A5),
          backgroundColor: Color(0xFF000),
          textTheme:
              TextTheme(body1: TextStyle(fontFamily: "Poppins_Regular"))),
      home: RegisterPage(),
      debugShowCheckedModeBanner: false,
    ));

class RegisterPage extends StatefulWidget {

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  @override
  Widget build(BuildContext context) {
    var layout = <Widget>[
      SparkBar(_createSampleData(), "assets/img.png", "Fashion & Apparel",
          "GBP 6,872,325"),

      SparkBar(_createSampleDataOne(), "assets/img.png", "Food & Beverage",
          "GBP 5,872,325"),

      SparkBar(_createSampleData(), "assets/img.png", "Electronics",
          "GBP 4,872,325"),


    ];

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "LEADERBOARD",
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          color: Colors.white,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (context) => SortOptions()
                                );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.swap_vert),
                                onPressed: () {
                                  setState(() {
                                    layout.add(SortOptions());
                                  });
                                },
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
                                child: Text(
                                  "SORT BY",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: layout,
                  ),
                ),
              ],
            ),
          )),
    );
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleData() {
    final globalSalesData = [
      new OrdinalSales('JAN', 3100),
      new OrdinalSales('FEB', 3900),
      new OrdinalSales('MAR', 4700),
      new OrdinalSales('APR', 5500),
      new OrdinalSales('MAY', 4500),
      new OrdinalSales('JUN', 6100),
      new OrdinalSales('JUL', 6500),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSales sales, _) => sales.month,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.grey),
      ),
    ];
  }

  static List<charts.Series<OrdinalSales, String>> _createSampleDataOne() {
    final globalSalesData = [
      new OrdinalSales('JAN', 3100),
      new OrdinalSales('FEB', 3900),
      new OrdinalSales('MAR', 4700),
      new OrdinalSales('APR', 5500),
      new OrdinalSales('MAY', 6300),
      new OrdinalSales('JUN', 5900),
      new OrdinalSales('JUL', 6100),
    ];

    return [
      new charts.Series<OrdinalSales, String>(
        id: 'Global Revenue',
        domainFn: (OrdinalSales sales, _) => sales.month,
        measureFn: (OrdinalSales sales, _) => sales.sales,
        data: globalSalesData,
        colorFn: (_, __) => charts.ColorUtil.fromDartColor(Colors.grey),
      ),
    ];
  }

}
