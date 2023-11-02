import 'package:flutter/material.dart';
import 'package:med_fl/screens/main%20screens/home/home_screen.dart';
import 'package:med_fl/screens/main%20screens/home/main_home_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Color(0xff90afff),
                      shape: BoxShape.circle
                  ),
                  child: Icon(Icons.location_on,color: Color(0xff074cff),),
                ),
                SizedBox(height: 16),
                Text(
                  'Manzilingizni belgilang',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Center(
                  child: Text("Xarita yordamida belgilashingiz mumkin buning uchun sozlamalaringizga kirishga ruhsat bering" ,textAlign: TextAlign.center,style:TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff979797),
                  ),),
                ),
                SizedBox(height: 16),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return MainHomeScreen();
                    }
                    ));
                  },
                  child: Container(
                      width: 361,
                      height: 48,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff074cff)),
                    child: Center(
                      child: Text("Ilovaga Kirish",style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                      )),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
