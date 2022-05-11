import 'package:education_evaluation/constant.dart';
import 'package:education_evaluation/login/login_screen.dart';
import 'package:education_evaluation/sharedHELper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'Cubit/cubit.dart';
import 'Cubit/states.dart';
import 'HomeLayout.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Shard.initial();
  isAllowedToShown = Shard.sharedprefrences?.getBool('isAllow');//government
  debugPrint(Shard.sharedprefrences?.getString('government').toString());
  if (Shard.sharedprefrences?.getString('government') != null) {
    government = Shard.sharedprefrences?.getString('government') as String;
    debugPrint(government);
  }
  if (Shard.sharedprefrences?.getString('items') != null) {
    item = Shard.sharedprefrences?.getString('items') as String;
    debugPrint(item);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          //lazy: false,
          create: (context) => Education()..createDataBase(),
        ),
      ],
      child: BlocConsumer<Education, Educational>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.teal,
            ),
            home:  Directionality(
                textDirection: TextDirection.rtl, child: LoginScreen()),
          );
        },
      ),
    );
  }
}
