
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SparkBar extends StatelessWidget {
  final List<charts.Series> seriesList;
  String image;
  String name;
  String price;
  final bool animate;

  SparkBar(this.seriesList, this.image, this.name, this.price,{this.animate});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 8, left: 8, right: 8, bottom: 16),

      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: Colors.grey,
          ),
          color: Colors.white,
        ),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                     CircleAvatar(
                       backgroundColor: Colors.grey,
                      foregroundColor: Colors.white,
                       child: Icon(
                         Icons.image
                       ),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          children: <Widget>[
                            Text("Company Name",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                            ),
                            Text(name),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text("Total Sales",
                      style: TextStyle(
                        fontSize: 14
                      ),
                      ),
                      Text(price,
                      style: TextStyle(
                        fontSize: 18
                      ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 400,
              width: 400,
              child: new charts.BarChart(
                seriesList,
                animate: animate,

                primaryMeasureAxis:
                new charts.NumericAxisSpec(renderSpec: new charts.NoneRenderSpec()),
                domainAxis: new charts.OrdinalAxisSpec(
                    showAxisLine: true,
                    ),


                layoutConfig: new charts.LayoutConfig(
                    leftMarginSpec: new charts.MarginSpec.fixedPixel(20),
                    topMarginSpec: new charts.MarginSpec.fixedPixel(50),
                    rightMarginSpec: new charts.MarginSpec.fixedPixel(20),
                    bottomMarginSpec: new charts.MarginSpec.fixedPixel(20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Icon(Icons.monetization_on),
                  Icon(
                    Icons.work,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.system_update,
                    color: Colors.grey,
                  ),
                  Icon(
                    Icons.dashboard,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



}


class OrdinalSales {
  final String month;
  final int sales;

  OrdinalSales(this.month, this.sales);
}