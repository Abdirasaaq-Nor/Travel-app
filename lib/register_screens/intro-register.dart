import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/register_screens/singIn.dart';
import 'package:travelapp/register_screens/singUp.dart';

class intro_reiguster extends StatelessWidget {
  const intro_reiguster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: ClipRRect(
              child: Image.asset('./images/imgone.png'),
            ),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(20),
                  child: Text(
                      'Welcome Open Hands', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(20),
                  

                  child: Text('nstead of having to buy an entire share, invest any amount you want.Instead of having to buy an entire share, invest any amount you want.', textAlign: TextAlign.center,)
                ),

                SizedBox(height: 70,),
                Container(
                  width: 320,
                  height: 60,
                  margin: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>singin()));
                    },
                    child: Text('Sing in'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.indigo,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                    ),
                  ),
                ),
                 Container(
                  width: 320,
                  height: 60,
                  margin: EdgeInsets.only(top: 20),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) =>singUp()));
                    },
                    child: Text('Sing up'),
                    style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 199, 84, 75),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40))
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
