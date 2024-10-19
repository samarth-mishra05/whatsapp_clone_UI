import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/loginScreen.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget{
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Image(image: AssetImage("assets/images/welcome.png"),
             height: 250,
             width: 250,
           ),

           const SizedBox(height: 50,),

           CustomWidgets.CustomText(text: "Welcome to WhatsApp",
               height: 24,
               fontweight: FontWeight.w400,
           ),

           const SizedBox(height: 10,),

           Column(
             children: [
               RichText(
                 textAlign: TextAlign.center,
                 text: TextSpan(
                   style:GoogleFonts.roboto(),
                   children: <InlineSpan>[
                     TextSpan(
                       text: "Read out ",
                         style: GoogleFonts.roboto(
                             textStyle: const TextStyle(
                                 height: 1.65,
                                 color: Color(0XFF5E5E5E)
                             )
                         )
                     ),

                     TextSpan(
                       text: "Privacy Policy.",
                         style: GoogleFonts.roboto(
                             textStyle: const TextStyle(
                                 height: 1.65,
                                 color: Color(0XFF0C42CC)
                             )
                         )
                     ),

                     TextSpan(
                         text: '''Tap "Agree and continue"\n''',
                         style: GoogleFonts.roboto(
                             textStyle: const TextStyle(
                                 height: 1.65,
                                 color: Color(0XFF5E5E5E)
                             )
                         )
                     ),

                      TextSpan(
                         text: "to accept the ",
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              height: 1.65,
                              color: Color(0XFF5E5E5E)
                          )
                        )
                     ),

                     TextSpan(
                         text: "Terms of Service.",
                         style: GoogleFonts.roboto(
                             textStyle: const TextStyle(
                                 height: 1.65,
                                 color: Color(0XFF0C42CC)
                             )
                         )
                     ),
                   ]
                 ),
               ),
             ],
           ),
         ],
       ),
     ),
     floatingActionButton: CustomWidgets.CustomButton(
         callback: (){
           Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
         },
         name: "Agree and Continue"),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat
   );
  }
}