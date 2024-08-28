import 'package:flutter/material.dart';
import 'package:fooddelivery/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delivery in Progress...'),
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: _BuildButtomNavBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      )
    );
  }
  //custom button nav bar - message / call delivery
Widget _BuildButtomNavBar(BuildContext context){
    return Container(
      height: 100,
decoration: BoxDecoration(
  color: Theme.of(context).colorScheme.secondary,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight: Radius.circular(50))
),
      padding: EdgeInsets.all(25),
      child: Row(
        //driver pic
        children: [
          Container(
            decoration:
            BoxDecoration(color: Theme.of(context).colorScheme.background,
              shape: BoxShape.circle,),
            child: IconButton(
              onPressed: (){},
           icon: Icon(Icons.person),
            ),

          ),
          SizedBox(width: 10,),
          //driver details
      Column(
  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('driver',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),),
          Text('driver',  style: TextStyle(

      color: Theme.of(context).colorScheme.primary,
          ),),
        ],
      ),
       Spacer(),

       Row(
         children: [
           //message bottom
           Container(
             decoration:
             BoxDecoration(color: Theme.of(context).colorScheme.background,
               shape: BoxShape.circle,),
             child: IconButton(
               onPressed: (){},
               icon: Icon(Icons.message),
               color: Theme.of(context).colorScheme.primary,
             ),

           ),
           SizedBox(width: 10,),
           //call bottom
           Container(
             decoration:
             BoxDecoration(color: Theme.of(context).colorScheme.background,
               shape: BoxShape.circle,),
             child: IconButton(
               onPressed: (){},
               icon: Icon(Icons.call),
               color:Colors.green
             ),

           ),
         ],
       ) ,

        ],
      ),
    );
}
}
