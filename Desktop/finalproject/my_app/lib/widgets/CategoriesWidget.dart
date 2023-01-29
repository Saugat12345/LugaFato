import 'package:flutter/material.dart';

class CategoriesWidget extends StatefulWidget {
  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Row(
        children: [
          // for(int i =1;i<5;i++)
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: 10
            ),
            padding: EdgeInsets.symmetric(
              vertical: 5,horizontal: 10
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/gas.jpg",
                    width: 40,
                    height: 40,),
                    Text("Gas",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5)
                    ),)
                  ],
                ),
                SizedBox(width:20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/chimney.jpg",
                    width: 40,
                    height: 40,),
                    Text("Chimney",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5)
                    ),)
                  ],
                ),
                 SizedBox(width:20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/fridge.jpg",
                    width: 40,
                    height: 40,),
                    Text("Fridge",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5)
                    ),)
                  ],
                ),
                 SizedBox(width:20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/product1.jpg",
                    width: 40,
                    height: 40,),
                    Text("Sink",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5)
                    ),)
                  ],
                ),
                 SizedBox(width:20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/trolley.jpg",
                    width: 40,
                    height: 40,),
                    Text("Trolley",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Color(0xFF4C53A5)
                    ),)
                  ],
                ),
              ],
            ),
           
          )
        ],
      ) ,
    );
  }
}