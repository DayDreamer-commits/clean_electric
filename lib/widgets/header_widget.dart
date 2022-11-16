import 'package:clay_containers/constants.dart';
import 'package:clay_containers/widgets/clay_container.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final IconData icon ;
  final String headerText ;
  const HeaderWidget({Key? key, required this.icon, required this.headerText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClayContainer(
        emboss: true,
        depth: 0,
        surfaceColor: Colors.amber.shade100,
        color: Colors.blue.shade200,
        borderRadius: 8,
        spread: 4,
        height: 80,
        width: double.infinity,
        curveType: CurveType.convex,
        child:  Row(
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(headerText,style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Icon(
                  icon,
                  color:Colors.green,
                  size: 64,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
