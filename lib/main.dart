import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: alarm()
    );
  }
}

class alarm extends StatefulWidget {
  const alarm({Key? key}) : super(key: key);

  @override
  State<alarm> createState() => _alarmState();
}

class _alarmState extends State<alarm> {
  bool status = false;
  bool status2 = false;
  bool status3 = false;
  final startTime =TextEditingController();
  final endTime =TextEditingController();
  final start = FocusNode();
  final end = FocusNode();
  String values ='AM';
  var list =['AM','PM'];
  int clicked1 =0;
  int clicked2 =0;
  int clicked3 =0;
  int clicked4 =0;
  int clicked5 =0;
  int clicked6 =0;
  int clicked7 =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: (){
          start.unfocus();
          end.unfocus();
        },
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 35, 15, 10),
            child: Row(children:  <Widget>[
              Container(height: 30,width: 30,decoration: BoxDecoration(color:Colors.white, borderRadius: BorderRadius.circular(4),
                boxShadow: const [BoxShadow(
                  color: Colors.black12,
                  blurRadius: 3.0,
                  spreadRadius: 1.0,
                ),
                ],),
                child:const Icon(Icons.arrow_back),
              ),
              const Text('                      Night Vision',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)
            ],
            ),
          ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 25, 15, 30),
                  child: Container(
                    height: 65,
                  decoration: BoxDecoration(
                    color:Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [BoxShadow(
                      color: Colors.black26,
                      blurRadius: 7.0,
                      spreadRadius: 3.0,
                    ),
                  ],),
                    child: Row(children: <Widget>[
                      const Text("   Night vision mode",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
          const SizedBox(width: 150,),

          FlutterSwitch(
          width: 35,
          height: 20,
          valueFontSize: 0,
          toggleSize: 20.0,
          value: status,
          borderRadius: 30.0,
          padding: 0,
          showOnOff: true,
          inactiveColor: Colors.grey.shade500,
          activeColor: Colors.green.shade800,
          onToggle: (val) {
            setState(() {
              status = val;
            });
          }
          ),
                    ],
                    ),
                  ),
                ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 30),
            child: Container(
              height: 300,
              decoration: BoxDecoration(
                color:Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(
                  color: Colors.black26,
                  blurRadius: 7.0,
                  spreadRadius: 3.0,
                ),
                ],),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
                    child: Row(children: <Widget>[
                      const Text("Schedule night mode",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                      const SizedBox(width: 125,),

                      FlutterSwitch(
                          width: 35,
                          height: 20,
                          valueFontSize: 0,
                          toggleSize: 20.0,
                          value: status2,
                          borderRadius: 30.0,
                          padding: 0,
                          showOnOff: true,
                          inactiveColor: Colors.grey.shade500,
                          activeColor: Colors.green.shade800,
                          onToggle: (val) {
                            setState(() {
                              status2 = val;
                            });
                          }
                      ),
                    ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 200, 0),
                    child: Text('Start time',style: TextStyle(fontSize: 15,color: Colors.green),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 200, 15),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(height: 50,
                            width: 90,
                            child: TextFormField(
                                controller: startTime,
                                focusNode: start,
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(12)
                                  ),
                                  hintText: "10:15",
                                  hintStyle: const TextStyle(fontFamily: 'Serif',color: Colors.black,fontWeight: FontWeight.bold),
                                  focusedBorder: OutlineInputBorder(borderSide:
                                  const BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  fillColor: Colors.white,
                                  filled: true,

                                ),
                              ),
                          ),

                          DropdownButton(
                            value: values,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: list.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                values = newValue!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: Text('End time',style: TextStyle(fontSize: 15,color: Colors.green),),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 200, 15),
                    child: Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(height: 50,
                            width: 90,
                            child: TextFormField(
                              controller: endTime,
                              focusNode: end,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.white),
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                hintText: "10:15",
                                hintStyle: const TextStyle(fontFamily: 'Serif',color: Colors.black,fontWeight: FontWeight.bold),
                                focusedBorder: OutlineInputBorder(borderSide:
                                const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(12)),
                                fillColor: Colors.white,
                                filled: true,

                              ),
                            ),
                          ),

                          DropdownButton(
                            value: values,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: list.map((String items) {
                              return DropdownMenuItem(
                                value: items,
                                child: Text(items),
                              );
                            }).toList(),
                            // After selecting the desired option,it will
                            // change button value to selected value
                            onChanged: (String? newValue) {
                              setState(() {
                                values = newValue!;
                              });
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 200, 0),
                    child: Text('          Days to repeat',style: TextStyle(fontSize: 15,color: Colors.green),),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                              color:clicked1%2==0?
                              Colors.black12:Colors.white,
                              borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked1%2==0?
    Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('M',
                            style: clicked1%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked1++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                            color:clicked2%2==0?
                            Colors.black12:Colors.white,
                            borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked2%2==0?
                          Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('Tu',
                            style: clicked2%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked2++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                            color:clicked3%2==0?
                            Colors.black12:Colors.white,
                            borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked3%2==0?
                          Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('W',
                            style: clicked3%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked3++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                            color:clicked4%2==0?
                            Colors.black12:Colors.white,
                            borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked4%2==0?
                          Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('Th',
                            style: clicked4%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked4++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                            color:clicked5%2==0?
                            Colors.black12:Colors.white,
                            borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked5%2==0?
                          Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('F',
                            style: clicked5%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked5++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                            color:clicked6%2==0?
                            Colors.black12:Colors.white,
                            borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked6%2==0?
                          Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('Sa',
                            style: clicked6%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked6++;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        child: Container(height: 30,width: 30,
                          decoration: BoxDecoration(
                            color:clicked7%2==0?
                            Colors.black12:Colors.white,
                            borderRadius: BorderRadius.circular(25),border: Border.all(color:clicked7%2==0?
                          Colors.black12:Colors.green,),),
                          child: Center(child:
                          Text('Su',
                            style: clicked7%2==0?
                            const TextStyle(color: Colors.black) : const TextStyle(color:Colors.green),
                          ),
                          ),
                        ),
                        onTap: (){
                          setState(() {
                            clicked7++;
                          });},),
                    ),
                  ],
                  ),
                ],),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color:Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(
                  color: Colors.black26,
                  blurRadius: 7.0,
                  spreadRadius: 3.0,
                ),
                ],),
              child: Row(children: <Widget>[
                const Text("   Automatic mode",style: TextStyle(fontSize: 18,color: Colors.black,fontWeight: FontWeight.bold),),
                const SizedBox(width: 160,),

                FlutterSwitch(
                    width: 35,
                    height: 20,
                    valueFontSize: 0,
                    toggleSize: 20.0,
                    value: status3,
                    borderRadius: 30.0,
                    padding: 0,
                    showOnOff: true,
                    inactiveColor: Colors.grey.shade500,
                    activeColor: Colors.green.shade800,
                    onToggle: (val) {
                      setState(() {
                        status3 = val;
                      });
                    }
                ),
              ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 5),
            child: ElevatedButton(style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green.shade800,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),),child: const Text('Save'),onPressed: (){},),
          )
              ],
        ),
      ),
    );
  }
}
