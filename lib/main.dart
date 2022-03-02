import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sim Cash',
      theme: ThemeData(
        primaryColor: Colors.white,
        textTheme: GoogleFonts.robotoCondensedTextTheme()
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            AppBar(
              title: Row(
                children: [
                  Text(
                    'Баланс: ',
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Text(
                    balance.toString(),
                    style: TextStyle(fontSize: 25.0),
                  ),
                  Icon(
                      Icons.currency_ruble_rounded
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              backgroundColor: Colors.amber,
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top:20.0),
                  constraints: BoxConstraints.tightFor(width: 320, height: 120),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.amber, width: 4),
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                            minutes.toString(),
                            style: TextStyle(fontSize: 40.0)
                        ),
                        SizedBox(
                            width: 75,
                            height: 75,
                            child: CircularProgressIndicator(
                              color: Colors.amber,
                              value: minutes/max_minutes,
                              strokeWidth: 10,
                            )
                        )
                      ],
                    ),
                    Text(
                      ' минут осталось',
                      style: TextStyle(fontSize: 20.0)
                    )
                  ],
                ),
                ), //minutes
                Container(
                    margin: EdgeInsets.only(top:20.0),
                    constraints: BoxConstraints.tightFor(width: 320, height: 120),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 4),
                      borderRadius: BorderRadius.circular(20),

                    ),
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                            sms.toString(),
                            style: TextStyle(fontSize: 40.0)
                        ),
                        SizedBox(
                            width: 75,
                            height: 75,
                            child: CircularProgressIndicator(
                              color: Colors.amber,
                              value: sms/max_sms,
                              strokeWidth: 10,
                            )
                        )
                      ],
                    ),
                    Text(
                        'СМС осталось',
                        style: TextStyle(fontSize: 20.0)
                    )
                  ],
                )
                ), // sms
                Container(
                    margin: EdgeInsets.only(top:20.0, bottom: 20.0),
                    constraints: BoxConstraints.tightFor(width: 320, height: 120),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.amber, width: 4),
                      borderRadius: BorderRadius.circular(20),

                    ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Text(
                            gigabytes.toString(),
                            style: TextStyle(fontSize: 40.0)
                        ),
                        SizedBox(
                            width: 75,
                            height: 75,
                            child: CircularProgressIndicator(
                              color: Colors.amber,
                              value: gigabytes/max_gigabytes,
                              strokeWidth: 10,
                            )
                        )
                      ],
                    ),
                    Text(
                        'ГБ осталось'
                    )
                  ],
                )
                ), // gb
                FloatingActionButton.extended(
                  icon: Icon(Icons.add),
                  label: Text('Пополнить баланс', style: TextStyle(fontSize: 20.0)),
                  backgroundColor: Colors.amber,
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}

