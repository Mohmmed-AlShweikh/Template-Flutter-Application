import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/home_entity.dart';

class HomeCard extends StatelessWidget {
  final HomeEntity data;

  const HomeCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          CachedNetworkImage(
            imageUrl: data.image,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            
              children: [
                Text(data.title, style: Theme.of(context).textTheme.titleSmall,maxLines: 1,
              overflow: TextOverflow.ellipsis,),
            
                const SizedBox(height: 8),
            
                Text('\$'+data.price.toString(), style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
