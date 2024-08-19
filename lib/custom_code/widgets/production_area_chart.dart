// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/backend/supabase/supabase.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ProductionAreaChart extends StatefulWidget {
  const ProductionAreaChart({
    super.key,
    this.width,
    this.height,
    this.productionSchedule,
  });

  final double? width;
  final double? height;
  final List<dynamic>? productionSchedule;

  @override
  State<ProductionAreaChart> createState() => _ProductionAreaChartState();
}

class _ProductionAreaChartState extends State<ProductionAreaChart> {
  @override
  Widget build(BuildContext context) {
    // Parse the mock data into a list of ProductionData objects
    List<ProductionData> productionData = [];
    for (var weekData in widget.productionSchedule!) {
      int week = weekData['week'];
      List<dynamic> dataItems = weekData['data'];
      for (var data in dataItems) {
        productionData.add(ProductionData(
          calendarW: week,
          productionValue: data['amount'],
          productId: data[
              'product_id'], // Assuming you want to include the name as well
          productName: data[
              'name'], // You'll need to add a field for this in ProductionData
        ));
      }
    }

// Group data by productId
    Map<int, List<ProductionData>> groupedData = {};
    for (var entry in productionData) {
      groupedData.putIfAbsent(entry.productId, () => []).add(entry);
    }

// Prepare series for each group
    List<StackedAreaSeries<ProductionData, int>> seriesList = [];
    groupedData.forEach((productId, data) {
      // Assuming all items in 'data' have the same productName, which is a safe assumption if productId is unique for each productName
      String productName = data.first
          .productName; // Use the productName of the first item in the group
      seriesList.add(StackedAreaSeries<ProductionData, int>(
        dataSource: data,
        xValueMapper: (ProductionData data, _) => data.calendarW,
        yValueMapper: (ProductionData data, _) => data.productionValue,
        name: productName, // Use productName here
        enableTooltip: true,
      ));
    });

    return Container(
      width: widget.width,
      height: widget.height,
      child: SfCartesianChart(
        primaryXAxis: NumericAxis(
          interval: 1,
          title: AxisTitle(text: 'Calendar Week'), // X Axis Title
        ),
        primaryYAxis: NumericAxis(
          title: AxisTitle(text: 'Cell Amount'), // Y Axis Title
        ),
        series: seriesList,
        tooltipBehavior: TooltipBehavior(enable: true, shared: true),
      ),
    );
  }
}

class ProductionData {
  int calendarW;
  double productionValue;
  int productId; // Added productId
  String productName;

  ProductionData(
      {required this.calendarW,
      required this.productionValue,
      required this.productId,
      required this.productName});
}
