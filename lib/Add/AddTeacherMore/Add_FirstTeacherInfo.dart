import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../Cubit/cubit.dart';
import '../../Cubit/states.dart';

class Add_FirstTeacherInfo extends StatelessWidget {
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var classController = TextEditingController();
  var divisionController = TextEditingController();
  var dateController = TextEditingController();
  var titleOfLessonController = TextEditingController();
  var itemController = TextEditingController();
  var far = GlobalKey<FormState>();
  String s = "";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => Education()..createDataBase(),
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          var E = Education.get(context);
          return Scaffold(
            body: Form(
              key: far,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    TextFormF("name", Icons.person, nameController, E),
                    TextFormF("class", Icons.person, classController, E),
                    TextFormF(
                        "division", Icons.info_outline, divisionController, E),
                    TextFormF("phone", Icons.phone, phoneController, E),
                    TextFormF("date", Icons.price_check, dateController, E),
                    TextFormF("titleOfLesson", Icons.price_check,
                        titleOfLessonController, E),
                    TextFormF("item", Icons.price_change, itemController, E),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(
                          color: E.Color1,
                          width: 2,
                        ),
                        elevation: 0.0,
                        primary: const Color(0xFFe6bd60),
                        fixedSize: Size(350, 50),
                        shape: const StadiumBorder(),
                      ),
                      onPressed: () {
                        s = E.ChangeStingVar(s, "y");
                        print(s);
                        E.name = nameController.text;
                        E.phone = phoneController.text;
                        E.clas = classController.text;
                        E.division = divisionController.text;
                        E.date = dateController.text;
                        E.titleOfLesson = titleOfLessonController.text;
                        E.item = itemController.text;
                        nameController = TextEditingController();
                        phoneController = TextEditingController();
                        classController = TextEditingController();
                        divisionController = TextEditingController();
                        dateController = TextEditingController();
                        titleOfLessonController = TextEditingController();
                        itemController = TextEditingController();
                      },
                      child: Text(
                        ' Save ?',
                        style: TextStyle(
                          color: E.Color1,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget TextFormF(String lab, IconData Ic, var x, var c) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: TextFormField(
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
            borderSide: BorderSide(color: c.Color1, width: 2.0),
          ),
          fillColor: Colors.white,
          filled: true,
          prefixIcon: Icon(
            Ic,
            color: c.Color1,
          ),
          labelText: lab,
        ),
        maxLines: lab == 'Information' ? 14 : 1,
        minLines: 1,
        controller: x,
        keyboardType:
            lab == 'Information' ? TextInputType.multiline : TextInputType.text,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'the field must not be empty';
          }
          return null;
        },
      ),
    );
  }
}
