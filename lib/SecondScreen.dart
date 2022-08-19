import 'package:booking/ThirdScreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:Icon(Icons.arrow_back , color: Colors.black,)
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Text(
                  'Booking Appointment',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30
                ),
              ),
              Text(
                'Step 5/5',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  color: Colors.cyan
                ),
              ),
              SizedBox(height: 30,),
              Text(
                'Payment Option',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.cyan,
                      ),
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: Colors.white,
                      ),
                      CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.blue,
                      ),
                    ],
                  ),
                  SizedBox(width: 20,),
                  Text(
                      'Credit Card/Debit Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10),
                              child: Text(
                                  'Zhafira Azalea',
                                style: TextStyle(
                                  color: Colors.white
                                ),
                                textAlign: TextAlign.start,
                              ),
                            ),
                            SizedBox(width: 200,),
                            Icon(Icons.more_vert)
                          ],
                        ),
                        SizedBox(height: 80,),
                        Text(
                          '**** **** **** 0329',
                          style: TextStyle(
                              color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.start,
                        ),
                        SizedBox(height:20,),
                        Text(
                          '03/24',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.start,

                        ),
                      ],
                    ),
                    
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Stack(
                   alignment: AlignmentDirectional.center,
                   children: [
                     CircleAvatar(
                       radius: 10,
                       backgroundColor: Colors.cyan,
                     ),
                     CircleAvatar(
                       radius: 8,
                       backgroundColor: Colors.white,
                     ),
                    
                   ],
                 ),
                 SizedBox(width: 20,),
                 Text(
                     'Insurances',
                   style: TextStyle(
                     fontWeight: FontWeight.bold
                   ),
                 )
               ],
                
              ),
              SizedBox(height: 30,),
              Row(
                children: [
                  Icon(Icons.check_box, color: Colors.cyan,),
                  SizedBox(width: 5,),
                  Text(
                      'Iagree to the company',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                ],
              ),
              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  width: double.infinity,
                  decoration:BoxDecoration(
                    color: Colors.cyan
                  ) ,
                  child: MaterialButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ThirdScreen()));
                      },
                    child: Text('Continue'),

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
