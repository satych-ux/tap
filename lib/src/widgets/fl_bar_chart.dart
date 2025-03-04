import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tap_1/utils/constants/enums/financial_enums.dart';

class BarChartSample1 extends StatefulWidget {
  final List<Map<String, dynamic>> financialData;
  final FinancialGraphType financialType;

  const BarChartSample1({
    super.key,
    required this.financialData,
    required this.financialType,
  });

  @override
  State<BarChartSample1> createState() => _BarChartSample1State();
}

class _BarChartSample1State extends State<BarChartSample1> {
  bool isChartLoaded = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      setState(() {
        isChartLoaded = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.5,
      child: Padding(
        padding: const EdgeInsets.only(top: 40),
        child: BarChart(
          BarChartData(
            maxY: 3,
            barGroups: _generateBarGroups(widget.financialType),
            borderData: FlBorderData(show: false),
            gridData: FlGridData(
              show: true,
              getDrawingHorizontalLine:
                  (value) => FlLine(
                    color:
                        value % value.toInt() != 0
                            ? Colors.grey.shade100
                            : Colors.grey.shade300,
                    strokeWidth: value % value.toInt() != 0 ? 1 : 1.3,
                  ),
              drawVerticalLine: true,
              getDrawingVerticalLine: (value) {
                if (value == 0.3) {
                  return FlLine(
                    color: Colors.grey.shade500,
                    strokeWidth: 1.5,
                    dashArray: [1, 3],
                  );
                }
                return const FlLine(color: Colors.transparent);
              },
              drawHorizontalLine: true,
            ),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  maxIncluded: true,
                  minIncluded: true,
                  interval: 1,
                  showTitles: true,
                  reservedSize: 22,
                  getTitlesWidget: (value, meta) {
                    if (value >= 1 && value <= 3) {
                      return Text(
                        '₹${value.toInt()} L',
                        style: const TextStyle(
                          fontSize: 8,
                          fontWeight: FontWeight.w600,
                          color: Color(0xffA3A3A3),
                        ),
                      );
                    }
                    return Container();
                  },
                ),
              ),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    const months = [
                      'J',
                      'F',
                      'M',
                      'A',
                      'M',
                      'J',
                      'J',
                      'A',
                      'S',
                      'O',
                      'N',
                      'D',
                    ];
                    return Text(
                      months[value.toInt()],
                      style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                        color: Color(0xffA3A3A3),
                      ),
                    );
                  },
                  reservedSize: 24,
                ),
              ),
              topTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
              rightTitles: const AxisTitles(
                sideTitles: SideTitles(showTitles: false),
              ),
            ),
            barTouchData: BarTouchData(enabled: false),
            alignment: BarChartAlignment.spaceAround,
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.easeOutCubic,
        ),
      ),
    );
  }

  List<BarChartGroupData> _generateBarGroups(FinancialGraphType financialType) {
    return List.generate(widget.financialData.length, (index) {
      double actual =
          widget.financialData[index]['value'] / 10000000; // Convert to Cr
      double target = 2.0; // Fixed target at 2 Cr
      double animatedValue =
          isChartLoaded ? actual : 0; // Animate from 0 to actual value

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: animatedValue,
            color:
                financialType == FinancialGraphType.revenue
                    ? Color(0xff155DFC)
                    : Colors.black,
            width: 15,
            borderRadius: BorderRadius.circular(3),
            backDrawRodData: BackgroundBarChartRodData(
              show: true,
              toY: target,
              color: const Color(0xffD0DFFE),
            ),
          ),
        ],
      );
    });
  }
}
