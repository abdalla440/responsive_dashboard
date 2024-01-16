import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

import '../../../data/custom_pie_chart_section_data_model.dart';

class IncomeDonatChart extends StatefulWidget {
  const IncomeDonatChart({super.key});

  @override
  State<IncomeDonatChart> createState() => _IncomeDonatChartState();
}

class _IncomeDonatChartState extends State<IncomeDonatChart> {
  int selectedIndex = -1;
  final List<CustomPieChartSectionDataModel> itemsList = [
    CustomPieChartSectionDataModel(
      color: const Color(0xFFE2DECD),
      value: 22,
    ),
    CustomPieChartSectionDataModel(
      color: const Color(0xFF4DB7F2),
      value: 25,
    ),
    CustomPieChartSectionDataModel(
      color: const Color(0xFF064060),
      value: 20,
    ),
    CustomPieChartSectionDataModel(
      color: const Color(0xFF208BC7),
      value: 40,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (p0, p1) {
            selectedIndex = p1?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          },
        ),
        sectionsSpace: 0.0,
        sections: List.generate(
            itemsList.length,
            (index) => PieChartSectionData(
                  value: itemsList[index].value,
                  color: selectedIndex == index
                      ? itemsList[index].color.withOpacity(0.7)
                      : itemsList[index].color,
                  showTitle: false,
                  radius: selectedIndex == index ? 65.0 : 50.0,
                )),
      ),
    );
  }
}
