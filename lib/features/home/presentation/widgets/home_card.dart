import 'package:flutter/material.dart';


import '../../domain/entities/home_entity.dart';



class HomeCard extends StatelessWidget {


  final HomeEntity data;



  const HomeCard({

    super.key,

    required this.data,

  });



  @override
  Widget build(BuildContext context) {


    return Card(

      child: Padding(

        padding:
            const EdgeInsets.all(16),


        child: Column(

          crossAxisAlignment:
              CrossAxisAlignment.start,


          children: [


            Text(

              data.title,

              style:
                  Theme.of(context)
                  .textTheme
                  .titleLarge,

            ),


            const SizedBox(
              height: 8,
            ),


            Text(
              data.description,
            ),

          ],

        ),

      ),

    );


  }


}