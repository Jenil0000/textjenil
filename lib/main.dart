import 'package:flutter/material.dart';

void  main()
{
  runApp(MaterialApp(home: text(),));
}
class text extends StatefulWidget {
  const text({Key? key}) : super(key: key);

  @override
  State<text> createState() => _textState();
}

class _textState extends State<text> {
  var a3;
  TextEditingController a1 = new TextEditingController();
  TextEditingController a2 = new TextEditingController();
  String result = "0";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Text"),),
        body: Column(
          children: [
            Padding(padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: a1,
                maxLength: 10,
                obscureText: false,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText:  "Enter Value",
                  errorBorder: a3,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: a2,
                obscureText: false,
                maxLength: 10,
                //textDirection: TextDecoration.no
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Value",
                  errorBorder: a3,

                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    int sum = int.parse(a1.text) + int.parse(a2.text);
                    result = sum.toString();
                  });
                }, child: Text("+")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    int sub = int.parse(a1.text) - int.parse(a2.text);
                    result = sub.toString();
                  });
                }, child: Text("-")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    int mul = int.parse(a1.text) * int.parse(a2.text);
                    result = mul.toString();
                  });
                }, child: Text("*")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    double div = double.parse(a1.text) / double.parse(a2.text);
                    result = div.toString();
                  });
                }, child: Text("/")),
                ElevatedButton(onPressed: (){
                  setState(() {
                    int div = (int.parse(a1.text)  / int.parse(a2.text)) as int;
                    result = div.toString();
                  });
                }, child: Text("%")),
                // ElevatedButton(onPressed: (){
                //
                // }, child: Text("/")),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text("Result:",
                  style: TextStyle(
                    fontSize: 30,
                  ),),
                Text(result,
                  style: TextStyle(
                    fontSize: 30,
                  ),),
              ],
            ),
          ],

        )
    );

  }
}
// error(){
//   final abc =a1.value.text;
//   if(!abc.contains(RangeError(message))
//   {
//
//   }
// }
// Row(
//
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: [
//     Padding(padding: const EdgeInsets.all(50.0),),
//     ElevatedButton(onPressed: (){
//
//     }, child: Text("Submit")),
//   ],
// ),