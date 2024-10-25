import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Screens/Home/callTab.dart';
import 'package:whatsapp_clone/Screens/Home/cameraTab.dart';
import 'package:whatsapp_clone/Screens/Home/chatsTab.dart';
import 'package:whatsapp_clone/Screens/Home/statusTab.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
   return DefaultTabController(
     length: 4,
     child: Scaffold(
       appBar: AppBar(
         elevation: 0,
         bottom: TabBar(
           labelStyle: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),
           indicatorPadding: EdgeInsets.only(right: 12,left: 12),
           indicatorColor: Colors.white,
             tabs: [

               Tab(icon: Icon(Icons.camera_alt,size: 30,),),

               Tab(text: "CHATS"),

               Tab(text: "STATUS",),

               Tab(text: "CALLS",),
          ]
         ),
        toolbarHeight: 100,
         title: CustomWidgets.CustomText(text: "WhatsApp", height: 25,color: Colors.white),
         actions: [
           IconButton(
             icon: Icon(Icons.search),
             padding: EdgeInsets.all(15),
             iconSize: 30,
             splashRadius: 30,
             onPressed: (){},
           ),
           IconButton(
             icon: Icon(Icons.more_vert),
             padding: EdgeInsets.all(15),
             iconSize: 30,
             splashRadius: 30,
             onPressed: (){},
           ),
         ],
       ),
       body: TabBarView(children:[
         CameraTab(),
         ChatsTab(),
         StatusTab(),
         CallTab(),
       ]),
     ),
   );
  }
}