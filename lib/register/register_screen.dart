import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../login/login_screen.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class RegisterScreen extends StatelessWidget {
  var formKey = GlobalKey<FormState>();
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passController = TextEditingController();
  var numberController = TextEditingController();
  var facebookController = TextEditingController();
  var isAbscure = true;

  @override
  Widget build(BuildContext context) {
    var scaff = ScaffoldMessenger.of(context);
    return BlocProvider(
      create: (BuildContext context) => RegisterCubit(),
      child: BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
          if (state is CreateSuccessState) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          }
          if (state is RegisterSuccessState) {
            scaff.showSnackBar(
              SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                content: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.green,
                      ),
                      child: const Center(
                        child: Text(
                            "You did a great job..You created the account successfully now please login "),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (state is RegisterErrorState) {
            scaff.showSnackBar(
              SnackBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                content: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(55),
                        color: Colors.red,
                      ),
                      child: const Center(
                        child: Text("An error occurred try again !"),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFF0b4972),
            ),
            body: SafeArea(
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Container(
                  color: Colors.white,
                  child: Form(
                    key: formKey,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.center,
                        children: [Container(
                          height: MediaQuery.of(context).size.height >= 440
                              ? MediaQuery.of(context).size.height / 4.4
                              : MediaQuery.of(context).size.height / 4,
                          decoration: const BoxDecoration(
                            color: Color(0xFF0b4972),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(130),
                              bottomRight: Radius.circular(130),
                            ),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 0,
                              ),
                              Row(
                                children: [],
                              ),
                              const SizedBox(
                                height: 0,
                              ),
                              Text(
                                "انشاء حساب !",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                  MediaQuery.of(context).size.width <= 350
                                      ? 15
                                      : 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Text(
                                "انشئ حسابا لنبدأ !",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize:
                                  MediaQuery.of(context).size.width <= 350
                                      ? 8
                                      : 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                            ],
                          ),
                        ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.person,
                                ),
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: 'Name',
                              ),
                              controller: nameController,
                              keyboardType: TextInputType.text,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'the name must not be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(
                                    Icons.email,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: 'Email'),
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'the name must not be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                hoverColor: Colors.green,
                                suffixIcon: GestureDetector(
                                    onTap: () {
                                      isAbscure
                                          ? isAbscure = RegisterCubit.get(context)
                                              .ChangeBool(isAbscure, false)
                                          : isAbscure = RegisterCubit.get(context)
                                              .ChangeBool(isAbscure, true);
                                    },
                                    child: isAbscure
                                        ? const Icon(Icons.visibility_off)
                                        : const Icon(Icons.visibility)),
                                prefixIcon: const Icon(
                                  Icons.lock,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                focusColor: Colors.black,
                                labelText: 'Password',
                              ),
                              controller: passController,
                              obscureText: isAbscure,
                              keyboardType: TextInputType.text,
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'the password must not be empty';
                                }
                                if (value.length < 6) {
                                  return 'the password is too short';
                                }
                                return null;
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 10, horizontal: 20),
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.format_list_numbered,
                                ),
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                labelText: 'age',
                              ),
                              controller: numberController,
                              keyboardType: TextInputType.text,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly,
                              ],
                              validator: (String? value) {
                                if (value!.isEmpty) {
                                  return 'the password must not be empty';
                                }
                                return null;
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(),
                              elevation: 7,
                              primary: Color(0xFF0b4972),
                              shape: const StadiumBorder(side: BorderSide()),
                              fixedSize: const Size(300, 50),
                            ),
                            child: const Text(
                              "انشاء حساب ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {}
                            },
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          const Text(
                            "لديك حساب بالفعل ؟",
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              side: const BorderSide(color: Colors.white),
                              primary: Colors.white,
                              elevation: 7,
                              shape: const StadiumBorder(side: BorderSide()),
                              fixedSize: const Size(300, 50),
                            ),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginScreen(),
                                ),
                                (route) {
                                  return false;
                                },
                              );
                            },
                            child: const Text(
                              "تسجيل الدخول",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
