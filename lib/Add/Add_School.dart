

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import '../Cubit/cubit.dart';
import '../Cubit/states.dart';


class Add_School extends StatelessWidget {
  Add_School({Key? key}) : super(key: key);
  var nameController = TextEditingController();
  var addressController = TextEditingController();
  var phoneController = TextEditingController();
  var managerController = TextEditingController();
  var managerPhoneController = TextEditingController();
  var typeController = TextEditingController();
  var stageController = TextEditingController();
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
          body: Form(
            key: far,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  TextFormF("الاسم", Icons.person, nameController, c),
                  TextFormF("المحافظة او العنوان ", Icons.person, addressController, c),
                  TextFormF(
                      "المدير", Icons.info_outline, managerController, c),
                  TextFormF("الهاتف", Icons.phone, phoneController, c),
                  TextFormF("معلومات اضافية", Icons.price_change, stageController, c),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(
                        color: c.Color1,
                        width: 2,
                      ),
                      elevation: 0.0,
                      primary: const Color(0xFF0b4972),
                      fixedSize: Size(widths, heights),
                      shape: const StadiumBorder(),
                    ),
                    onPressed: () {
                      if (far.currentState!.validate()) {
                        c.insertInToSchoolTableDataBase(
                          name: nameController.text,
                          address: addressController.text,
                          type: 'NotSent',
                          phone: phoneController.text,
                          manager: managerController.text,
                          managerPhone: managerPhoneController.text,
                          stage: stageController.text,
                        );
                      }
                      nameController = TextEditingController();
                      phoneController = TextEditingController();
                      addressController = TextEditingController();
                      managerController = TextEditingController();
                      managerPhoneController = TextEditingController();
                      stageController = TextEditingController();
                    },
                    child:const Text(
                      ' Save ?',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        color: Colors.white,
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
        keyboardType:
            lab == 'معلومات اضافية' ? TextInputType.multiline : TextInputType.text,
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
