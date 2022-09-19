import 'package:flutter/material.dart';

class SelectAnswer extends StatelessWidget {
  final Set<String> _answers;
  const SelectAnswer({
    Key? key,
    required Set<String> answers,
    required void Function(int) onChanged,
  })  : _answers = answers,
        _onChanged = onChanged,
        super(key: key);

  final void Function(int n) _onChanged;
  @override
  Widget build(BuildContext context) {
    int? selectedIndex;
    return SizedBox(
      child: StatefulBuilder(
        builder: (BuildContext context, setState) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              for (int i = 0; i < _answers.length; i++)
                Container(
                  margin: const EdgeInsets.only(right: 15, top: 10),
                  child: OutlinedButton(
                    onPressed: () {
                      _onChanged(i);
                      setState(() => selectedIndex = i);
                    },
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
                    child: Text(_answers.elementAt(i),
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
