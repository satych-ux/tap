
import 'package:flutter/material.dart';
import 'package:tap_1/src/model/company_details/company_detail_model.dart';
import 'package:tap_1/src/widgets/p_data_container_with_shadow.dart';
import 'package:tap_1/src/widgets/pros_cons_list.dart';

class ProsAndConsTabView extends StatelessWidget {
  final CompanyDetail detail;
  const ProsAndConsTabView({
    super.key,
    required this.detail
  });

  @override
  Widget build(BuildContext context) {
    return PDataContainerWithShadow(
      paddingAllowed: true,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text("Pros and Cons",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: Color(0xff020617))),
          ),
          const SizedBox(height: 22),

          // Pros List
          ProsConsList(
            title: "Pros",
            items: detail.pros_and_cons.pros,
            isPros: true,
          ),
          const SizedBox(height: 20),

          // Cons List
          ProsConsList(
            title: "Cons",
            items: detail.pros_and_cons.cons,
            isPros: false,
          ),
        ],
      ),
    );
  }
}