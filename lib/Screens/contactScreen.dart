import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Widgets/customWidgets.dart';

var contactContent = [
  {
    "img":"https://imgs.search.brave.com/ae6kYequvh1JUuANnyQg3vQhdjQko-KFwKs9HMBrNMI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9yZWxheGVkLWNh/cmVmcmVlLXNtaWxp/bmcteW91bmctd29t/YW4td2VhcmluZy13/aGl0ZS1jbG90aGVz/LWdsYXNzZXMtd2l0/aC1wb3NpdGl2ZS1j/aGVlcmZ1bF82MTI4/MzQtMTQzNy5qcGc_/c2l6ZT02MjYmZXh0/PWpwZw",
    "name":"Aron",
    "status":"Hey There! I am using WhatsApp",
  },
  {
    "img":"https://imgs.search.brave.com/o9sJq4QCnjn_fRuWss-SSe4mPvtPIDwp1ynve2QosQs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b25maWRlbnQtaGFu/ZHNvbWUtZ3V5LXBv/c2luZy1hZ2FpbnN0/LXdoaXRlLXdhbGxf/MTc2NDIwLTMyOTM2/LmpwZz9zaXplPTYy/NiZleHQ9anBn",
    "name":"Sam",
    "status":"Hello",
  },
  {
    "img":"https://imgs.search.brave.com/K-6lNqvaDxLyiuefB7mvi7PeqDvSjrN-JHui2Lk-UnM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/OTIyMDU0NS9waG90/by9iZWF1dGlmdWwt/d29tYW4tc21pbGlu/Zy13aXRoLWNyb3Nz/ZWQtYXJtcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9cW1P/VGtHc3RLajFxTjB6/UFZXai1uMjhvUkE2/X0JIUU44dVZMSVhn/MFRGOD0",
    "name":"Sharon",
    "status":"Busy",
  },
  {
    "img":"https://imgs.search.brave.com/OJ3fXc9--82GciC3aJJJo2tJo8RNx5-CrlO0r8oqNgU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/NTI0Mzg4NS9waG90/by9tYXR1cmUtbWFu/LWxhdWdoaW5nLWFu/ZC1zbWlsaW5nLW9u/LXZpZGVvLWNvbmZl/cmVuY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWNWR3dk/UmNOLVg5eHVRalpL/blkwclk0WVZlWEN6/UXk2V3ZERUxvbmht/OVE9",
    "name":"Max",
    "status":"At Movie",
  },
  {
    "img":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "name":"Alexa",
    "status":"Life is good",
  },
  {
    "img":"https://imgs.search.brave.com/R9JrMj8nu_R4zx8oXdZiahR3PEbgFHE3wyVuRtnFc4c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlptSTNaRGxt/TjJFdFptVXhZUzAw/TlRWa0xXSTROV1V0/TURka01URm1OVGd6/TVRJelhrRXlYa0Zx/Y0djQC5qcGc",
    "name":"Robin",
    "status":"Cool",
  },
  {
    "img":"https://imgs.search.brave.com/ae6kYequvh1JUuANnyQg3vQhdjQko-KFwKs9HMBrNMI/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/cHJlbWl1bS1waG90/by9yZWxheGVkLWNh/cmVmcmVlLXNtaWxp/bmcteW91bmctd29t/YW4td2VhcmluZy13/aGl0ZS1jbG90aGVz/LWdsYXNzZXMtd2l0/aC1wb3NpdGl2ZS1j/aGVlcmZ1bF82MTI4/MzQtMTQzNy5qcGc_/c2l6ZT02MjYmZXh0/PWpwZw",
    "name":"Aron",
    "status":"Hey There! I am using WhatsApp",
  },
  {
    "img":"https://imgs.search.brave.com/o9sJq4QCnjn_fRuWss-SSe4mPvtPIDwp1ynve2QosQs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b25maWRlbnQtaGFu/ZHNvbWUtZ3V5LXBv/c2luZy1hZ2FpbnN0/LXdoaXRlLXdhbGxf/MTc2NDIwLTMyOTM2/LmpwZz9zaXplPTYy/NiZleHQ9anBn",
    "name":"Sam",
    "status":"Hello",
  },
  {
    "img":"https://imgs.search.brave.com/K-6lNqvaDxLyiuefB7mvi7PeqDvSjrN-JHui2Lk-UnM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/OTIyMDU0NS9waG90/by9iZWF1dGlmdWwt/d29tYW4tc21pbGlu/Zy13aXRoLWNyb3Nz/ZWQtYXJtcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9cW1P/VGtHc3RLajFxTjB6/UFZXai1uMjhvUkE2/X0JIUU44dVZMSVhn/MFRGOD0",
    "name":"Sharon",
    "status":"Busy",
  },
  {
    "img":"https://imgs.search.brave.com/OJ3fXc9--82GciC3aJJJo2tJo8RNx5-CrlO0r8oqNgU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/NTI0Mzg4NS9waG90/by9tYXR1cmUtbWFu/LWxhdWdoaW5nLWFu/ZC1zbWlsaW5nLW9u/LXZpZGVvLWNvbmZl/cmVuY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWNWR3dk/UmNOLVg5eHVRalpL/blkwclk0WVZlWEN6/UXk2V3ZERUxvbmht/OVE9",
    "name":"Max",
    "status":"At Movie",
  },
  {
    "img":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "name":"Alexa",
    "status":"Life is good",
  },
  {
    "img":"https://imgs.search.brave.com/R9JrMj8nu_R4zx8oXdZiahR3PEbgFHE3wyVuRtnFc4c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlptSTNaRGxt/TjJFdFptVXhZUzAw/TlRWa0xXSTROV1V0/TURka01URm1OVGd6/TVRJelhrRXlYa0Zx/Y0djQC5qcGc",
    "name":"Robin",
    "status":"Cool",
  },
  {
    "img":"https://imgs.search.brave.com/o9sJq4QCnjn_fRuWss-SSe4mPvtPIDwp1ynve2QosQs/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9j/b25maWRlbnQtaGFu/ZHNvbWUtZ3V5LXBv/c2luZy1hZ2FpbnN0/LXdoaXRlLXdhbGxf/MTc2NDIwLTMyOTM2/LmpwZz9zaXplPTYy/NiZleHQ9anBn",
    "name":"Sam",
    "status":"Hello",
  },
  {
    "img":"https://imgs.search.brave.com/K-6lNqvaDxLyiuefB7mvi7PeqDvSjrN-JHui2Lk-UnM/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTI4/OTIyMDU0NS9waG90/by9iZWF1dGlmdWwt/d29tYW4tc21pbGlu/Zy13aXRoLWNyb3Nz/ZWQtYXJtcy5qcGc_/cz02MTJ4NjEyJnc9/MCZrPTIwJmM9cW1P/VGtHc3RLajFxTjB6/UFZXai1uMjhvUkE2/X0JIUU44dVZMSVhn/MFRGOD0",
    "name":"Sharon",
    "status":"Busy",
  },
  {
    "img":"https://imgs.search.brave.com/OJ3fXc9--82GciC3aJJJo2tJo8RNx5-CrlO0r8oqNgU/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTMy/NTI0Mzg4NS9waG90/by9tYXR1cmUtbWFu/LWxhdWdoaW5nLWFu/ZC1zbWlsaW5nLW9u/LXZpZGVvLWNvbmZl/cmVuY2UuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPWNWR3dk/UmNOLVg5eHVRalpL/blkwclk0WVZlWEN6/UXk2V3ZERUxvbmht/OVE9",
    "name":"Max",
    "status":"At Movie",
  },
  {
    "img":"https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "name":"Alexa",
    "status":"Life is good",
  },
  {
    "img":"https://imgs.search.brave.com/R9JrMj8nu_R4zx8oXdZiahR3PEbgFHE3wyVuRtnFc4c/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL00v/TVY1QlptSTNaRGxt/TjJFdFptVXhZUzAw/TlRWa0xXSTROV1V0/TURka01URm1OVGd6/TVRJelhrRXlYa0Zx/Y0djQC5qcGc",
    "name":"Robin",
    "status":"Cool",
  },
];

class ContactScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: CustomWidgets.CustomText(text: "Select Contact", height: 18,color: Colors.white),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search),splashRadius: 20,),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert),splashRadius: 20,)
        ],
      ),
     body: ListView.builder(itemBuilder: (context, index) {
       return ListTile(
         leading: CircleAvatar(
           backgroundImage: NetworkImage(contactContent[index]["img"].toString())
         ),
         title: CustomWidgets.CustomText(text: contactContent[index]["name"].toString(), height: 18,fontweight: FontWeight.bold),
         subtitle: CustomWidgets.CustomText(text: contactContent[index]["status"].toString(), height: 16,color: Colors.grey.shade600),
       );
     },itemCount: contactContent.length,),
   );
  }
}