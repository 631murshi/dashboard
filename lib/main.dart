import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
//ldf varum ellam sheriyavum
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
//nokki irunno ippo kittum
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [

          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: EdgeInsets.only(bottom: 25),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundImage: NetworkImage('https://www.unilad.co.uk/wp-content/uploads/2018/06/ronaldogoatee.jpg'),
                        ),
                        SizedBox(width: 16,),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Cristiano Ronaldo",style: TextStyle(
                              fontSize: 20,color: Colors.black
                            ),),
                            Text("628292",style: TextStyle(
                              fontSize: 18,color: Colors.black
                            ),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10,
                        primary: false,
                        children: [
                          Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                    'https://pluspng.com/img-png/png-user-icon-icons-logos-emojis-users-2400.png',height: 128,),
                             Text("player profile")
                              ],
                            ),

                          ),
                          Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://pluspng.com/img-png/png-user-icon-icons-logos-emojis-users-2400.png',height: 128,),
                                Text("personal life")
                              ],
                            ),

                          ),
                          Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://pluspng.com/img-png/png-user-icon-icons-logos-emojis-users-2400.png',height: 128,),
                                Text("career")
                              ],
                            ),

                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.network(
                                  'https://pluspng.com/img-png/png-user-icon-icons-logos-emojis-users-2400.png',height: 128,),
                                Text("Honours")
                              ],
                            ),

                          )
                        ],
                        crossAxisCount: 2),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
