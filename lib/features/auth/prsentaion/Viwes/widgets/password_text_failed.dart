import 'package:flutter/material.dart';
import 'package:fruit_hup_store/core/utils/custome%20_txet_form_failed.dart' show CustomeTxetFormFailed;

class PasswordTextFailed extends StatefulWidget {
  final TextEditingController textcontrrolpassword;
  PasswordTextFailed({required this.textcontrrolpassword});


  @override
  State<PasswordTextFailed> createState() => _PasswordTextFailedState();
}

class _PasswordTextFailedState extends State<PasswordTextFailed> {
  bool isviwed=false;
  @override
  Widget build(BuildContext context) {
    return CustomeTxetFormFailed(

      isviwed: isviwed,
      textEditingController: widget.textcontrrolpassword,
      title: 'كلمة المرور',
      textInputType: TextInputType.visiblePassword,
      suffixicon: IconButton(onPressed: (){
     setState(() {
       isviwed =!isviwed;
     });


      }, icon: Icon(isviwed ?Icons.visibility_off:Icons.visibility ), color: Color(0xffC9CECF)),
    );
  }
}
