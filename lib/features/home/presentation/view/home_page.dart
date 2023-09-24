import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/scaffold_widget.dart';
import 'package:food_delivery/cores/components/text_widget.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {

  @override
  Widget build(BuildContext context) {
    return const ScaffoldWidget(body: 
    Column(
        children: [
          Row(
            children:[
            TextWidget(
              'Find  Your Favourite\nFood Near You'
            ),
            Icon(Icons.notifications_outlined)
            ]
          )
        ],
    )
    , useSingleScroll: false);
  }
}