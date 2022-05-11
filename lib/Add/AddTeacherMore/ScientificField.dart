import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class ScientificField extends StatelessWidget {
  ScientificField({Key? key}) : super(key: key);

  Widget text(String t) {
    return CircleAvatar(
      child: Text(t),
      backgroundColor: const Color(0xFF0b4972),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        var E = Education.get(context);
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Divider(color: Colors.black, thickness: 1),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text('المجال العلمي : ',
                    style:
                        TextStyle(fontWeight: FontWeight.w600, fontSize: 18)),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.scientificField1 + '\t' + E.markScientificField1.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField1 = E.ChangeStingVar(
                          E.markScientificField1.toString(), '1');
                      print(E.markScientificField1);
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField1 = E.ChangeStingVar(
                          E.markScientificField1.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField1 = E.ChangeStingVar(
                          E.markScientificField1.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField1 = E.ChangeStingVar(
                          E.markScientificField1.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField1 = E.ChangeStingVar(
                          E.markScientificField1.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.scientificField2 + '\t' + E.markScientificField2.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField2 = E.ChangeStingVar(
                          E.markScientificField2.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField2 = E.ChangeStingVar(
                          E.markScientificField2.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField2 = E.ChangeStingVar(
                          E.markScientificField2.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField2 = E.ChangeStingVar(
                          E.markScientificField2.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField2 = E.ChangeStingVar(
                          E.markScientificField2.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(E.scientificField3 + '\t' + E.markScientificField3.toString()),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField3 = E.ChangeStingVar(
                          E.markScientificField3.toString(), '1');
                    },
                    child: text('1'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField3 = E.ChangeStingVar(
                          E.markScientificField3.toString(), '2');
                    },
                    child: text('2'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField3 = E.ChangeStingVar(
                          E.markScientificField3.toString(), '3');
                    },
                    child: text('3'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField3 = E.ChangeStingVar(
                          E.markScientificField3.toString(), '4');
                    },
                    child: text('4'),
                  ),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {
                      E.markScientificField3 = E.ChangeStingVar(
                          E.markScientificField3.toString(), '5');
                    },
                    child: text('5'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        );
      },
    );
  }
}
