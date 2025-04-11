import 'package:flutter/cupertino.dart';

class BulletPoint extends StatelessWidget {
  final String text;
  const BulletPoint(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•  ", style: TextStyle(fontSize: 18)),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
          )
        ],
      ),
    );
  }
}
