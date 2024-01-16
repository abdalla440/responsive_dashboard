import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/utils/style_helper.dart';
import '../../../data/income_tile_item_model.dart';
import 'package:fl_chart/fl_chart.dart';
import '../../../data/custom_pie_chart_section_data_model.dart';

class IncomeOverSizeChartSection extends StatelessWidget {
  const IncomeOverSizeChartSection({super.key});

  static List<IncomeTileItemModel> incomeItemsList = [
    IncomeTileItemModel(
      color: const Color(0xFF208BC7),
      title: 'Design service',
      value: '40%',
    ),
    IncomeTileItemModel(
      color: const Color(0xFF4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeTileItemModel(
      color: const Color(0xFF064060),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeTileItemModel(
      color: const Color(0xFF208BC7),
      title: 'Other',
      value: '22%',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: IncomeOverSizeDonatChart(),
          ),
        ),
      ],
    );
  }
}

class IncomeOverSizeDonatChart extends StatefulWidget {
  const IncomeOverSizeDonatChart({super.key});

  @override
  State<IncomeOverSizeDonatChart> createState() =>
      _IncomeOverSizeDonatChartState();
}

class _IncomeOverSizeDonatChartState extends State<IncomeOverSizeDonatChart> {
  int selectedIndex = -1;
  final List<CustomPieChartSectionDataModel> itemsList = [
    CustomPieChartSectionDataModel(
        color: const Color(0xFFE2DECD), value: 22, title: 'Design service'),
    CustomPieChartSectionDataModel(
        color: const Color(0xFF4DB7F2), value: 25, title: 'Design product'),
    CustomPieChartSectionDataModel(
        color: const Color(0xFF064060), value: 20, title: 'Product royalti'),
    CustomPieChartSectionDataModel(
        color: const Color(0xFF208BC7), value: 40, title: 'Other'),
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
                  title: '% ${itemsList[index].value.toInt().toString()}',
                  titleStyle: StyleHelper.textStyle16SemiBold
                      .copyWith(color: Colors.white),
                  badgeWidget: selectedIndex == index
                      ? Container(
                    padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                spreadRadius: 0.5,
                                blurRadius: 2
                              )
                            ],
                            borderRadius: BorderRadius.circular(12.0),
                            color: Colors.white.withOpacity(0.9)
                          ),
                          child: Text(itemsList[index].title??''),
                        )
                      : const SizedBox(),
                  value: itemsList[index].value,
                  color: selectedIndex == index
                      ? itemsList[index].color.withOpacity(0.7)
                      : itemsList[index].color,
                  radius: selectedIndex == index ? 65.0 : 50.0,
                )),
      ),
    );
  }
}
