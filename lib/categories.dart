import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_task/MyProvider.dart';
import 'package:provider/provider.dart';

class categories extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar:AppBar(
         title: Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             FlutterLogo(),
             Text('Flutter Shop'),
           ],
         ),
         actions: [
           IconButton(onPressed: (){
             Navigator.of(context).pushNamed('/cart');
           }, icon: Stack(children: [
             Icon(Icons.shopping_cart),
             Container(
                 decoration: BoxDecoration(
                   color: Colors.red,
                   borderRadius: BorderRadius.circular(10),
                 ),
                 child: Text('${Provider.of<MyProvider>(context,listen:true).total}')
             ),
           ],)
           ),
           IconButton(onPressed: (){
             Navigator.of(context).pushNamed('/favorite');
           }, icon: Icon(Icons.favorite)),
         ],
       ) ,
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/HomePage');
                  }, icon:Text(
                      'All Items',
                  style: TextStyle(
                      fontWeight:FontWeight.bold,
                    fontSize: 30,
                  ),

                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/category_1');

                  }, icon:Text(
                  'Clothes',
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 30,
                  ),

                ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/category_2');

                  }, icon:Text(
                  'jewelry',
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 30,
                  ),

                ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: IconButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/category_3');

                  }, icon:Text(
                  'Accessories',
                  style: TextStyle(
                    fontWeight:FontWeight.bold,
                    fontSize: 30,
                  ),

                ),
                ),
              ),
            ),
          ],
        ),
      ),
      );

  }

}