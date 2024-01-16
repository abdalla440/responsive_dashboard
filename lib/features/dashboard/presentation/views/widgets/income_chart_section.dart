import 'package:flutter/material.dart';

import '../../../data/income_tile_item_model.dart';
import 'income_donat_chart.dart';

class IncomeChartSection extends StatelessWidget {
  const IncomeChartSection({super.key});

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
    return Row(
      children: [
        const Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: IncomeDonatChart(),
          ),
        ),
        Expanded(
          child:
          Column(children: incomeItemsList.map((e) => IncomeTileItemWidget(incomeTileItemModel: e)).toList(),)
        )
      ],
    );
  }
}

class IncomeTileItemWidget extends StatelessWidget {
  const IncomeTileItemWidget({super.key, required this.incomeTileItemModel});

  final IncomeTileItemModel incomeTileItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(incomeTileItemModel.title),
      trailing: Text(incomeTileItemModel.value),
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: incomeTileItemModel.color,
          shape: const OvalBorder(),
        ),
      ),
    );
  }
}
