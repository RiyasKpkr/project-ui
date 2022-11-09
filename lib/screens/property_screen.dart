// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_ui/widgets/industry_land_widget.dart';
import 'package:project_ui/widgets/progress_widget.dart';
import 'package:project_ui/widgets/textfield_widget.dart';

class PropertyScreen extends StatefulWidget {
  const PropertyScreen({super.key});

  @override
  State<PropertyScreen> createState() => _PropertyScreenState();
}

class _PropertyScreenState extends State<PropertyScreen> {
  // bool isClicked = true;
  var selected_index;
  var selectedindex1;
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Icon(
          Icons.sort,
          color: Colors.black,
          size: 30,
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'xentice',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 35,
            fontWeight: FontWeight.normal,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Image.asset(
              'assets/profile-pictures.png',
              width: 50,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProgressWidget(size: size,text: '1/4',value: 0.25),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 9,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 2,
                  childAspectRatio: 1 / 1,
                  mainAxisSpacing: 2,
                ),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          // isClicked = !isClicked;
                          selected_index = index;
                          selectedindex1 = 0;
                        });
                        print('object');
                      },
                      child: IndustrylandWidget(
                        size: size,
                        // borderColor: isClicked ==true ? Colors.grey: Colors.indigo[900],
                        borderColor: selected_index == index
                            ? Colors.indigo.shade900
                            : Colors.grey,
                        iconColor: selected_index == index
                            ? Colors.white
                            : Colors.black54,
                        textColor:
                            selected_index == index ? Colors.white : Colors.grey,
                        ContainerColor: selected_index == index
                            ? Colors.indigo.shade900
                            : Colors.white,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: TextFieldWidget(labelText: Text('Property Title')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                'Transaction Type',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                ),
              ),
            ),
            Row(
              children: [
                Radio(
                  value: 1,
                  groupValue: _value,
                  fillColor: MaterialStatePropertyAll(Colors.indigo[900]),
                  onChanged: (value) {
                    setState(() {
                      _value = 1;
                    });
                  },
                ),
                Text('Sell'),
                Radio(
                  value: 2,
                  groupValue: _value,
                  fillColor: MaterialStatePropertyAll(Colors.indigo[900]),
                  onChanged: (value) {
                    setState(() {
                      _value = 2;
                    });
                  },
                ),
                Text('Rent'),
                Radio(
                  value: 3,
                  groupValue: _value,
                  fillColor: MaterialStatePropertyAll(Colors.indigo[900]),
                  onChanged: (value) {
                    setState(() {
                      _value = 3;
                    });
                  },
                ),
                Text('Lease'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Price',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.green,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                        child: Text(
                      '/Hr',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Building Area',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.green,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text(
                        '/Hr',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 250,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Plot Area',
                        labelStyle: TextStyle(color: Colors.grey),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      // color: Colors.green,
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Center(
                      child: Text(
                        '/Hr',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: TextFieldWidget(labelText: Text('Seating Capacity')),
            ),
          ],
        ),
      ),
    );
  }
}
