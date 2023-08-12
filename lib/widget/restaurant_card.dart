import 'package:flutter/material.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
                margin: EdgeInsets.only(right: 15),
                width: MediaQuery.of(context).size.width * .75,
                height: 250,

                child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network('https://images.deliveryhero.io/image/fd-kh/LH/uln0-hero.jpg',
                      fit: BoxFit.cover,))),
            Positioned(
                left: 0,
                top: 10,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Text('Top Restaurant'),
                )),
            Positioned(
              bottom: 10,
              left: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text('15mn'),
              ),
            )
          ],
        ),
        SizedBox(height: 10,),
        SizedBox(
          width: MediaQuery.of(context).size.width * .75,
          child: const Text('Tube Coffee Toul Kork Samai Square',
            style: TextStyle(fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
            maxLines: 1,),
        ),
        Text('Category'),
        Text('\$\$ 0.50'),
      ],
    );
  }
}