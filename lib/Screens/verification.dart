import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/profile.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class VerificationScreen extends StatelessWidget
{
  VerificationScreen({super.key,required this.phnNo});

  TextEditingController opt1controller = TextEditingController();
  TextEditingController opt2controller = TextEditingController();
  TextEditingController opt3controller = TextEditingController();
  TextEditingController opt4controller = TextEditingController();
  TextEditingController opt5controller = TextEditingController();
  TextEditingController opt6controller = TextEditingController();

  String phnNo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Center(
       child: Column(
         children: [
           const SizedBox(height: 60,),

           CustomWidgets.CustomText(text: "Verifying your number", height: 19,color: Color(0XFF00A884),fontweight: FontWeight.bold),

           const SizedBox(height: 40,),
           
           CustomWidgets.CustomText(text: "You've tried to register +91${phnNo}", height: 16,color: Color(0XFF5E5E5E)),
           
           CustomWidgets.CustomText(text: "recently. Wait before requesting an sms or a call", height: 16,color: Color(0XFF5E5E5E)),

           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               CustomWidgets.CustomText(text: "with your code. ", height: 16,color: Color(0XFF5E5E5E)),

               GestureDetector(
                 onTap: () {
                   Navigator.pop(context);
                 },
                   child: CustomWidgets.CustomText(
                       text: "Wrong Number?",
                       height: 15,
                       color: Color(0XFF00A884)
                   ),
                   )

                   ],
                   ),

                   SizedBox(height: 30,),

                   Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                   CustomWidgets.CustomContainer(opt1controller),
                   CustomWidgets.CustomContainer(opt2controller),
                   CustomWidgets.CustomContainer(opt3controller),
                   CustomWidgets.CustomContainer(opt4controller),
                   CustomWidgets.CustomContainer(opt5controller),
                   CustomWidgets.CustomContainer(opt6controller),
                    ],
                   ),

                   SizedBox(height: 50,),

           CustomWidgets.CustomText(text: "Didn't recieve code?", height: 16,color: Color(0XFF00A884))
         ],
       ),
     ),
      floatingActionButton: CustomWidgets.CustomButton(
          callback: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Profile()));
          },
          name: "Next"
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
