import 'package:flutter/material.dart';
import 'package:learning/themes/app_theme.dart';
class CardShared extends StatelessWidget {
  const CardShared({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.abc_outlined, color: AppTheme.primary,),
            title: Text('Soy un titulo'),
            subtitle: Text('Lorem Ipsum'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){},
                    style: TextButton.styleFrom(primary: Colors.red),
                    child: const Text('cancel'),
                ),
                TextButton(
                    onPressed: (){},
                    child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
