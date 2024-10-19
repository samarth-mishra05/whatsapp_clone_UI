import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/homeScreen.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class Profile extends StatefulWidget{
  Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController = TextEditingController();

  File? pickedImage;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    body: Center(
      child: Column(
        children: [

          SizedBox(height: 60),

          CustomWidgets.CustomText(text: "Profile info", height: 22,color: Color(0XFF00A884),fontweight: FontWeight.bold),

          SizedBox(height: 45,),

          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: "Please provide your name and an optional\nprofile photo",
              style: TextStyle(color: Color(0XFF5E5E5E),fontSize: 18)
            )
          ),

          SizedBox(height: 40,),

          GestureDetector(
            onTap: (){
              _openBottom(context);
            },
            child: pickedImage==null ? CircleAvatar(
              radius: 65,
              backgroundColor: Colors.grey.shade300,
              child: Image(image: AssetImage("assets/images/camera.png"),
                height: 45,width: 45,fit: BoxFit.cover,),
            ):CircleAvatar(
              radius: 65,
              backgroundImage: FileImage(pickedImage!),
            )
          ),

          SizedBox(height: 40,),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 320,
                child: TextField(
                  controller: nameController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: "Type your name here",
                    hintStyle: TextStyle(color:Color(0XFF5E5E5E),fontSize: 18),
                    enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0XFF05AA82))),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF05AA82))
                    )
                  ),
                ),
              ),

              SizedBox(width: 10,),

              Image(image: AssetImage("assets/images/smiley.png"),height: 40,width: 40,fit: BoxFit.cover,)
            ],
          )


        ],
      ),
    ),
     floatingActionButton: CustomWidgets.CustomButton(callback: (){
       Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
     }, name: "Next"),
     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
   );
  }

  _openBottom(BuildContext context){
    return showModalBottomSheet(
        enableDrag: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
        context: context,
        builder: (BuildContext context)
        {
          return Container(
            height:200,
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(onPressed: (){
                      _pickImage(ImageSource.camera);
                    },
                      icon: Icon(Icons.camera_alt,size: 60,color: Colors.grey,)
                      ),
                  ],
                ),
                IconButton(
                    onPressed: (){
                      _pickImage(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image,size: 60,color: Colors.grey,)
                )
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imagesource)async{
    try{
      final photo = await ImagePicker().pickImage(source: imagesource);
      if(photo==null)
        return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
    }
    catch(e){
      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString()),backgroundColor: Colors.red,));
    }
  }
}