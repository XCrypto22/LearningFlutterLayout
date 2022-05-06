import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<MyHomePage> {
  
  
  
  @override

  


  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;


    Widget title_section = Container(
      margin: const EdgeInsets.only(bottom: 35),
      width: size.width,
      height: size.height / 4,
      decoration: const BoxDecoration(
        color: Colors.grey
      ),
    );
  

    Widget category(Color color){
      return Container(
        padding: const EdgeInsets.only(right: 12),
        margin: const EdgeInsets.only(right: 12),
        child: 
            Container(
              height: size.height / 8,
              width: size.width / 3,
              //width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: color,
              ),
            )
        );
    }


    Widget news_feed = Container(
      margin: const EdgeInsets.only(top: 30),
      width: size.width / 1.2,
      height: size.height / 4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey
      ),
    );


    return Scaffold(
      appBar: AppBar(
        title: const Text('Elton'),
      ),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: ListView(children: [
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title_section,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                  margin: const EdgeInsets.only(bottom: 8),
                  height: size.height / 30,
                  width: size.width / 2,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey,
                    )
                  ),
                Container(
                  margin: const EdgeInsets.only(bottom: 55),
                  height: size.height / 40,
                  width: size.width / 4,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey,
                    )
                  ),
              ],
            )
            
          ],
        ),
        
         SafeArea(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                children: <Widget>[
                  category(Colors.grey),
                  category(Colors.grey),
                  category(Colors.grey),
                  category(Colors.grey)
                ]
                )
              )
         ),
         
         Center(
           child: Column(
             children: [
               Container(
                  margin: const EdgeInsets.only(top: 45, bottom: 10),
                  height: size.height / 40,
                  width: size.width / 4,
                  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.grey,
                    )
                  ),
               news_feed,
               news_feed,
             ],)
         )
          ]
            )
          ]
          )
      )
    );
  }
}