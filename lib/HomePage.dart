import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_task/MyProvider.dart';
import 'package:new_task/details.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget
{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              leading: IconButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/categories');
                  },
                  icon:Icon(Icons.arrow_back)
              ),
              title:  Center(child: Text('All Items')),
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
              bottom: TabBar(
                tabs: [
                  Tab(text: 'List'),
                  Tab(text:'Grid')
                ],
              ),
            ),

            body:TabBarView(
              children:[
                ListView.builder(
                  itemCount:Provider.of<MyProvider>(context,listen:false).items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(

                      title: Text('${Provider.of<MyProvider>(context,listen:false).items[index]['product name']}',overflow: TextOverflow.ellipsis,),
                      subtitle: Text('${Provider.of<MyProvider>(context,listen:false).items[index]['description']}',overflow: TextOverflow.ellipsis,),
                      leading: IconButton(onPressed: (){
                        Provider.of<MyProvider>(context,listen:false).x=index;

                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>details()));

                      }, icon: Image.network(Provider.of<MyProvider>(context,listen:false).items[index]['image'])),
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
                  },

                ),
                GridView.builder(
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 300,childAspectRatio:.65),
                    itemCount:Provider.of<MyProvider>(context,listen:false).items.length,
                    itemBuilder:(contex,index) {
                      return Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AspectRatio(
                              aspectRatio: 1,
                              child: Stack(
                                  children:[
                                    Image.network(
                                      Provider.of<MyProvider>(context,listen:false).items[index]['image'],
                                      fit: BoxFit.cover
                                  ),
                                    ConstrainedBox(
                                      constraints: BoxConstraints.expand(),
                                      child: Material(
                                        color:Colors.transparent,
                                        child: Align(
                                          alignment: Alignment.topRight,
                                            child:
                                            Stack(
                                              children: [
                                                IconButton(
                                                    onPressed: (){
                                                      Provider.of<MyProvider>(context,listen:false).FunFav(index);
                                                    },
                                                    icon:
                                                      Provider.of<MyProvider>(context,listen:false).items[index]['fav']%2!=0 ?
                                                      Icon(Icons.favorite_border):Icon(Icons.favorite,color:Colors.red)
                                                ),

                                              ],
                                            )
                                        ),
                                      ),
                                    ),
                                    Text(
                                        '${Provider.of<MyProvider>(context,listen:false).items[index]['price']} L.E',
                                            style: TextStyle(
                                              color:Colors.red,
                                              backgroundColor: Colors.black,
                                    ),
                                    ),
                                  ],

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
                ),
              ],

            ),
          )
      ),


    );


  }
}