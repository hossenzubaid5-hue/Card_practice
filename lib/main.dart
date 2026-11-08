import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: card());
  }
}

class card extends StatefulWidget {
  const card({super.key});

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                          'https://media.istockphoto.com/id/2157073181/photo/smiling-woman-with-hands-on-face-in-bathroom.jpg?s=612x612&w=0&k=20&c=PloVUL3aiCzj1AJsFf9Q8yk4jnWkokGZXV4XJDsYMs8=',
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            'Jelen Melgar',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Graphics Designer',
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(height: 10),
                          Text('Followers 1.2k'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Card(
                clipBehavior: Clip.antiAlias,
                child: Column(
                  children: [
                    Image.network(
                      'https://picsum.photos/300/150',
                      fit: BoxFit.cover,
                      height: 150,
                      width: double.infinity,
                    ),
                    ListTile(
                      title: Text('Card Title'),
                      subtitle: Text('Description text here'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),

              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(Icons.person),
                          ),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Jonh Doe',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '2 hours ago',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      Text('Card content goes here.....'),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Card(
                    margin: EdgeInsets.all(20),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Column(
                      children: [
                        Image.network(
                          'https://uploads.evaly.com.bd/listings/607d347c99fb6cbd6c31749fa38ca3fc.webp',
                          width: double.infinity,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                        ListTile(
                          title: Text(
                            'SHOES',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text('\$399'),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[100],
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 10,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            elevation: 5,
                          ),
                          child: Text('Buy Now'),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),

                  Card(
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Column(
                        children: [
                          Image.network(
                            'https://daily.jstor.org/wp-content/uploads/2017/12/traffic_jam_1050x700.jpg',
                            fit: BoxFit.cover,
                            height: 100,
                            width: double.infinity,
                          ),
                          SizedBox(height: 5),
                          Text(
                            'BREAKING: GLOBAL CLIMATE SUMMIT BEGAINS IN PERIS',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 2),
                          Text(
                            'World Leaders Gather To Discuss Urgent Environmental Policies And New Emission Targets.',
                            maxLines: 2,
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Card(
                    elevation: 5,
                    shadowColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.location_on),
                                  Text('Dhaka,BD'),
                                ],
                              ),
                              Row(
                                children: [
                                  Text('10.32 AM'),
                                  Text('Oct 9,2025'),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            '26* C',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('Feels Like 26*'),
                          ),
                          Row(
                            children: [
                              Card(
                                color: Colors.grey[100],
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 25,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(Icons.water_drop_outlined),
                                      Column(
                                        children: [
                                          Text('Humidity'),
                                          Text('94%'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Card(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(Icons.speed),
                                      Column(
                                        children: [
                                          Text('Pressure'),
                                          Text('1012 hPa'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    elevation: 5,
                    shadowColor: Colors.red[100],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      child: Text('Card Number 1'),
                    ),
                  ),
                  SizedBox(height: 15,),
                    Card(
                    elevation: 5,
                    shadowColor: Colors.red[100],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      child: Text('Card Number 2'),
                    ),
                  ),
                  SizedBox(height: 15,),
                    Card(
                    elevation: 5,
                    shadowColor: Colors.red[100],
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                      child: Text('Card Number 3'),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
