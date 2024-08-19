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

import 'package:syncfusion_flutter_core/core.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:syncfusion_flutter_core/theme.dart';

class WeekPicker extends StatefulWidget {
  const WeekPicker({
    super.key,
    this.width,
    this.height,
    this.week,
    required this.onDateSelected,
    this.isEditable,
    this.year,
    this.minWeek,
    this.minYear,
  });

  final double? width;
  final double? height;
  final int? week;
  final Future Function(int selectedWeek, int selectedYear) onDateSelected;
  final bool? isEditable;
  final int? year;
  final int? minWeek;
  final int? minYear;

  @override
  State<WeekPicker> createState() => _WeekPickerState();
}

class _WeekPickerState extends State<WeekPicker> {
  late DateTime? _initialValue;
  late DateRangePickerController _controller;
  late DateTime? _minValue;
  @override
  void initState() {
    _controller = DateRangePickerController();
    _initialValue = getFirstDayOfWeek(widget.year, widget.week);
    if (widget.minWeek != null) {
      _minValue = getFirstDayOfWeek(widget.minYear!, widget.minWeek!);
    } else {
      _minValue = null;
    }
    super.initState();
  }

  @override
  void didUpdateWidget(WeekPicker oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.minWeek != oldWidget.minWeek ||
        widget.minYear != oldWidget.minYear) {
      setState(() {
        if (widget.minWeek != null) {
          _minValue = getFirstDayOfWeek(widget.minYear!, widget.minWeek!);
          if (_initialValue != null &&
              _minValue!.compareTo(_initialValue!) == 1) {
            _initialValue = null;
          }
        } else
          _minValue = null;
      });
    }
    // if (widget.filteredSuppliers != oldWidget.filteredSuppliers) {
    //   setState(() {
    //     _shapeLayerController.clearMarkers();
    //     markers = _buildMarkers();
    //     for (var i = 0; i < markers.length; i++) {
    //       _shapeLayerController.insertMarker(i);
    //     }
    //   });
    // }
    // if (widget.countryRisks != oldWidget.countryRisks) {
    //   setState(() {
    //     _updateMapShapeSource();
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Card(
              child: SfDateRangePickerTheme(
            data: SfDateRangePickerThemeData(),
            child: SfDateRangePicker(
                controller: _controller,
                view: DateRangePickerView.month,
                selectionMode: DateRangePickerSelectionMode.range,
                onSelectionChanged: selectionChanged,
                monthViewSettings: DateRangePickerMonthViewSettings(
                    enableSwipeSelection: false,
                    firstDayOfWeek: 1,
                    showWeekNumber: true),
                initialSelectedRange: _initialValue != null
                    ? PickerDateRange(_initialValue,
                        _initialValue!.add(const Duration(days: 6)))
                    : null,
                initialDisplayDate: _initialValue,
                showActionButtons: true,
                showNavigationArrow: true,
                minDate: _minValue != null ? _minValue : null),
          ))
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void selectionChanged(DateRangePickerSelectionChangedArgs args) {
    PickerDateRange ranges = args.value;
    DateTime startDate = ranges.startDate!;
    DateTime endDate = ranges.endDate ?? ranges.startDate!;
    if (startDate.isAfter(endDate)) {
      DateTime temp = startDate;
      startDate = endDate;
      endDate = temp;
    }
    // Adjust startDate to the previous Monday if it's not already a Monday
    startDate =
        startDate.subtract(Duration(days: startDate.weekday - DateTime.monday));
    // Adjust endDate to the next Sunday if it's not already a Sunday
    endDate = startDate.add(Duration(days: 6));
    if (!isSameDate(startDate, endDate)) {
      _controller.selectedRange = PickerDateRange(startDate, endDate);
    }

    dynamic weekYear = getWeekAndYear(endDate.add(const Duration(days: 1)));
    widget.onDateSelected(weekYear['week'], weekYear['year']);
  }

  bool isSameDate(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }
}

DateTime? getFirstDayOfWeek(int? year, int? week) {
  // Get the first day of the year
  if (year == null || week == null) return null;
  DateTime firstDayOfYear = DateTime(year, 1, 1);

  // Calculate the offset to the first Monday of the year
  int offsetToFirstMonday = (firstDayOfYear.weekday - DateTime.monday) % 7;
  if (offsetToFirstMonday < 0) offsetToFirstMonday += 7;

  // Calculate the first Monday of the year
  DateTime firstMonday =
      firstDayOfYear.add(Duration(days: (7 - offsetToFirstMonday) % 7));

  // Calculate the first day of the given week
  DateTime firstDayOfWeek = firstMonday.add(Duration(days: (week - 1) * 7));

  return firstDayOfWeek;
}

dynamic getWeekAndYear(DateTime date) {
  // Get the first day of the year for the given date
  DateTime firstDayOfYear = DateTime(date.year, 1, 1);

  // Calculate the offset to the first Monday of the year
  int offsetToFirstMonday = (firstDayOfYear.weekday - DateTime.monday) % 7;
  if (offsetToFirstMonday < 0) offsetToFirstMonday += 7;

  // Calculate the first Monday of the year
  DateTime firstMonday =
      firstDayOfYear.add(Duration(days: (7 - offsetToFirstMonday) % 7));

  // Calculate the number of weeks between the given date and the first Monday of the year
  int daysDifference = date.difference(firstMonday).inDays;
  int weekNumber = (daysDifference / 7).ceil();

  // Handle cases where the date is before the first Monday of the year
  if (daysDifference < 0) {
    weekNumber = 1;
  }

  return {"week": weekNumber, "year": date.year};
}
