import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text('Following'),
              VerticalDivider(
                thickness: 2,
                width: 20,
                indent: 15,
                endIndent: 15,
                color: Colors.white60,
              ),
              Text('For You')
            ],
          ),
        ),
        Flexible(
          flex: 2,
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
