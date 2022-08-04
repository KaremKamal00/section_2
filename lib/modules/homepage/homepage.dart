import 'package:flutter/material.dart';
import 'package:task_section_3/modules/secondpage/secondpage.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://c4.wallpaperflare.com/wallpaper/54/325/66/work-in-progress-wallpaper-preview.jpg"),
                  fit: BoxFit.cover)),
        ),
        SafeArea(
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                    ),
                    Text(
                      "Quiz@gmail.com",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    Text(
                      "Contact us at 19777",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                        width: 250,
                        height: 150,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        decoration: BoxDecoration(shape: BoxShape.circle ),
                        child: Image.network(
                            "https://wallpaperaccess.com/full/1444779.jpg")),
                    Text("Let's Go",style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize: 25),)
                  ],
                ),
                SizedBox(
                  height: 200,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  width: 230,
                  height: 60,
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SecondPage(),
                          ));
                    },
                    child: Text(
                      "Start Quiz",
                      style: TextStyle(fontSize: 35, color: Colors.white70),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  width: 230,
                  height: 60,
                  child: MaterialButton(
                    onPressed: () {},
                    child: Text(
                      "About",
                      style: TextStyle(fontSize: 35, color: Colors.white70),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
