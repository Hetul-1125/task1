import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class cardetailScreen extends StatefulWidget {
  const cardetailScreen({Key? key}) : super(key: key);

  @override
  State<cardetailScreen> createState() => _cardetailScreenState();
}

class _cardetailScreenState extends State<cardetailScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Image.asset(
                        'images/nav.png',
                        height: 50,
                        width: 50,
                      ),
                    ),
                    const Text(
                      'Car Detail',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: height * .035,
                          width: width * .2,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              children: const [
                                Icon(Icons.location_on),
                                Text(" Rajkot")
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: height * .55,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: height * .13,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * .38,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(3, 3),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: height * .1,
                                  ),
                                  const Text(
                                    '2018 | Alto | Petrol',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(4.0),
                                    child: Text("₹ 3,27,000",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500)),
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: height * .06,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          border:
                                              Border.all(color: Colors.grey)),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: const [
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text('Loan Amount:'),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text("₹ 3,27,000",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: height * .01,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: height * .08,
                                      width: double.infinity,
                                      decoration: BoxDecoration(


                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              height: height * .06,
                                              width: width * .4,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                border: Border.all(
                                                  color: Colors.green,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  "Call Now",
                                                  style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: height * .06,
                                              width: width * .4,
                                              decoration: BoxDecoration(
                                                color: Colors.green,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.5),
                                                    spreadRadius: 1,
                                                    blurRadius: 5,
                                                    offset: const Offset(3, 3),
                                                  ),
                                                ],
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  "Whatsapp",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 18),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Positioned(
                          top: height * .025,
                          left: width * .115,
                          child: Hero(
                            tag: const Key('1'),
                              child: Image.asset('images/main.png'))),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Company',
                          info: 'Suzuki',
                        )),
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Car Model',
                          info: '2018',
                        )),
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Fuel Type',
                          info: 'Petrol',
                        )),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Manufacturing Year',
                          info: '12/2020',
                        )),
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Number of Keys',
                          info: '2',
                        )),
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'KM Driven',
                          info: '2500000',
                        )),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Company',
                          info: 'Suzuki',
                        )),
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Company',
                          info: 'Suzuki',
                        )),
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Company',
                          info: 'Suzuki',
                        )),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                            child: carinfoContaine(
                          height: height,
                          width: width,
                          templet: 'Company',
                          info: 'Suzuki',
                        )),
                        Expanded(
                            flex: 2,
                            child: carinfoContaine(
                              height: height,
                              width: width,
                              templet: 'Decscription here if Availabel.......',
                            )),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 12, right: 12, bottom: 50, top: 20),
                child: Container(
                  height: height * .1,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                                height: height * .06,
                                width: width * .25,
                                child: const Text(
                                  "Brokerage 1% only",
                                  style: TextStyle(fontSize: 16),
                                )),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.grey,
                                width: 3,
                                height: height * .06,
                              ),
                            ),
                            SizedBox(
                                height: height * .06,
                                width: width * .25,
                                child: const Text(
                                  "Term & Condition",
                                  style: TextStyle(fontSize: 16),
                                )),
                          ],
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: height * .06,
                              width: width * .2,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.orange,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Center(
                                child: Text(
                                  "See",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class carinfoContaine extends StatelessWidget {
  const carinfoContaine({
    super.key,
    required this.height,
    required this.width,
    this.info,
    required this.templet,
  });

  final double height;
  final double width;
  final String templet;
  final String? info;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DottedBorder(
        color: Colors.grey.withOpacity(.5),
        strokeWidth: 3,
        dashPattern: const [10, 6],
        radius: const Radius.circular(15),
        borderType: BorderType.RRect,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
          ),
          height: height * .12,
          width: width * .3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                  child: Text(
                    templet,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center,
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                child: info != null
                    ? Text(
                        info!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      )
                    : Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
