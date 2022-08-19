import 'package:flutter/material.dart';

import 'SecondScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(

       backgroundColor: Colors.white,
       elevation: 0,
       leading: Padding(
         padding: const EdgeInsets.all(8.0),
         child: CircleAvatar(
           radius: 15,
         ),
       ),
       actions: [
         Icon(
           Icons.notifications_active_outlined,
           size:25,
           color: Colors.black12,
         )
       ],
     ),

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Welcome! ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Zhafira ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 50
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        'Have a nice day',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30
                        ),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        height: 50,
                        width: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.red,
                        ),
                        child: Row(

                          children: [
                            Icon(
                              Icons.sunny,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10,),
                            Text(
                                'Urgent Care',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            )
                          ],
                        ),

                      ),
                      SizedBox(height: 30,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(25)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Text(
                                'Ecare Services',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                              )

                            ),
                            SizedBox(height: 20,),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 50),
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                      ),
                                      Text('consulltaion'),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                      ),
                                      Text('Medicines'),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                  Column(
                                    children: [
                                      CircleAvatar(
                                        radius: 25,
                                      ),
                                      Text('Ambulance'),
                                    ],
                                  ),
                                  SizedBox(width: 20,),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              children: [
                                Text(
                                    'My Appointment',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20
                                  ),
                                ),
                                SizedBox(width: 150,),
                                Text(

                                  'See All',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.cyan,
                                      fontSize: 20
                                  ),

                                ),
                              ],
                            ),
                            SizedBox(height: 20,),
                            SingleChildScrollView(
                              child: Container(

                                decoration: BoxDecoration(
                                  border: BorderDirectional(
                                     start: BorderSide(width:10,color: Colors.blue)
                                  )
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [

                                      Text(
                                          'Appointment date',
                                        style: TextStyle(
                                          color: Colors.grey
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      Padding(
                                        padding: const EdgeInsets.all(5),
                                        child: Row(
                                          children: [
                                            Icon(Icons.timer_outlined),
                                            SizedBox(width: 20,),
                                            Text(
                                                'Wed  jun 20 . 8:00 - 8:30 Am',
                                              style: TextStyle(
                                                fontSize: 10
                                              ),
                                            ),
                                            SizedBox(width: 140,),
                                            Icon(Icons.more_vert_outlined, size: 30, )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            border: BorderDirectional(
                                                bottom: BorderSide(color: Colors.grey)
                                        ),

                                      )

                                      ),
                                      SizedBox(
                                        height: 10,

                                      ),
                                      Row(
                                        children: [
                                          Stack(
                                            alignment: AlignmentDirectional.bottomEnd,
                                            children: [
                                              CircleAvatar(
                                                radius: 25,
                                              ),

                                             Container(
                                               decoration: BoxDecoration(
                                                 color: Colors.green,
                                                 borderRadius: BorderRadius.circular(25),

                                               ),

                                                 child: Icon(
                                                   Icons.video_camera_back ,
                                                   size: 20,
                                                 ),
                                             ),
                                              SizedBox(width: 20,),


                                            ],
                                          ),
                                          SizedBox(width: 20,),
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'dr Nirmala AzaLea',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold
                                                ),
                                              ),
                                              Text(
                                                'Orthopedic',
                                              )
                                            ],
                                          ),

                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [

          BottomNavigationBarItem(
            icon: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen()));
                },
                icon: Icon(Icons.home)
            ),
            label: ''

          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.credit_card)),
              label: ''

          ),
          BottomNavigationBarItem(
              icon: IconButton(onPressed: (){}, icon: Icon(Icons.circle)),
              label: ''

          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.comment_bank_outlined)),
              label: ''

          ),
          BottomNavigationBarItem(
            icon: IconButton(onPressed: (){}, icon: Icon(Icons.person_pin)),
              label: ''

          ),
        ],
      ),


    );
  }
}
