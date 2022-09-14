import 'package:flutter/material.dart';

class SelectAnswer extends StatelessWidget {
  const SelectAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? selectedIndex;
    const Set<String> labels = {'Si', 'No', 'No lo se'};
    return SizedBox(
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < labels.length; i++)
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 10),
                  child: OutlinedButton(
                    onPressed: () => setState(() => selectedIndex = i),
                    style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(
                          const Color.fromARGB(255, 0, 0, 0)),
                      shape: MaterialStateProperty.resolveWith(
                        (states) => RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => selectedIndex == i
                              ? Colors.amber.shade800
                              : Colors.white),
                    ),
                    child: Text(labels.elementAt(i),
                        style: TextStyle(
                            color: selectedIndex == i
                                ? Colors.white
                                : Colors.grey)),
                  ),
                )
            ],
          );
        },
      ),
    );
  }
}
