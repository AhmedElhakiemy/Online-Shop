import 'package:flutter/cupertino.dart';
//import 'package:provider/provider.dart';



class MyProvider with ChangeNotifier
{
  int x=0;
  int total=0;

  List < Map < String , dynamic > > items=[
    {
      'id':1,
      'product name':"Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
      'description':"Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
      'count':0,
      'image':"https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
      'fav':1,
      'price': 109.95,
      'rate':4.6,
    },
    {
      'id':2,
      'product name':"Mens Casual Premium Slim Fit T-Shirts ",
      'description':"Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable",
      'count':0,
      'image':"https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
      'fav':1,
      'price': 22.3,
      'rate':3.8,
    },
    {
      'id':3,
      'product name':"Mens Cotton Jacket",
      'description':"great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing",
      'count':0,
      'image':"https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
      'fav':1,
      'price': 55.99,
      'rate':4.1,
    },
    {
      'id':4,
      'product name': "Mens Casual Slim Fit",
      'description':"The color could be slightly different",
      'count':0,
      'image': "https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg",
      'fav':1,
      'price': 15.99,
      'rate':3.9,
    },
    {
      'id':5,
      'product name':"John Hardy Women's Legends Naga Gold & Silver Dragon Station Chain Bracelet",
      'description':"From our Legends Collection, the Naga was inspired by the mythical ",
      'count':0,
      'image':"https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg",
      'fav':1,
      'price': 695,
      'rate':3,
    },
    {
      'id':6,
      'product name':"Solid Gold Petite Micropave ",
      'description':"Satisfaction Guaranteed. Return or exchange any order within 30 ",
      'count':0,
      'image':"https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg",
      'fav':1,
      'price':  168,
      'rate':4.5,
    },
    {
      'id':7,
      'product name':"White Gold Plated Princess",
      'description':"Classic Created Wedding Engagement Solitaire Diamond Promise",
      'count':0,
      'image':"https://fakestoreapi.com/img/71YAIFU48IL._AC_UL640_QL65_ML3_.jpg",
      'fav':1,
      'price': 9.99,
      'rate':3.7,
    },
    {
      'id':8,
      'product name':"Pierced Owl Rose Gold Plated Stainless Steel Double",
      'description': "Rose Gold Plated Double Flared Tunnel Plug Earrings",
      'count':0,
      'image':"https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
      'fav':1,
      'price': 10.99,
      'rate':2.5,
    },
    {
      'id':9,
      'product name':"WD 2TB Elements Portable External Hard Drive - USB 3.0 ",
      'description':"USB 3.0 and USB 2.0 Compatibility Fast data transfers Improve PC Performance High Capacity; Compatibility Formatted NTFS for Windows 10",
      'count':0,
      'image':"https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg",
      'fav':1,
      'price':  64,
      'rate':4,
    },
    {
      'id':10,
      'product name':"SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s",
      'description':"Easy upgrade for faster boot up, shutdown, application load and response (As compared to 5400 RPM SATA 2.5” hard drive; Based on published",
      'count':0,
      'image':"https://fakestoreapi.com/img/61U7T1koQqL._AC_SX679_.jpg",
      'fav':1,
      'price':  109,
      'rate':3,
    }
  ];

  dynamic money=0;

  increment (int index){
    items[index]['count']++;
    total++;
    money+=items[index]['price'];
    notifyListeners();
  }
  decrement (int index){
    if(items[index]['count']>0)
      {
        items[index]['count']--;
        total--;
        money-=items[index]['price'];
        notifyListeners();
      }

  }
  FunFav(int index){
    items[index]['fav']++;
    notifyListeners();
  }

@override
  void notifyListeners() {
    // TODO: implement notifyListeners
    super.notifyListeners();
  }
}