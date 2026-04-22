import 'package:flutter/material.dart';

void showcustomDailog({required BuildContext context,required void Function() onprassAcppet}){

showDialog(
            
  context: context,
  builder: (context) => Dialog(
    backgroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      side: BorderSide(color: Color(0xFF1B5E37)),
      
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(Icons.close), color:const Color(0xFF0C0D0D))),
          Text(
            'هل ترغب في تسجيل الخروج؟',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Cairo',
              fontWeight: FontWeight.w700,
            ),
          ),

          SizedBox(height: 38),

          Row(
            children: [
              /// زر إلغاء
              Expanded(
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    side: BorderSide(color: Color(0xFF1B5E37)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'لا أرغب',
                    style: TextStyle(
                      color: Color(0xFF1B5E37),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),

              SizedBox(width: 8),

              /// زر تأكيد
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1B5E37),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: onprassAcppet,
                  child:  Text(
        'تأكيد',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontFamily: 'Cairo',
          fontWeight: FontWeight.w700,
        ),
      ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  ),
);
}