import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_panda/search_screen.dart';
import 'package:food_panda/widget/app_bar.dart';
import 'package:food_panda/widget/my_drawer.dart';

import 'widget/restaurant_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.pink,
      )
    );
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent.shade700),
        useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey.shade200,
        appBarTheme: const AppBarTheme(
          iconTheme: IconThemeData(color: Colors.pink)
        ),
          textTheme: Theme.of(context).textTheme.apply(
            fontFamily: 'Poppins')
      ),
      darkTheme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey.shade400,
          textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Poppins')
      ),
      home: MyHomePage(title: 'Flutter Demo Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState>_key = GlobalKey();

  var cardStyle = BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(15)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: Myappbar(key: _key,),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: false,
            floating: true,
            snap: true,
            expandedHeight: 60,
            flexibleSpace: FlexibleSpaceBar(
              // title: Text('Flexible Space Bar'),
              background: Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                  top: 5,
                  bottom: 5,
                ),
                color: Colors.pink,
                child: InkWell(
                  onTap: (){
                    Navigator.push(context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen())
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: const Row(
                      children: [
                        SizedBox(width: 10,),
                        Icon(Icons.search),
                        SizedBox(width: 10,),
                        Text('Search for shop & restaurant')
                      ],
                    ),

                  ),
                ),
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: double.infinity,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10,left: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Food delivery',
                          style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 25),
                          ),
                          Text('Order food you love'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        verticalDirection: VerticalDirection.up,
                        children: [
                          SizedBox(
                              width: 120,
                              height: 120,
                              child: Image.asset('assets/image/burger.png')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                  // flex:1,
                  child: Container(
                    margin: const EdgeInsets.only(left: 15,right: 7.5),
                    height: 300,
                    decoration: cardStyle,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shops',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25),),
                              Text('Groceries and more'),
                            ],
                          ),
                        ),

                        Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 120,
                            height: 80,
                            child: Column(
                              verticalDirection: VerticalDirection.up,
                              children: [
                                Image.asset('assets/image/chicken.png'),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  // flex: 1,
                  child: Container(
                    height: 300,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 4,
                          child: Container(
                            margin: const EdgeInsets.only(left: 7.5,right: 15),
                            decoration: cardStyle,
                            width: double.infinity,
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Pick-up',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),),
                                  const Text('Up to 50% off'),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: SizedBox(
                                      height: 120,
                                      width: 60,
                                      child: Column(
                                        verticalDirection: VerticalDirection.up,
                                        children: [
                                          Image.asset('assets/image/burger.png')
                                        ],
                                      ),
                                    ),
                                  )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: const EdgeInsets.only(left: 7.5,right: 15,top: 10),
                            decoration: cardStyle,
                            width: double.infinity,
                            child: const Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('pandasend',style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),),
                                  Text('Express'),
                                  Expanded(child: Text('Delivery')),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(left: 15,top: 15),
              child: const Text('Recommended for you',style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 20
              ),),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 350,
              margin: const EdgeInsets.only(left: 15,top: 15,right: 15),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index){
                    return const RestaurantCard();
                  }
              ),
            )
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(left: 15,right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Become a Pro',
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      Text('get exclusive deal'),
                    ],
                  ),
                  Column(
                    children: [
                      Transform.rotate(
                        angle: -0.2,
                        child: Image.network('https://malaysiafreebies.com/wp-content/uploads/2022/01/image001-767x483.png',
                        height: 120,width: 100,),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(left: 15,right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color: Colors.black12),),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Try Panda Rewards',
                      style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                      Text('Earn points and win prizes'),
                    ],
                  ),
                  Column(
                    children: [
                      Image.asset('assets/image/foodpandareward.jpg',height: 120,width: 120,),
                    ],
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.only(left: 15,right: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(width: 1,color: Colors.black12),
              ),
              child: const Row(
                children: [
                  SizedBox(height: 100,),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Earn a 3\$ voucher',
                      style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                      Text('When you refer a friend',
                        style: TextStyle(
                          color: Colors.white,),),
                    ],
                  ),

                ],
              ),
            ),
          )
          // SliverList(
          //     delegate: SliverChildBuilderDelegate(
          //         (context , index) => ListTile(
          //           tileColor: (index % 2 == 0) ? Colors.greenAccent : Colors.blue,
          //           title: Text('Index $index ',
          //           style: const TextStyle(fontWeight: FontWeight.bold),
          //           ),
          //         ),
          //       childCount: 30
          //
          // )
          // )
        ],
      ),
      drawer: MyDrawer(),
      // floatingActionButton: FloatingActionButton(
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}




