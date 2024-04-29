import 'package:flutter/material.dart';

class TopDestinationViewWidget extends StatelessWidget {
  const TopDestinationViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 50,
              height: 50,
              child: Row(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Image(
                          image: AssetImage('assets/images/mantasoa.jpg')))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
