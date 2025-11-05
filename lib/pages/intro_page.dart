import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('lib/images/nike4.jpg' ,
                height: 240,
                ),
              ),
          
              const SizedBox( height: 38),
              
          
              //title
             const Text('Just do it', 
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          
               const SizedBox( height: 24),
          
               // sub title
               const Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
               ),
                const SizedBox( height: 38),
          
              // start now button
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/homepage'),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[900],
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Center(
                    child: const Text('Shop now ',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
            )
          
            ],
          ),
        ),
      ),
    );
  }
}