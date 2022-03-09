import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Filter.dart';
import 'ac_filter.dart';

class Filter extends StatefulWidget {
  const Filter({Key? key}) : super(key: key);

  @override
  _FilterState createState() => _FilterState();
}

List<String> iconList = [
  'filter.png',
  'filter.png',
  'filter.png',
  'filter.png',
  'filter.png',
  'filter.png',
  'filter.png',
];
List<String> textList = [
  "AC TYpe-1",
  "CCS-1",
  "CCS-2",
  "GB/T",
  "Tesla Charger",
  "CHAdeMO",
  "AC Plug Point",
];



class _FilterState extends State<Filter> {
  List<selected> Amenities = List.empty(growable: true);
  List<selected1> OtherConnectors = List.empty(growable: true);
  List<selected2> Connectors1 = List.empty(growable: true);
  static late double width;
  static late double height;
  int value = 0;
  bool isSelected = false;
  bool _collapse = false;
  bool isSwitched = false;
  bool isCheck = false;
  bool changeColor = false;
  bool changeColor1 = false;
  bool changeColor2 = false;
  bool changeColor3 = false;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  var location;


  @override
  void initState() {
   for(int i =0 ; i <textList.length ; i++){
     Amenities.add(selected(false));
   }
   for(int i =0 ; i <textList.length ; i++){
     OtherConnectors.add(selected1(false));
   }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Text('Filter'),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.close))
        ],
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                    height: 5.5.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        'Clear',
                        style: TextStyle(fontSize: 13.sp, color: Colors.black),
                      ),
                    )),
              ),
            ),
            SizedBox(width: 12.h),
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                  height: 5.5.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      'Apply',
                      style: TextStyle(fontSize: 13.sp, color: Colors.white),
                    ),
                  )),
            ),
          ],
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(4.h))),
          child: SingleChildScrollView(
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chargers',
                        textAlign: TextAlign.start,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 1.h),
                      Container(
                        width: 90.w,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.3.w,
                                color: Colors.grey.withOpacity(0.4))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomRadioButton("ALL", 1),
                            CustomRadioButton("AC", 2),
                            CustomRadioButton("DC", 3),
                          ],
                        ),
                      ),
                    ],
                  )),
              Divider(
                thickness: 0.01.h,
                color: Colors.black,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: EdgeInsets.only(left: 5.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap : (){


                },
                        child: Text(
                          'Connectors',
                          style: TextStyle(fontWeight: FontWeight.bold,color:/* _collapse==false? Colors.red:*/Colors.black),
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text('My Connectors'),
                      SizedBox(height: 3.h),
                      Row(
                        children: [
                          Container(
                            width: 40.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              border:
                                  Border.all(width: 0.25.h, color: Colors.grey),
                            ),
                            child: Column(children: [
                              Container(
                                  height: 3.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(1.h)),
                                    border: Border.all(
                                        width: 0.25.h, color: Colors.grey),
                                    color: Colors.grey,
                                  ),
                                  child:
                                      Center(child: Text('Tata Motors E-Tigor'))),
                              SizedBox(height: 5.w),
                              /*Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  icons("Bharat AC001", "images/filter.png",0 ),
                                  SizedBox(width: 3.h),
                                  icons("Bharat DC001 GB/T", "images/filter.png",0),
                                ],
                              )*/
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap : () {
                                      setState(() {
                                        changeColor == false ? changeColor= true : changeColor = false;

                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 5.h,
                                            width: 11.w,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.h),
                                              color: changeColor==true
                                          ? Colors.green
                                          : Colors.grey,
                                              image: DecorationImage(
                                                image: AssetImage("images/charger.png"),
                                              ),
                                            )),
                                        Container(
                                          height: 5.h,
                                          width: 12.w,
                                          child: Center(
                                            child: Text(
                                              "Bharat AC001",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 5.w),
                                  InkWell(
                                    onTap : () {
                                      setState(() {
                                        changeColor1 == false ? changeColor1= true : changeColor1 = false;

                                      });
                                    },
                                    child: Column(
                                      children: [
                                        Container(
                                            height: 5.h,
                                            width: 11.w,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.h),
                                              color: changeColor1==true
                                                  ? Colors.green
                                                  : Colors.grey,

                                              image: DecorationImage(
                                                image: AssetImage("images/charger.png"),
                                              ),
                                            )),
                                        Container(
                                          height: 5.h,
                                          width: 12.w,
                                          child: Center(
                                            child: Text(
                                              "Bharat DC001 GB/T",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                          SizedBox(width: 2.h),
                          Container(
                            width: 40.w,
                            height: 18.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2.h),
                              border:
                                  Border.all(width: 0.25.h, color: Colors.grey),
                            ),
                            child: Column(children: [
                              Container(
                                  height: 3.h,
                                  width: 40.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(1.h)),
                                    border: Border.all(
                                        width: 0.25.h, color: Colors.grey),
                                    color: Colors.grey,
                                  ),
                                  child:
                                      Center(child: Text('Tata Motors E-Tigor'))),
                              SizedBox(height: 3.h),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                              InkWell(
                                onTap : () {
                                  setState(() {
                                  changeColor2 == false ? changeColor2= true : changeColor2 = false;
                                  });
                                },
                                child: Column(
                                children: [
                                Container(
                                height: 5.h,
                                    width: 11.w,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5.h),

                                      color:changeColor2==false
                                          ? Colors.green
                                          : Colors.grey,
                                      image: DecorationImage(
                                        image: AssetImage("images/charger.png"),
                                      ),
                                    )),
                                Container(
                                  height: 5.h,
                                  width: 12.w,
                                  child: Center(
                                    child: Text(
                                      "   AC Type-2",
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                )
                            ],
                            ),
                              ),

                                  SizedBox(width: 5.w),
                                  InkWell(
                                    onTap : () {
                                      setState(() {
                                        changeColor3 == false ? changeColor3 = true : changeColor3 = false;
                                      });
                                    },

                                    child: Column(
                                      children: [
                                        Container(
                                            height: 5.h,
                                            width: 11.w,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5.h),
                                              color: changeColor3==false
                                          ? Colors.green
                                          : Colors.grey,
                                              image: DecorationImage(
                                                image: AssetImage("images/charger.png"),
                                              ),
                                            )),
                                        Container(
                                          height: 5.h,
                                          width: 12.w,
                                          child: Center(
                                            child: Text(
                                              "Bharat DC001 GB/T",
                                              style: TextStyle(
                                                color: Colors.black,
                                              ),
                                              maxLines: 2,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(height: 3.h),
                      Text('Other Connectors'),
                      SizedBox(height: 2.h),
                      Container(
                        height: 28.h,
                        width: MediaQuery.of(context).size.width,
                        child: GridView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            mainAxisSpacing: 1.w,
                          ),
                          itemCount: textList.length,
                          itemBuilder: (BuildContext context, int index) {

                            return InkWell(onTap: (){
                              setState(() {
                                OtherConnectors[index].chaked1 = !OtherConnectors[index].chaked1;
                              });
                            },
                                child: icons1(textList[index], iconList[index],index));
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 0.01.h,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discounts Available',
                          textAlign: TextAlign.start,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 0.9.h),
                      Text('No discounts available'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 3.h),
              Divider(
                thickness: 0.01.h,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Only available chargers',
                    ),
                    Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                          print(isSwitched);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.white,
                    ),
                  ],
                )),
              ),
              Divider(
                thickness: 0.01.h,
                color: Colors.black,
              ),
              Padding(
                padding: EdgeInsets.only(left: 5.w),
                child: Container(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Only free chargers'),
                    Switch(
                      value: isCheck,
                      onChanged: (value) {
                        setState(() {
                          isCheck = value;
                          print(isCheck);
                        });
                      },
                      activeTrackColor: Colors.lightGreenAccent,
                      activeColor: Colors.white,
                    ),
                  ],
                )),
              ),
              Divider(
                thickness: 0.01.h,
                color: Colors.black,
              ),
              Container(
                height: 50.h,
                width: 100.w,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () => setState(() {
                        _collapse = !_collapse;
                      }),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Row(
                          children: [
                            Expanded(
                                child: Text(
                                  'Amenities',
                                  style: TextStyle(fontSize: 18),
                                )),
                            Icon(_collapse
                                ? Icons.keyboard_arrow_up
                                : Icons.keyboard_arrow_down),
                          ],
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: Duration(milliseconds: 100),
                      width: 100.w,
                      height: _collapse ? 40.h : 0,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 4.w,
                        ),
                        itemCount: textList.length,
                        itemBuilder: (BuildContext context, int i) {
                          return InkWell(
                              onTap: () {
                                setState(() {


                                 Amenities[i].chaked = !Amenities[i].chaked;
                                });
                              },
                              child: icons(textList[i], iconList[i],i));
                        },
                      ),
                    ),
                  ],
                )




                // ListView.builder(
                //   physics: NeverScrollableScrollPhysics(),
                //   itemCount: 1,
                //   itemBuilder: (context, index) => GridMenu(),
                // ),
              ),
              // GestureDetector(
              //   onTap: () => setState(() {
              //     _collapse = !_collapse;
              //   }),
              //   child: Padding(
              //     padding: EdgeInsets.only(left: 5.w),
              //     child: Container(
              //         child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //             children: [
              //           Expanded(child: Text('Amenities')),
              //           Icon(_collapse
              //               ? Icons.keyboard_arrow_up
              //               : Icons.keyboard_arrow_down),
              //         ])),
              //   ),
              // ),
            ]),
          )),
    );
  }

  Widget CustomRadioButton(String text, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          value = index;
        });
      },
      child: Container(
        height: (5.h),
        width: (29.8.w),
        color: (value == index) ? Colors.green : Colors.white,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: (value == index) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }

  Widget icons(String text, String image, int i) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            height: 5.h,
            width: 11.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.h),

              color: Amenities[i].chaked
                  ? Colors.green
                  : Colors.grey,
              image: DecorationImage(
                image: AssetImage("images/charger.png"),
              ),
            )),
        Container(
          height: 5.h,
          width: 12.w,
          child: Center(
            child: Text(
              text,
              textAlign:TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
              maxLines: 2,
            ),
          ),
        )
      ],
    );
  }
  Widget icons1(String text, String image, int index) {
    return Column(
     crossAxisAlignment:CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: [
        Container(
            height: 5.h,
            width: 11.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.h),

              color: OtherConnectors[index].chaked1
                  ? Colors.green
                  : Colors.grey,
              image: DecorationImage(
                image: AssetImage("images/charger.png"),
              ),
            )),
        Container(
          height: 5.h,
          width: 12.w,
          child: Center(
            child: Text(
              text,
              textAlign:TextAlign.center,
              style: TextStyle(
                color: Colors.black,
              ),
              maxLines: 2,
            ),
          ),
        )
      ],
    );
  }
}




class selected {
  bool chaked;

  selected(this.chaked);
}
class selected1 {
  bool chaked1;

  selected1(this.chaked1);
}

class selected2 {
  bool chaked2;

  selected2(this.chaked2);
}

