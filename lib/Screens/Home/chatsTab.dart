import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class ChatsTab extends StatelessWidget{

  var arrContent = [
    {
      "profilePic":"https://imgs.search.brave.com/ae6kYequvh1JUuANnyQg3vQhdjQko-KFwKs9HMBrNMI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9yZWxheGVkLWNh/cmVmcmVlLXNtaWxp/bmcteW91bmctd29t/YW4td2VhcmluZy13/aGl0ZS1jbG90aGVz/LWdsYXNzZXMtd2l0/aC1wb3NpdGl2ZS1j/aGVlcmZ1bF82MTI4/MzQtMTQzNy5qcGc_/c2l6ZT02MjYmZXh0/PWpwZw",
      "name":"Aron",
      "lastMsg":"Good Morning!!",
      "time":"05:45 am",
      "msg":"7",
    },
    {
      "profilePic":"https://imgs.search.brave.com/o9sJq4QCnjn_fRuWss-SSe4mPvtPIDwp1ynve2QosQs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b25maWRlbnQtaGFu/ZHNvbWUtZ3V5LXBv/c2luZy1hZ2FpbnN0/LXdoaXRlLXdhbGxf/MTc2NDIwLTMyOTM2/LmpwZz9zaXplPTYy/NiZleHQ9anBn",
      "name":"Sam",
      "lastMsg":"Hey!! There",
      "time":"06:30 am",
      "msg":"2",
    },
    {
      "profilePic":"https://imgs.search.brave.com/K-6lNqvaDxLyiuefB7mvi7PeqDvSjrN-JHui2Lk-UnM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/OTIyMDU0NS9waG90/by9iZWF1dGlmdWwt/d29tYW4tc21pbGlu/Zy13aXRoLWNyb3Nz/ZWQtYXJtcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9cW1P/VGtHc3RLajFxTjB6/UFZXai1uMjhvUkE2/X0JIUU44dVZMSVhn/MFRGOD0",
      "name":"Sharon",
      "lastMsg":"Wanna Meet??",
      "time":"08:00 am",
      "msg":"1",
    },
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         SizedBox(height: 7,),
         Expanded(
           child: ListView.builder(itemBuilder: (context, index) {
             return ListTile(
               contentPadding: EdgeInsets.all(6),
               leading: CircleAvatar(
                 backgroundImage: NetworkImage(arrContent[index]["profilePic"].toString()),
                 radius: 40,
               ),
               title: CustomWidgets.CustomText(text: arrContent[index]["name"].toString(), height: 17,fontweight: FontWeight.bold),
               subtitle: CustomWidgets.CustomText(text: arrContent[index]["lastMsg"].toString(), height:15,color: Color(0XFF889095)),
               trailing: Padding(
                 padding: const EdgeInsets.only(right: 10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CustomWidgets.CustomText(text: arrContent[index]["time"].toString(), height: 16,color: Color(0XFF026500),fontweight: FontWeight.bold),

                     SizedBox(height: 5,),

                     CircleAvatar(
                       radius: 13,
                       backgroundColor: Color(0XFF036A01),
                         child: CustomWidgets.CustomText(text: arrContent[index]["msg"].toString(), height: 12,color:Colors.white,fontweight: FontWeight.bold)
                     )
                   ],
                 ),
               ),
             );
           },itemCount: arrContent.length,
           ),
         ),
       ],
     )
   );
  }
}