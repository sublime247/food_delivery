import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:food_delivery/cores/components/search_input.dart';
import 'package:food_delivery/cores/components/text_widget.dart';
import 'package:food_delivery/cores/utils/utils.dart';
import 'package:food_delivery/features/home/presentation/widget/home_banner.dart';

class HomeTab extends ConsumerWidget {
 HomeTab({super.key});
final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding:EdgeInsets.symmetric(horizontal: w(15), vertical: h(15)),
      child: Column(
        children: [
          const Row(children: [
            TextWidget('Find  Your Favourite\nFood Near You'),
            Icon(Icons.notifications_outlined)
          ],
       
          ),
          SearchInputField(
              controller:  controller,
              // labelText: '',
              hintText: 'What do you want to order?',),
              vSpace(15),
             const  HomeBanner()
          

        ],
      ),
    );
  }
}
