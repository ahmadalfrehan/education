import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';

class Add_School extends StatelessWidget {
  Add_School({Key? key}) : super(key: key);
  var far = GlobalKey<FormState>();
  double heights = 40;
  double widths = 350;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalAddSuccessState) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('successfully added the ' + state.num.toString()),
            ),
          );
          Timer(
        const     Duration(seconds: 2),
            () => Education.get(context).ChangeBottomNav(0),
          );
        }
        if (state is EducationalAddErrorState) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('An error occurred try again'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        var c = Education.get(context);
        return Scaffold(
          backgroundColor: const Color(0xFFECF0F3),
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                Form(
                  key: far,
                  child: Column(
                    children: [
                      TextFormF(
                          "اسم المدرسة", Icons.person, c.nameSchoolController, c),
                  TextFormF(" العنوان ", Icons.person, c.addressController, c),
                      TextFormFNotValidate(
                          "هاتف المدرسة", Icons.phone, c.phoneSchoolController, c),
                      TextFormFNotValidate(
                      "المدير", Icons.info_outline, c.managerController, c),
                  TextFormFNotValidate(
                      "هاتف المدير", Icons.phone, c.managerPhoneController, c),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          menuMaxHeight:
                              MediaQuery.of(context).size.height / 2,
                          alignment: Alignment.center,
                          elevation: 15,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          hint: Text(
                            c.stageType,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          items: Education.get(context)
                              .stage
                              .map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          onChanged: (newValue) async {
                            String l = '';
                            c.stageType = Education.get(context)
                                .changeStringV(l, newValue.toString());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: DropdownButton<String>(
                          isExpanded: true,
                          menuMaxHeight:
                              MediaQuery.of(context).size.height / 2,
                          alignment: Alignment.center,
                          elevation: 15,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(15),
                          ),
                          hint: Text(
                            c.type,
                            style: const TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                          items: Education.get(context)
                              .types
                              .map((String value) {
                            return DropdownMenuItem(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          onChanged: (newValue) async {
                            String l = '';
                            c.type = Education.get(context)
                                .changeStringV(l, newValue.toString());
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 30, 30, 20),
                  child: MaterialButton(
                      elevation: 0.0,
                      color: const Color(0xFF0b4972),
                      minWidth: double.infinity,
                      shape: const StadiumBorder(),
                    onPressed: () {
                      if (far.currentState!.validate()) {
                        if (!Education.get(context)
                            .stage
                            .contains(c.stageType)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('اختر المرحلة'),
                            ),
                          );
                        }
                        if (!Education.get(context).types.contains(c.type)) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('اختر النوع'),
                            ),
                          );
                        }
                        if (Education.get(context)
                                .stage
                                .contains(c.stageType) &&
                            Education.get(context).types.contains(c.type)) {
                          c.insertInToSchoolTableDataBase(
                            name: c.nameSchoolController.text,
                            address: c.addressController.text,
                            type: c.type,
                            phone: c.phoneSchoolController.text,
                            manager: c.managerController.text,
                            managerPhone: c.managerPhoneController.text,
                            stage: c.stageType,
                          );
                        }
                      }
                      c.nameSchoolController = TextEditingController();
                      c.phoneSchoolController = TextEditingController();
                      c.addressController = TextEditingController();
                      c.managerController = TextEditingController();
                      c.managerPhoneController = TextEditingController();
                      c.stageType = 'اختر المرحلة ';
                      c.type = 'اختر النوع ';
                    },
                    child: const Text(
                      ' Save ?',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
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
          labelText: lab,
        ),
        maxLines: lab == 'معلومات اضافية' ? 4 : 1,
        minLines: 1,
        controller: x,
        keyboardType: lab == 'معلومات اضافية'
            ? TextInputType.multiline
            : TextInputType.text,
        validator: (String? value) {
          if (value!.isEmpty) {
            return 'the field must not be empty';
          }
          return null;
        },
      ),
    );
  }

  Widget TextFormFNotValidate(String lab, IconData Ic, var x, var c) {
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
          labelText: lab,
        ),
        maxLines: lab == 'معلومات اضافية' ? 4 : 1,
        minLines: 1,
        controller: x,
        keyboardType: lab == 'معلومات اضافية'
            ? TextInputType.multiline
            : TextInputType.text,
      ),
    );
  }
}
