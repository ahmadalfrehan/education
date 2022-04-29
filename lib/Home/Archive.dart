import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubit/cubit.dart';
import '../Cubit/states.dart';
import '../DetailsScreens/DetailsSchools.dart';

import 'package:flutter/material.dart';

class Archive extends StatelessWidget {
  const Archive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<Education, Educational>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is EducationalGetLoadingState) {
          return const CircularProgressIndicator();
        }
        var c = Education.get(context);
        return Scaffold(
          body: Container(),
        );
      },
    );
  }
}
