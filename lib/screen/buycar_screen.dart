import 'package:flutter/material.dart';
import 'package:task1/screen/car_detail_screen.dart';

class buyCarScreen extends StatefulWidget {
  const buyCarScreen({Key? key}) : super(key: key);

  @override
  State<buyCarScreen> createState() => _buyCarScreenState();
}

class _buyCarScreenState extends State<buyCarScreen> {
  List logo = [
    'carlogo/1.png',
    'carlogo/2.png',
    'carlogo/3.png',
    'carlogo/4.png',
    'carlogo/5.png',
    'carlogo/1.png',
    'carlogo/2.png',
    'carlogo/3.png',
    'carlogo/4.png',
    'carlogo/5.png',
    'carlogo/1.png',
    'carlogo/2.png',
    'carlogo/3.png',
    'carlogo/4.png',
    'carlogo/5.png',
  ];
  List car = [
    'cars/1.png',
    'cars/2.png',
    'cars/3.png',
    'cars/4.png',
    'cars/5.png',
    'cars/6.png',
    'cars/7.png',
    'cars/8.png',
    'cars/1.png',
    'cars/1.png',
    'cars/2.png',
    'cars/3.png',
    'cars/4.png',
    'cars/5.png',
    'cars/6.png',
    'cars/7.png',
    'cars/8.png',
    'cars/1.png',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset('images/logo.png'),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 10, top: 8, bottom: 8, right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height * .060,
                      width: MediaQuery.of(context).size.width * .55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage('images/Search.png'),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Search Car...',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          backgroundColor: Colors.transparent,
                          context: context,
                          isScrollControlled: true,
                          builder: (context) {
                            return Container(
                              height: MediaQuery.of(context).size.height * .8,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(35),
                                      topRight: Radius.circular(35))),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        child: Text(
                                          "Filters",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 20),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: const [
                                            Text(
                                              "Clear",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Apply",
                                              style: TextStyle(
                                                color: Colors.orange,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .099,
                                    child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: logo.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  .05,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .18,
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(15),
                                                  color: Colors.grey[200]),
                                              child: Center(
                                                child: Image.asset(logo[index]),
                                              ),
                                            ),
                                          );
                                        }),
                                  ),
                                  Expanded(
                                      child: GridView.builder(
                                          gridDelegate:
                                              const SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount:
                                                2, // number of columns in the grid
                                            crossAxisSpacing:
                                                10, // spacing between columns
                                            mainAxisSpacing: 10,
                                            childAspectRatio: 1.35,
                                            // spacing between rows
                                          ),
                                          itemCount: car.length,
                                          itemBuilder: (context, index) {
                                            return SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    .5,
                                                // color: Colors.red,
                                                child: Stack(
                                                  children: [
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .06,
                                                        ),
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors
                                                                  .grey[200],
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .1,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              .25,
                                                          // width: 190,
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .height *
                                                                    .065,
                                                              ),
                                                             const  Text(
                                                                'Suzuki SX4',
                                                                style:
                                                                    TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w300,
                                                                  fontSize:
                                                                      16,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Positioned(
                                                        top: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .height *
                                                            .025,
                                                        // bottom:MediaQuery.of(context).size.height*.1,
                                                        left: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            .1,
                                                        // right:MediaQuery.of(context).size.width*.2,
                                                        child:
                                                            Transform.scale(
                                                          scale: 1.5,
                                                          child: Image.asset(
                                                            car[index],
                                                          ),
                                                        )),
                                                  ],
                                                ));
                                          })),
                                ],
                              ),
                            );
                          });
                    },
                    child: Stack(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * .07,
                          width: MediaQuery.of(context).size.width * .35,
                          decoration: BoxDecoration(
                              color: Colors.grey[100],
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(25),
                                  topLeft: Radius.circular(25))),
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 65,
                              ),
                              Center(
                                  child: Text(
                                'Select Car',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                              )),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 10,
                          right: 73,
                          child: Image.asset(
                            'cars/8.png',
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .01,
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  "Top Car Near you",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 3,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                              width: MediaQuery.of(context).size.width * .4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    '2018 | Alto | Petrol',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text("₹ 3,27,000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: Text('Loan Amount:',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    child: Text('₹ 3,00,000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const cardetailScreen()));
                              },
                              child: Hero(
                                tag: const Key('1'),
                                child: Container(
                                  height: MediaQuery.of(context).size.height * .2,
                                  width: MediaQuery.of(context).size.width * .4,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Image(
                                    image: AssetImage('images/main.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height * .17,
                          right: MediaQuery.of(context).size.width * .001,
                          bottom: MediaQuery.of(context).size.height * .01,
                          child: Container(
                              height: MediaQuery.of(context).size.height * .35,
                              width: MediaQuery.of(context).size.width * .2,
                              decoration: BoxDecoration(
                                  color: Colors.pink[100],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children:const  [
                                    Icon(Icons.location_on),
                                    Text(" Rajkot")
                                  ],
                                ),
                              )))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 3,
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 12, vertical: 4),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height * .2,
                              width: MediaQuery.of(context).size.width * .4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  const Text(
                                    '2018 | Alto | Petrol',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text("₹ 3,27,000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        .01,
                                  ),
                                  const Padding(
                                    padding:  EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Text('Loan Amount:',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 4),
                                    child: Text('₹ 3,00,000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w400)),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const cardetailScreen()));
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height * .2,
                                width: MediaQuery.of(context).size.width * .4,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Hero(
                                  tag: Key('2'),
                                  child: Image(
                                    image: AssetImage('images/main.png'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          top: MediaQuery.of(context).size.height * .17,
                          right: MediaQuery.of(context).size.width * .001,
                          bottom: MediaQuery.of(context).size.height * .01,
                          child: Container(
                              height: MediaQuery.of(context).size.height * .35,
                              width: MediaQuery.of(context).size.width * .2,
                              decoration: BoxDecoration(
                                  color: Colors.pink[100],
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(15),
                                    bottomLeft: Radius.circular(15),
                                  )),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Row(
                                  children: const [
                                    Icon(Icons.location_on),
                                    Text(" Rajkot")
                                  ],
                                ),
                              )))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding:
              const EdgeInsets.only(bottom: 35, top: 8, right: 12, left: 12),
          child: Container(
            height: MediaQuery.of(context).size.height * .070,
            // width: MediaQuery.of(context).size.width * .55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const  [
                      Icon(Icons.home_filled, color: Colors.deepOrange),
                      Text(
                        'Buy Car',
                        style: TextStyle(color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children:const  [
                      Icon(Icons.add, color: Colors.deepOrange),
                      Text(
                        'Sell Car',
                        style: TextStyle(color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.bookmark_border_outlined,
                        color: Colors.deepOrange,
                      ),
                      Text(
                        'Get Loan',
                        style: TextStyle(color: Colors.deepOrange),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: const [
                      Icon(Icons.add, color: Colors.deepOrange),
                      Text(
                        'Get Insurance',
                        style: TextStyle(color: Colors.deepOrange),
                      )
                    ],
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
