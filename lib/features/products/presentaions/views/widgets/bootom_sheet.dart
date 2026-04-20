import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hup_store/core/utils/Custome%20Bottun.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bloc/productes_bloc.dart';
import 'package:fruit_hup_store/features/products/presentaions/manger/bootomsheet_cubit.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/range_Silder.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/sort_by.dart';
import 'package:fruit_hup_store/features/products/presentaions/views/widgets/textfailed_of_sort.dart';

class BootomSheet {
  TextEditingController maxController = TextEditingController();
     TextEditingController minController = TextEditingController();
  double min = 5;
  double max = 200;
 bool sortby=false;
  void showBootomSheet(context) {
 showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: MediaQuery.sizeOf(context).height * 0.40,
            width: double.infinity,
            color: Colors.white,
            child:BlocBuilder<BootomsheetCubit, BootomsheetState>(builder: (context, state) {
            if(state is BootomSheetisinPriceState){

              return Column(
              children: [
                SizedBox(height: 8),
                Divider(
                  thickness: 4,
                  color: const Color(0xFF181001),
                  indent: 150,
                  endIndent: 150,
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ":"
                    'تصنيف حسب ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF0C0D0D) ,
                      fontSize: 19,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  children: [
                    Icon(
                      Icons.local_offer_outlined,
                      color: Color(0xFF181001),
                      size: 20,
                    ),
                    SizedBox(width: 4),
                    Text(
                      'السعر :',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: const Color(0xFF181001) /* Orange-950 */,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextfailedOfSort(controller: minController,),
                    SizedBox(width: 16),
                    Text(
                      'الي',
                      style: TextStyle(
                        color: const Color(0xFF0C0D0D) ,
                        fontSize: 13,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(width: 16),
                    TextfailedOfSort(controller: maxController),
                  ],
                ),
                SizedBox(height: 24),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CustomRangeSlider(
                    onChanged: (values) {
                      minController.text = values.start.toStringAsFixed(2);
                      maxController.text = values.end.toStringAsFixed(2);

                      min = values.start;
                      max = values.end;
                    },
                  ),
                ),
                SizedBox(height: 12),
                Customebottun(
                  onpressed: () {
                  BlocProvider.of<BootomsheetCubit>(context).changeUi(false);
                  },
                  title: "تصفيه",
                ),
                SizedBox(height: 12),
              ],
            );
            }
            if (state is BootomSheetisinSortState) {
            return  Column(
              children: [
                 SizedBox(height: 8),
                Divider(
                  thickness: 4,
                  color: const Color(0xFF181001),
                  indent: 150,
                  endIndent: 150,
                ),
                SizedBox(height: 24),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    ":"
                    'ترتيب حسب ',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF0C0D0D) ,
                      fontSize: 19,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(height: 24),
                SortOptions(onChanged: (SortType p1) { 
                sortby=p1==SortType.highToLow?true:false;
                 
                 },),
            SizedBox(height: 12),
                Customebottun(
                  onpressed: () {
                   
                   Navigator.pop(context);

                     BlocProvider.of<ProductesBloc>(context).add(
                      GetProductesByFilters(
                        minimum: min,
                        maximum: max,
                        orderby: sortby,
                      ),
                    );   
                  },
                  title: "تصفيه",
                ),
                SizedBox(height: 12),
              ],
            );
            }
            return Container();
            }),
            
           
          ),
        );
      },
    );
  }
}
