import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:football/core/theme/app_colors.dart';
import 'package:football/core/utils/consts.dart';
import 'package:football/features/home/presentation/bloc/home_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    // Modular.get<HomeBloc>().add(GetAllFixturesEvent(
    //   leagueId: 850,
    //   season: 2023,
    // ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          Consts.appName,
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      body: BlocListener<HomeBloc, HomeState>(
        bloc: Modular.get(),
        listener: _homeStateListener,
        child: Container(),
      ),
    );
  }

  void _homeStateListener(
    BuildContext context,
    HomeState state,
  ) {
    if (state is AllFixturesError) {
      Fluttertoast.showToast(msg: state.errorMessage);
    }
  }
}
