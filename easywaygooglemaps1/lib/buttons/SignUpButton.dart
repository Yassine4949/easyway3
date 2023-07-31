import 'package:flutter/material.dart';

import '../pages/Hotels.dart';
class NeuButton extends StatelessWidget {
  const NeuButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(padding:
    const EdgeInsets.symmetric(horizontal: 25.0),
      child: ClipRRect(

        borderRadius: BorderRadius.circular(4),

        child: Stack(



              children:[
                Container(
                width: 367,
                height: 55,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
              ),


            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 152.7, vertical: 16),
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed:  () {
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HotelsScreen()),
      );
      },
              child: const Text('Log in'),
            ),
          ],
        ),
      ),

      );


  }
}
