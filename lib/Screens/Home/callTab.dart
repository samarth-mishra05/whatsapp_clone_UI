import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class CallTab extends StatelessWidget{

  var callContent = [
    {
      "img":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name":"Alexa",
      "time":"2:00 pm",
    },
    {
      "img":"https://imgs.search.brave.com/R9JrMj8nu_R4zx8oXdZiahR3PEbgFHE3wyVuRtnFc4c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlptSTNaRGxt/TjJFdFptVXhZUzAw/TlRWa0xXSTROV1V0/TURka01URm1OVGd6/TVRJelhrRXlYa0Zx/Y0djQC5qcGc",
      "name":"Robin",
      "time":"03:00 pm",
    },
    {
      "img":"https://imgs.search.brave.com/OJ3fXc9--82GciC3aJJJo2tJo8RNx5-CrlO0r8oqNgU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/NTI0Mzg4NS9waG90/by9tYXR1cmUtbWFu/LWxhdWdoaW5nLWFu/ZC1zbWlsaW5nLW9u/LXZpZGVvLWNvbmZl/cmVuY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWNWR3dk/UmNOLVg5eHVRalpL/blkwclk0WVZlWEN6/UXk2V3ZERUxvbmht/OVE9",
      "name":"Michael",
      "time":"3:15 pm",
    },
    {
      "img":"https://imgs.search.brave.com/o9sJq4QCnjn_fRuWss-SSe4mPvtPIDwp1ynve2QosQs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b25maWRlbnQtaGFu/ZHNvbWUtZ3V5LXBv/c2luZy1hZ2FpbnN0/LXdoaXRlLXdhbGxf/MTc2NDIwLTMyOTM2/LmpwZz9zaXplPTYy/NiZleHQ9anBn",
      "name":"Franklin",
      "time":"04:27 pm",
    },
  ];

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Column(
       children: [
         SizedBox(height: 20,),
         Row(
          children: [
            SizedBox(width: 20,),
            CustomWidgets.CustomText(text: "Recent", height: 25),
          ],
         ),

         SizedBox(width: 20,),

         Expanded(
           child: ListView.builder(itemBuilder: (context, index) {
             return ListTile(
               leading: CircleAvatar(
                 radius: 26,
                 backgroundImage: NetworkImage(callContent[index]["img"].toString()),
               ),
               title: CustomWidgets.CustomText(text: callContent[index]["name"].toString(), height: 18,fontweight: FontWeight.bold),
               subtitle: CustomWidgets.CustomText(text: callContent[index]["time"].toString(), height: 16,color: Colors.grey.shade600),
               trailing: IconButton(onPressed: (){}, icon: Icon(Icons.call,color: Color(0XFF026500),)),
             );
           },itemCount: callContent.length,),
         )

       ],
     )
   );
  }

}
