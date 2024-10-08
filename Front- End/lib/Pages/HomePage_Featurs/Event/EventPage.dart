import 'package:travel_app/Pages/HomePage_Featurs/Event/AddEvent.dart' as AddEventPage;
import 'package:travel_app/Pages/HomePage_Featurs/Event/EventDetails.dart';
import 'package:travel_app/Pages/HomePage_Featurs/Event/Components/Support.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/Pages/HomePage_Featurs/MainHomePage.dart'; // Import MainHomePage

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _HomeState();
}

class _HomeState extends State<EventPage> {
  bool csfcover = false, laksapana = false, motor = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Events'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => MainHomePage()),
            );
          },  
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AddEventPage.AddEventPage(),
          ),
              );
            },
          ),
        ],

      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10.0),
            Text(
              "Upcoming Events",
              style: AppWidget.LightTextFeildStyle(),
            ),
            const SizedBox(height: 20.0),
            showItem(),
          ],
        ),
      ),
    );
  }

  Widget showItem() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Details()),
            );
            csfcover = true;
            laksapana = false;
            motor = false;
            setState(() {});
          },
         child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                 child: Container(
                     decoration: BoxDecoration(color: csfcover? Color.fromARGB(255, 95, 198, 221): Colors.white,borderRadius: BorderRadius.circular(10)),


                  padding: const EdgeInsets.all(8),
                 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[ 
                    Image.asset("images/CSF-Cover.png", height: 100, width: 300, fit: BoxFit.cover),
                  
                   

                Text("COLOMBO SHOPPING FESTIVAL - CSF", style: AppWidget.semiBooldTextFieldStyle()),
                
                  Row(
  children: [ 
                  
                 Text("Dec - 2024 , 05 06 & 07\n 10:00 a.m - 10:00 p.m | at BMICH ", style: AppWidget.LightTextFeildStyle()),
                  Spacer(),



                   Container(
                padding: const EdgeInsets.all(3),
              
              decoration: BoxDecoration(color:Color.fromARGB(255, 126, 128, 125),borderRadius: BorderRadius.circular(8) ),
              child: const Icon(Icons.bookmark, color:Color.fromARGB(255, 255, 255, 255),
              ),
              
              ),
                  
  ],
)
                  ],
                  ),

                           

                 )
                ),
               ),
               SizedBox(height: 20.0,),
                     

                    GestureDetector(
              onTap: () {
                  csfcover=false;
                  laksapana=true;
                  motor=false;
                  setState(() {
                    
                  });

              },
                child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                 child: Container(
                     decoration: BoxDecoration(color: laksapana?Color.fromARGB(255, 95, 198, 221): Colors.white,borderRadius: BorderRadius.circular(10)),


                  padding: const EdgeInsets.all(8),
                 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children:[ Image.asset("images/laksapana.jpeg", height: 100, width: 300, fit: BoxFit.cover),
                        SizedBox(width: 20),

                       
                  Text("Lakshapana waterfall abseiling", style: AppWidget.semiBooldTextFieldStyle()),
 Row(
  children: [
                  Text("Dec - 2024 , 05 06 & 07\n 10:00 a.m - 10:00 p.m | at BMICH ", style: AppWidget.LightTextFeildStyle()),
                   Spacer(),
                   
                   
                    Container(
                padding: const EdgeInsets.all(3),
              
              decoration: BoxDecoration(color:Color.fromARGB(255, 126, 128, 125),borderRadius: BorderRadius.circular(8) ),
              child: const Icon(Icons.bookmark, color:Color.fromARGB(255, 255, 254, 254),
              ),
              
              )
                 ],
)    
                  ],),


                           

                 ),
                ),
               ),

                   SizedBox(height: 20.0,),
                 GestureDetector(
              onTap: () {
                  csfcover=false;
                  laksapana=false;
                  motor=true;
                  setState(() {
                    
                  });

              },
                child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(10),
                 child: Container(
                     decoration: BoxDecoration(color: motor? Color.fromARGB(255, 95, 198, 221): Colors.white,borderRadius: BorderRadius.circular(10)),


                  padding: const EdgeInsets.all(8),
                 
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  
                  children:[ Image.asset("images/motor.jpeg", height: 100, width: 300, fit: BoxFit.cover),
                     
                  Text("Colombo Motor Show 2024", style: AppWidget.semiBooldTextFieldStyle()),
 Row(
  children: [ 
                  Text("Dec - 2024 , 05 06 & 07\n10:00 a.m - 10:00 p.m  | at BMICH ", style: AppWidget.LightTextFeildStyle()),
                  
                  Spacer(),
                   Container(
                padding: const EdgeInsets.all(3),
              
              decoration: BoxDecoration(color:Color.fromARGB(255, 126, 128, 125),borderRadius: BorderRadius.circular(8) ),
              child: const Icon(Icons.bookmark, color:Color.fromARGB(255, 255, 255, 255),
              ),
              
              )
 ],
)
                  ],),

 
 


                           

                 ),
                ),
               ),

           ],
           
           );

   }

}
