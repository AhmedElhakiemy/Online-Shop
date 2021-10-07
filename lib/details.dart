import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:new_task/MyProvider.dart';
import 'package:provider/provider.dart';

class details extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Details')),
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

      ),
      body: Center(
        child: Column(
          children: [
            Container(
              width:100,
                height: 100,
                child:
            Image.network('${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['image']}')),
            SizedBox(height: 10),
            Text('The product ID is : ${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['id']}'),
            SizedBox(height: 10),
            Text('The product Name is : ${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['product name']}'),
            SizedBox(height: 10),
            Text('The product Description is : ${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['description']}'),
            SizedBox(height: 10),
            Text('The product Price is : ${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['price']}'),
            SizedBox(height: 10),
            Text('You have ${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['count']} of this product'),
            SizedBox(height: 10),
            Text('The rate of this product is : ${Provider.of<MyProvider>(context,listen:false).items[Provider.of<MyProvider>(context,listen:false).x]['rate']}'),
          ],
        ),
      ),
    );
  }

}