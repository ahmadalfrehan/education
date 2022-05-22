import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';
import 'cAhR.dart';

class Calender extends StatelessWidget {
  Calender({Key? key}) : super(key: key);

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
        return Scaffold(
          appBar: AppBar(
            backgroundColor: const Color(0xFF0b4972),
            elevation: 0,
            centerTitle: true,
            title: const Text(
              'التقويم البنائي والنهائي والغلق'
              ,style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          body: SafeArea(
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(color: Colors.black, thickness: 1),
                      /*Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'التقويم البنائي والنهائي والغلق :',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),*/
                      const SizedBox(height: 10),
                      Text(E.calender1 + '\t' + E.markCalender1.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 = E.changeStringVarForCalender(
                                    E.markCalender1.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 =
                                    E.ChangeStingVar(E.markCalender1.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 =
                                    E.ChangeStingVar(E.markCalender1.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 =
                                    E.ChangeStingVar(E.markCalender1.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender1 =
                                    E.ChangeStingVar(E.markCalender1.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.calender2 + '\t' + E.markCalender2.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 =
                                    E.ChangeStingVar(E.markCalender2.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 =
                                    E.ChangeStingVar(E.markCalender2.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 =
                                    E.ChangeStingVar(E.markCalender2.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 =
                                    E.ChangeStingVar(E.markCalender2.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender2 =
                                    E.ChangeStingVar(E.markCalender2.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.calender3 + '\t' + E.markCalender3.toString()),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 =
                                    E.ChangeStingVar(E.markCalender3.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 =
                                    E.ChangeStingVar(E.markCalender3.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 =
                                    E.ChangeStingVar(E.markCalender3.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 =
                                    E.ChangeStingVar(E.markCalender3.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender3 =
                                    E.ChangeStingVar(E.markCalender3.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Text(E.calender4 + '\t' + E.markCalender4.toString()),
                      Row(
                        children: [
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 =
                                    E.ChangeStingVar(E.markCalender4.toString(), '1');
                              },
                              child: text('1'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 =
                                    E.ChangeStingVar(E.markCalender4.toString(), '2');
                              },
                              child: text('2'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 =
                                    E.ChangeStingVar(E.markCalender4.toString(), '3');
                              },
                              child: text('3'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 =
                                    E.ChangeStingVar(E.markCalender4.toString(), '4');
                              },
                              child: text('4'),
                            ),
                          ),
                          Expanded(
                            child: MaterialButton(
                              onPressed: () {
                                E.markCalender4 =
                                    E.ChangeStingVar(E.markCalender4.toString(), '5');
                              },
                              child: text('5'),
                            ),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Divider(color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xFF0b4972),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CaHr(),
                                  ),
                                );
                              },
                              child: const Text('NEXT',
                                  style:
                                  TextStyle(color: Color(0xFFECF0F3))),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0xB10b4972),
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'BACK',
                                style: TextStyle(
                                  color: Color(0xFFECF0F3),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Divider(color: Colors.black, thickness: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
