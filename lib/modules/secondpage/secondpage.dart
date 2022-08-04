import 'package:flutter/material.dart';
import 'package:task_section_3/modules/databasemcq/databasemcq.dart';
import 'package:task_section_3/modules/datastructure/datastructure.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(image: DecorationImage(image: NetworkImage("https://c4.wallpaperflare.com/wallpaper/54/325/66/work-in-progress-wallpaper-preview.jpg"),fit: BoxFit.cover)),
          ),
       SafeArea(
         child: SafeArea(
           child: Column(
          children: [
            Row(
              children: [
                Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Container(child: Icon(Icons.arrow_back,color: Colors.black,),  )),
                ),
                SizedBox(width:80),
                Row(

                  children: [
                    Text("Subjects", style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40,),
            MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Databasemcq(),)
              );

            },
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(30),
                   child: Container(width: 180, height:150,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),child: Text("Database",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),alignment: Alignment.center),
                 )

                ],
              ),
            ),
            MaterialButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Datastructuremcq(),));
            },
              child: Column(
                children: [
                 Padding(
                   padding: const EdgeInsets.all(30),
                   child: Container(width: 180, height:150,decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(15)),child: Text("Data structure",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),alignment: Alignment.center),
                 )

                ],
              ),
            ),



          ],
      ),
    ),
       ),
        ],
      ),

      // body:
    );
  }
}
