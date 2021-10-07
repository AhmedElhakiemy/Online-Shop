import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_task/MyProvider.dart';
import 'package:provider/provider.dart';

class favorite extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite Items'),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,childAspectRatio:.65),
          itemCount:Provider.of<MyProvider>(context,listen:false).items.length,
          itemBuilder:(contex,index) {
            if(Provider.of<MyProvider>(context,listen:false).items[index]['fav']%2==0)
            {
              return
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 1,
                        child: Image.network(
                            Provider.of<MyProvider>(context,listen:false).items[index]['image'],
                            fit: BoxFit.cover
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        '${Provider.of<MyProvider>(context,listen:false).items[index]['description']}',
                        style: Theme
                            .of(context)
                            .textTheme
                            .headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        '${Provider.of<MyProvider>(context,listen:false).items[index]['description']}',
                        style: Theme
                            .of(context)
                            .textTheme
                            .caption,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Flexible(child: Container(
                        height: 10,
                      )),
                      Center(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: () {

                              Provider.of<MyProvider>(context,listen:false).decrement(index);
                            },
                                icon: Icon(Icons.remove)),
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
                            IconButton(
                                onPressed: () {

                                  Provider.of<MyProvider>(context,listen:false).increment(index);


                                }, icon: Icon(Icons.add)),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
            }
              else
                {
                  return Text('..');
                }

          }
      ),
    );
  }

}