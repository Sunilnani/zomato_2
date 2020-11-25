import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 25,),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Container(
                        child: Text("Your Profile",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0),
                      child: Container(
                        child: Text("Log in or sign up to view your complete profile.",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w300,fontSize: 16),),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  height: 45,
                    width: 340,
                    child: Padding(
                      padding: const EdgeInsets.only(left:8.0),
                      child: RaisedButton(onPressed: (){},color: Colors.white,textColor: Colors.redAccent,shape:RoundedRectangleBorder(side: BorderSide(color: Colors.red, width: 1),borderRadius: BorderRadius.all(Radius.circular(10.0))),
                        child: Text('Continue',style: TextStyle(
                            fontSize:18.0
                        ),),
                      ),
                    )),
                SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Image.asset("img/icon1.png",height: 20,),
                        ),
                        SizedBox(height: 5,),
                        Text("Bookmarks",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.notifications_outlined),
                        SizedBox(height: 5,),
                        Text("Notifications",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.settings),
                        SizedBox(height: 5,),
                        Text("Settings",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.payment),
                        SizedBox(height: 5,),
                        Text("Payments",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w300),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: 25,),
                Container(
                  alignment: Alignment.topLeft,
                    child: Text("   F O O D  O R D E R S ",style: TextStyle(color: Colors.black54,fontSize: 13,fontWeight: FontWeight.w400),)
                ),
                SizedBox(height: 25,),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Icon(Icons.laptop_chromebook_outlined),
                          SizedBox(width: 20,),
                          Text("Your Orders")
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Icon(Icons.favorite_border_outlined),
                          SizedBox(width: 20,),
                          Text("Your Orders")
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Icon(Icons.menu_book),
                          SizedBox(width: 20,),
                          Text("Address Book")
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Icon(Icons.my_library_books_outlined),
                          SizedBox(width: 20,),
                          Text("Online Ordering Help")
                        ],
                      ),
                      SizedBox(height: 25,),
                      Row(
                        children: [
                          SizedBox(width: 15,),
                          Icon(Icons.info_outline),
                          SizedBox(width: 20,),
                          Text("About")
                        ],
                      ),
                      SizedBox(height: 30,),
                      Container(
                        alignment: Alignment.topLeft,
                          child: Text("   Send Feedback",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                      ),
                      SizedBox(height: 20,),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text("   Rate Us on the Play Store",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w400),)
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon:Icon(Icons.shopping_bag_outlined),
                title: Text('Orders'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.location_history_outlined),
                title: Text('History'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.ondemand_video_sharp),
                title: Text('Videos'),
                backgroundColor: Colors.black12
            ),
            BottomNavigationBarItem(
                icon:Icon(Icons.person),
                title: Text('Profile'),
                backgroundColor: Colors.black12
            ),
          ],
          onTap: (index){
            setState((){
              _currentIndex = index;     
            }
            );
          },
        ),
      ),
    );
  }
}
