import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

class StatusTab extends StatelessWidget{

  var statusContent = [
    {
      "img":"https://imgs.search.brave.com/o9sJq4QCnjn_fRuWss-SSe4mPvtPIDwp1ynve2QosQs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b25maWRlbnQtaGFu/ZHNvbWUtZ3V5LXBv/c2luZy1hZ2FpbnN0/LXdoaXRlLXdhbGxf/MTc2NDIwLTMyOTM2/LmpwZz9zaXplPTYy/NiZleHQ9anBn",
      "name":"Sam",
      "statusTime":"8.28pm"
    },
    {
      "img":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "name":"Alexa",
      "statusTime":"8.08pm"
    },
    {
      "img":"https://imgs.search.brave.com/K-6lNqvaDxLyiuefB7mvi7PeqDvSjrN-JHui2Lk-UnM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/OTIyMDU0NS9waG90/by9iZWF1dGlmdWwt/d29tYW4tc21pbGlu/Zy13aXRoLWNyb3Nz/ZWQtYXJtcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9cW1P/VGtHc3RLajFxTjB6/UFZXai1uMjhvUkE2/X0JIUU44dVZMSVhn/MFRGOD0",
      "name":"Sharon",
      "statusTime":"7.13pm"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 20,),

                CustomWidgets.CustomText(text: "Status", height: 27),
              ],
            ),

            SizedBox(height: 10,),

            ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Stack(
                  children: [
                    CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("https://imgs.search.brave.com/n24eamZZyFy2YdTSYarsWPVTDFMgxdJj-gUWTIGoYqg/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzA1Lzg5LzkzLzI3/LzM2MF9GXzU4OTkz/Mjc4Ml92UUFFQVpo/SG5xMVFDR3U1aWt3/cllhUUQwTW11cm0w/Ti5qcGc"),
                    ),

                    Positioned(
                      bottom: 0,
                        right: 1,
                        child: CircleAvatar(
                          backgroundColor: Color(0XFF008665),
                          radius: 10,
                          child: Icon(Icons.add,color: Colors.white,size: 15,),
                        ),
                    )
                  ]
                ),
              ),

              title: CustomWidgets.CustomText(text: "My Status", height: 20),
              subtitle: CustomWidgets.CustomText(text: "Tap to add status update", height:15,color: Colors.grey.shade700),
            ),

            SizedBox(height: 20,),

            Row(
              children: [
                SizedBox(width: 20,),

                CustomWidgets.CustomText(text: "Recent Updates", height: 16,color: Colors.grey.shade600)
              ],
            ),

            Expanded(
              child: ListView.builder(itemBuilder: (context, index){
                return ListTile(
                  leading: Container(
                    // height: 50,
                    // width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.green,width: 2.5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(statusContent[index]["img"].toString()),
                      ),
                    ),
                  ),
                  title: CustomWidgets.CustomText(text: statusContent[index]["name"].toString(), height: 18,fontweight: FontWeight.bold),
                  subtitle: CustomWidgets.CustomText(text: statusContent[index]["statusTime"].toString(), height: 16,color: Colors.grey.shade600),
                );
                },itemCount: statusContent.length,),
            ),
          ],
        ),
      )
    );
  }

}