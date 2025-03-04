import 'package:flutter/material.dart';
import 'package:tap_1/src/features/company_details/widgets/tab_views/isin_analysis_tab_view.dart';
import 'package:tap_1/src/features/company_details/widgets/tab_views/pros_and_cons_tab_view.dart';
import 'package:tap_1/src/model/company_details/company_detail_model.dart';

class TabbarWithIndicator extends StatefulWidget {
  final CompanyDetail detail;
   const TabbarWithIndicator({super.key,required this.detail});

  @override
  State<TabbarWithIndicator> createState() => _TabbarWithIndicatorState();
}

class _TabbarWithIndicatorState extends State<TabbarWithIndicator>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    tabController = TabController(
      initialIndex: selectedIndex,
      length: 2,
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TabBar
          TabBar(
            controller: tabController,
            onTap: (int index) {
              setState(() {
                selectedIndex = index;
                tabController.animateTo(index);
              });
            },
            isScrollable: true,
            labelColor: const Color(0xff1447E6),
            unselectedLabelColor: const Color(0xff4A5565),
            labelStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            unselectedLabelStyle:
                const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            dividerColor: Colors.transparent,
            indicatorPadding: const EdgeInsets.only(right: 0),
            indicatorColor: const Color(0xff1447E6),
            indicatorSize: TabBarIndicatorSize.label,
            tabAlignment: TabAlignment.start,
            tabs: const [
              Tab(text: 'ISIN Analysis'),
              Tab(text: 'Pros & Cons'),
            ],
          ),

          const SizedBox(height: 12),

          IndexedStack(
            index: selectedIndex,
            children: <Widget>[
              Visibility(
                maintainState: true,
                visible: selectedIndex == 0,
                child: // Tab 1: ISIN Analysis - Graph + Issuer Details
                     ISINAnalysisTabView(detail:widget.detail),
              ),
              Visibility(
                maintainState: true,
                visible: selectedIndex == 1,
                child: // Tab 2: Pros & Cons
                     ProsAndConsTabView(detail:widget.detail),
              ),
            ],
          ),
          // TabBarView (Changing UI)
        ],
      ),
    );
  }
}
