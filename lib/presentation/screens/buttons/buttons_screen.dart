import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons Screen'),
      ),
      body: ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.pop();

        },
        child: Icon(Icons.arrow_back_ios_new_rounded),
        ),
    );
  }
}

class ButtonsView extends StatelessWidget {
  const ButtonsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Wrap(
            spacing: 10,
            crossAxisAlignment: WrapCrossAlignment.center,
            alignment: WrapAlignment.center,
            children: [
                  ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')),
                  ElevatedButton(onPressed: null, child: const Text('Elevated Button')),
                  ElevatedButton.icon(onPressed: (){}, icon:Icon(Icons.access_alarm_rounded), label: Text('Elevated Icon')),
                  FilledButton(onPressed: (){}, child: Text('Filled')),
                  IconButton(onPressed: (){},
                   icon: const Icon(Icons.app_registration_outlined),
                   style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.amber),
                    iconColor: WidgetStatePropertyAll(Colors.blue)
                   ),
                  )
            ],
          ),
      ),
    );
  }
}
