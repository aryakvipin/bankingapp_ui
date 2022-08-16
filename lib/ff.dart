import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'My Flutter Pad'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

const kExpandedHeight = 300.0;

class _MyHomePageState extends State<MyHomePage> {
  List<int> top = <int>[];



  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      //1
      body:CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            expandedHeight: 80,
            centerTitle: false,
            leading: Icon(Icons.menu),
            title: Padding(
              padding: EdgeInsets.only(   top:40),
              child: Center(child: Text('Type Your Location')),

            ),
            actions: [
              IconButton(
                icon: FaIcon(FontAwesomeIcons.heart),
                onPressed: () {},
              ),
            ],

          ),
          SliverFixedExtentList(
            itemExtent: 200.0,

            delegate: SliverChildListDelegate(
              [
                Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[

                      //Container
                      Positioned(



                        child: Container(

                          width: 500,
                          height: 80,

                          color: Colors.red,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[

                            ],
                          ),
                        ),
                      ), //Container
                      //Container
                      Positioned(

                        top: 30,
                        child: Container(
                          width: 480,
                          height: 130,

                          child: Card(color: Colors.white,
                            child: Stack(


                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(top:5,left: 5),
                                  child: Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                          image: AssetImage('images/child.jpg'),fit: BoxFit.fill,)
                                    ),
                                  ),

                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:30,left: 120),
                                  child: Container(

                                    child: Column(
                                      children: [
                                        Text('SAMMUNATI BACHAT KHATA',style:  TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.bold)),
                                      ],
                                    ),

                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:50,left: 120),
                                  child: Container(

                                    child: Column(
                                      children: [
                                        Text('NPR. 100999.35',style: TextStyle(color:Colors.red,fontSize: 15,fontWeight: FontWeight.bold),),
                                      ],
                                    ),

                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:46,left: 240),
                                  child: Container(

                                    child: Column(
                                      children: [
                                        Icon(Icons.remove_red_eye,color:Colors.tealAccent[400],size: 20,)
                                      ],
                                    ),

                                  ),

                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:70,left: 120),
                                  child: Container(

                                    child: Column(
                                      children: [
                                        Text('281645649463234587451',style: TextStyle(color:Colors.black,fontSize: 12,fontWeight: FontWeight.bold),),
                                      ],
                                    ),

                                  ),

                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      //Container
                    ], //<Widget>[]
                  ),),
                Container(
                  child: Stack(
                    alignment: Alignment.topLeft,
                    children: <Widget>[
                      Positioned(

                        child: Container(


                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment:MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(Icons.ac_unit,color: Colors.redAccent,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Text('WOULD YOU LIKE TO ?',style: TextStyle(color:Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        right: 40,
                        top: 50,
                        child: Container(
                          width: 120,
                          height: 120,
                          // color: Colors.orange,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.restaurant), // icon
                                Text("Resturent"), // text
                              ],
                            ),
                          ),
                        ),
                      ), //Container
                      Positioned(

                        left: 190,
                        top: 50,
                        child: Container(
                          height: 120,
                          width: 120,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.restaurant), // icon
                                Text("Resturent"), // text
                              ],
                            ),
                          ),
                        ),
                      ), //Container
                      Positioned(
                        left: 40,
                        top: 50,
                        child: Container(
                          height: 120,
                          width: 120,
                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.restaurant), // icon
                                Text("Resturent"), // text
                              ],
                            ),
                          ),
                        ),
                      ), //Container

                    ], //<Widget>[]
                  ),),
                Container(
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[

                      Positioned(
                        right: 40,

                        child: Container(
                          width: 120,
                          height: 120,

                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.hotel), // icon
                                Text("Hotel"), // text
                              ],
                            ),
                          ),
                        ),
                      ), //Container
                      Positioned(

                        left: 190,

                        child: Container(
                          width: 120,
                          height: 120,

                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.hotel), // icon
                                Text("Hotel"), // text
                              ],
                            ),
                          ),
                        ),
                      ), //Container
                      Positioned(
                        left: 40,

                        child: Container(
                          height: 120,
                          width: 120,

                          child: Card(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.hotel), // icon
                                Text("Hotel"), // text
                              ],
                            ),
                          ),
                        ),
                      ), //Container

                      //Container
                    ], //<Widget>[]
                  ),),

              ],
            ),

          ),
          SliverList
            (
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                return Container(
                  margin: new EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 30.0,
                  height: 80.0,
                  child: Card(

                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          color: Colors.amber,
                          width: 10,
                        ),
                        SizedBox(
                          child: Expanded(

                            child: Container(
                              height: 100.0,
                              alignment: Alignment.center,


                              child: Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Text("Menu Item $index"),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              childCount: 9,
            ),
          ),
        ],
      ),
    );
  }

}