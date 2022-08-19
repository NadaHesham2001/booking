import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )
        ),
        centerTitle: true,
        title: Text(
          'Booking Detail',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black
          ),
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                    'Booking Info',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                  textAlign: TextAlign.start,
                ),
                SizedBox(width: 140,),
                Container(

                  decoration:BoxDecoration(
                      color: Colors.green,
                    borderRadius: BorderRadius.circular(15)
                  ) ,
                  child: MaterialButton(
                    onPressed: (){
                    },
                    child: Text(
                      'Confirmed',
                      style: TextStyle(color: Colors.white),
                    ),

                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Container(
              height: 250,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.grey
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(

                            child: Icon(
                                Icons.calendar_today_outlined,
                            ),
                            backgroundColor: Colors.white,
                          radius: 25,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text(
                                'Date & Time',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'Monday ,20 jun 2022 \n08:00 AM',
                              style: TextStyle(
                                  color: Colors.black38
                              ),
                            ),

                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1 ),
                        )
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        CircleAvatar(

                          child: Icon(
                            Icons.people,
                          ),
                          backgroundColor: Colors.green,
                          radius: 25,
                        ),
                        SizedBox(width: 20,),
                        Column(
                          children: [
                            Text(
                              'Appointment Type',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            Text(
                              'in Person \nSekar Wangi 20 A. Bancangon,\nSambit , Ponorogo',
                              style: TextStyle(
                                  color: Colors.black38
                              ),
                            ),


                          ],
                        ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 150,
                      decoration:BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)
                      ) ,
                      child: MaterialButton(
                        onPressed: (){
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Confirmed',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 20,),
                            Icon(Icons.location_pin)
                          ],
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
    );
  }
}
