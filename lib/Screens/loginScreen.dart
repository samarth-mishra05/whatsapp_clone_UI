import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/profile.dart';
import 'package:whatsapp_clone/Screens/verification.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class LoginScreen extends StatefulWidget
{
   LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController phoneController = TextEditingController();
  String selectedCountry = "India";

  List<String> countries = [
    "India",
    "America",
    "Italy",
    "Africa",
    "Germany"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            const SizedBox(height: 60,),

            CustomWidgets.CustomText(
                text: "Enter your phone number",
                height: 20,
              color: const Color(0XFF00A884),
              fontweight: FontWeight.bold
            ),

            const SizedBox(height: 45,),

            RichText(
              textAlign: TextAlign.center,
                text: const TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: "Whatsapp will need to verify your phone\n"
                          "number. Carrier charges may apply.\n",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Color(0XFF5E5E5E)
                      )
                    ),

                    TextSpan(
                      text: "What's my Number?",
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.5,
                        color: Color(0XFF00A884),
                      )
                    )
                  ]
              )
            ),

            const SizedBox(height: 40,),

            Padding(
              padding: const EdgeInsets.only(left: 64,right: 64),
              child: DropdownButtonFormField(items: countries.map((String country)
                  {
                    return DropdownMenuItem(value: country, child: Text(country,style: const TextStyle(fontWeight: FontWeight.w400),)
                    );
                  }).toList(),
                  onChanged: (newValue){
                    setState(() {
                      selectedCountry = newValue!;
                    });
                  },
                value: selectedCountry,
                decoration: const InputDecoration(
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))
                  )
                ),),
            ),

             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF00A884))),
                      hintText: "+91",
                      border: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884)
                        )
                      )
                    ),
                  ),
                ),

                const SizedBox(width: 20,),

                SizedBox(
                  width: 250,
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF00A884))),
                        border: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0XFF00A884)
                            )
                        )
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: CustomWidgets.CustomButton(callback: (){
        login(phoneController.text.toString());
      }, name: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String phnNo){
    if(phnNo == ""){
      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(duration: Duration(seconds: 2),content: Text("Phone number cannot be empty"),backgroundColor: Colors.red));
    }
    else{
      Navigator.push(context, MaterialPageRoute(builder: (context) => VerificationScreen(phnNo: phnNo),));
    }
  }
}