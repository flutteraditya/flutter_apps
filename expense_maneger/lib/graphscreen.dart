import 'package:expense_maneger/menudrawer.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  Map<String, double> data = {
    "Food": 20,
    "Movies": 10,
    "Entertainment": 40,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Categories",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(33, 33, 33, 1),
          ),
        ),
      ),
      body: Center(
        child: PieChart(
          dataMap: data,
          animationDuration: const Duration(milliseconds: 2000),
          chartType: ChartType.ring,
          chartRadius: 177,
          ringStrokeWidth: 33,
          //centerText: "Total",
          centerWidget: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total",
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              Text(
                "₹ 2550.00",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ],
          ),
          chartValuesOptions: const ChartValuesOptions(
            showChartValuesInPercentage: true,
            showChartValues: false
          ),
          legendOptions: const LegendOptions(
            legendPosition: LegendPosition.right,
            legendShape: BoxShape.circle,
            //showLegends: false,
          ),
        ),
      ),
      drawer: const MenuDrawer(),
    );
  }
}
