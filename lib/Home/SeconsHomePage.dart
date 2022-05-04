import 'package:education_evaluation/Add/EditSchool.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../DetailsScreens/DetailsSchools.dart';

class SecondHomePage extends StatelessWidget {
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {
        if (state is EducationalGetLoadingState) {
          const Center(child: CircularProgressIndicator());
        }
        if (state is EducationalUpdateSuccessState) {
          Education.get(context).createDataBase();
        }
      },
      builder: (context, state) {
        var c = Education.get(context);
        return Scaffold(
          body: SafeArea(
            child: Container(
              color: const Color(0xFFECF0F3),
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
                itemCount: c.schools.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Details(
                                c.schools, index, c.schools[index]['idSchool']),
                          ),
                        );
                      },
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Details(c.schools, index,
                                  c.schools[index]['idSchool'])));
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                offset: Offset(0, 8),
                                blurRadius: 5,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: const[
                                          CircleAvatar(
                                            backgroundColor:
                                                const Color(0xFF0b4972),
                                            child: Icon(Icons.school_sharp)
                                          ),
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              children: [
                                                Text(
                                                  c.schools[index]['name'],
                                                  style: const TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(c.schools[index]
                                                    ['address']),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
