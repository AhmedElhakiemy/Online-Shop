import 'package:new_task/MyProvider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cartPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Center(child: Text('Total Price : ${ Provider.of<MyProvider>(context,listen:true).money}')),
     ),
     body:ListView.builder(
       itemCount:Provider.of<MyProvider>(context,listen:false).items.length,
       itemBuilder: (context, index)
       {

         if(Provider.of<MyProvider>(context,listen:false).items[index]['count']>0)
           {

             return ListTile(

               title: Text('${Provider.of<MyProvider>(context,listen:false).items[index]['product name']}',overflow: TextOverflow.ellipsis,),
               subtitle: Text('${Provider.of<MyProvider>(context,listen:false).items[index]['description']}',overflow: TextOverflow.ellipsis,),
               leading: Image.network(Provider.of<MyProvider>(context,listen:false).items[index]['image']),
               trailing: Row(
                 mainAxisSize: MainAxisSize.min,
                 children: [
                   IconButton(onPressed: (){

                       Provider.of<MyProvider>(context,listen:false).decrement(index);



                   }, icon: Icon(Icons.remove)),
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Text(
                       '${Provider.of<MyProvider>(context,listen:true).items[index]['count']}',
                       style: TextStyle(
                         backgroundColor: Colors.white,
                         color: Colors.black,
                       ),
                     ),
                   ),
                   IconButton(onPressed: (){

                     Provider.of<MyProvider>(context,listen:false).increment(index);

                   }, icon: Icon(Icons.add)),
                 ],
               ),
               onTap: () {},
             );
           }
         else {
           return Text('');
       }
         },



     ),
   );
  }
}