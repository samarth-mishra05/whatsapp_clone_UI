import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class ChatsTab extends StatelessWidget{

  final arrContent = [
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
    {
      "profilePic":"https://imgs.search.brave.com/OJ3fXc9--82GciC3aJJJo2tJo8RNx5-CrlO0r8oqNgU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/NTI0Mzg4NS9waG90/by9tYXR1cmUtbWFu/LWxhdWdoaW5nLWFu/ZC1zbWlsaW5nLW9u/LXZpZGVvLWNvbmZl/cmVuY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWNWR3dk/UmNOLVg5eHVRalpL/blkwclk0WVZlWEN6/UXk2V3ZERUxvbmht/OVE9",
      "name":"Max",
      "lastMsg":"Meeting is rescheduled on Monday!!",
      "time":"10:05 am",
      "msg":"1",
    },
    {
      "profilePic":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name":"Alexa",
      "lastMsg":"Wassup??",
      "time":"11:30 am",
      "msg":"2",
    },
    {
      "profilePic":"https://imgs.search.brave.com/R9JrMj8nu_R4zx8oXdZiahR3PEbgFHE3wyVuRtnFc4c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlptSTNaRGxt/TjJFdFptVXhZUzAw/TlRWa0xXSTROV1V0/TURka01URm1OVGd6/TVRJelhrRXlYa0Zx/Y0djQC5qcGc",
      "name":"Robin",
      "lastMsg":"Hey!! Where are you??",
      "time":"01:00 pm",
      "msg":"4",
    },
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
    {
      "profilePic":"https://imgs.search.brave.com/OJ3fXc9--82GciC3aJJJo2tJo8RNx5-CrlO0r8oqNgU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/NTI0Mzg4NS9waG90/by9tYXR1cmUtbWFu/LWxhdWdoaW5nLWFu/ZC1zbWlsaW5nLW9u/LXZpZGVvLWNvbmZl/cmVuY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWNWR3dk/UmNOLVg5eHVRalpL/blkwclk0WVZlWEN6/UXk2V3ZERUxvbmht/OVE9",
      "name":"Max",
      "lastMsg":"Meeting is rescheduled on Monday!!",
      "time":"10:05 am",
      "msg":"1",
    },
    {
      "profilePic":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name":"Alexa",
      "lastMsg":"Wassup??",
      "time":"11:30 am",
      "msg":"2",
    },
    {
      "profilePic":"https://imgs.search.brave.com/R9JrMj8nu_R4zx8oXdZiahR3PEbgFHE3wyVuRtnFc4c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlptSTNaRGxt/TjJFdFptVXhZUzAw/TlRWa0xXSTROV1V0/TURka01URm1OVGd6/TVRJelhrRXlYa0Zx/Y0djQC5qcGc",
      "name":"Robin",
      "lastMsg":"Hey!! Where are you??",
      "time":"01:00 pm",
      "msg":"4",
    },
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
               subtitle: CustomWidgets.CustomText(text: arrContent[index]["lastMsg"].toString(), height:15,color: Colors.grey.shade600),
               trailing: Padding(
                 padding: const EdgeInsets.only(right: 10.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     CustomWidgets.CustomText(text: arrContent[index]["time"].toString(), height: 17,color: Color(0XFF026500),fontweight: FontWeight.bold),

                     SizedBox(height: 5,),

                     CircleAvatar(
                       radius: 14,
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
     ),
       floatingActionButton: CircleAvatar(
          radius: 35,
         backgroundColor: Color(0XFF008665),
         child:Image(image: AssetImage("assets/images/message.png"),height:27,width:32,fit: BoxFit.cover,)
       )
   );
  }
}