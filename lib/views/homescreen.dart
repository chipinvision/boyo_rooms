import 'package:boyo_rooms/views/hotelview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> citiesimg = [
    'https://images.unsplash.com/photo-1513107358949-b21c1c3906eb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fG5ldyUyMHlvcmslMjBjaXR5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
    'https://images.unsplash.com/photo-1601224335112-b74158e231ec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmFuZ2tva3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1533929736458-ca588d08c8be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bG9uZG9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1536098561742-ca998e48cbcc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8dG9reW98ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    'https://images.unsplash.com/photo-1575864716793-49a09717eb03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8amFrYXJ0YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  ];

  List<String> citiesname = [
    'New York',
    'London',
    'Tokyo',
    'Jakarta',
    'Bangkok',
  ];

  List<String> topimg = [
    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/213805317.jpg?k=1d31525a3a565f11ed6f43394f9a131cee10734a150719956900b2c5fd8e2b0e&o=&hp=1',
    'https://cf.bstatic.com/xdata/images/hotel/max1024x768/333867190.jpg?k=873ba669f44ba5c8f8614c05c370253bfedd2d6e45d4750b61a4033a29d5fe28&o=&hp=1',
  ];

  List<String> topname = [
    'Five Jumeirah Village',
    'Hotel Villa Honegg',
  ];

  List<String> location = [
    'Dubai',
    'Switzerland',
  ];

  List<String> price = [
    '\$ 240',
    '\$ 140',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const TopBar(),
          const SearchBar(),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Explore City',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                        onPressed: (){},
                        child: const Text(
                          'View All',
                          style: TextStyle(
                            color: Color(0xffFCBCB8),
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                    ),
                  ],
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: citiesimg.length,
                      itemBuilder: (BuildContext context, int index){
                        return SizedBox(
                          width: 100,
                          height: 160,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 100,
                                height: 120,
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      radius: 60,
                                      backgroundImage: NetworkImage(citiesimg[index]),
                                    ),
                                  ],
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    citiesname[index],
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(width: 10,);
                      },
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Top Picks',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left: 25.0, right: 25.0, bottom: 5.0),
                padding: const EdgeInsets.only(left: 20.0, bottom: 5.0),
                child: Container(
                  height: 350,
                  width: double.infinity,
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: topimg.length,
                    itemBuilder: (BuildContext context, int index){
                      return SizedBox(
                        width: 310,
                        height: 370,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 350,
                                  width: 300,
                                  margin: const EdgeInsets.only(left:5,),
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder:(context) => const HotelView()
                                            ),
                                          );
                                        },
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                          child: Image.network(
                                            topimg[index],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  topname[index],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                IconButton(
                                                  onPressed: (){},
                                                  icon: const Icon(
                                                      Icons.favorite_border_rounded,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 5.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                const Icon(
                                                  Icons.location_on,
                                                  color: Colors.red,
                                                ),
                                                Text(
                                                  location[index],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize: 22,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 12.0, right: 8.0, top: 5.0,bottom: 5.0),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  price[index],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 22,
                                                    color: Color(0xffFCBCB8),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(width: 1,);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10.0),
      child: CupertinoSearchTextField(
        placeholder: 'Where are you going?',
        placeholderStyle: const TextStyle(
          color: Colors.black,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.black,
        ),
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  const TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Find the best deal\nfor your room",
            style: TextStyle(
                color: Colors.black, fontSize: 26, fontWeight: FontWeight.w500),
          ),
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.25)),
            ]),
            child: const CircleAvatar(
              radius: 25,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.hotel,
                size: 25,
                color: Color(0xffFCBCB8),
              ),
            ),
          ),
        ],
      ),
    );
  }
}