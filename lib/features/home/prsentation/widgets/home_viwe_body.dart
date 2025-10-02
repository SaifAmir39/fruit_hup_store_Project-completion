import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/custome_search%20_textfailed.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/Best_saling_header.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/best_saling_gridviwe.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/custome_home_appbar.dart';
import 'package:fruit_hup_store/features/home/prsentation/widgets/list_overs.dart';

class HomeViweBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
      child: CustomScrollView(
        slivers: [
          
          SliverToBoxAdapter(
         child:CustomeHomeAppbar(),
           
         ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 16,
            ),
          ),
          SliverToBoxAdapter(
            child: CustomeSearchTextfailed(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),
          SliverToBoxAdapter(
            child:ListOvers(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 12,
            ),
          ),  
          SliverToBoxAdapter(
            child:BestSalingHeader(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          
         BestSalingGridviwe(),
         
          
           
        ],
      ),
    );
  }
}