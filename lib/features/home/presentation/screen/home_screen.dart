import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:football/core/theme/app_colors.dart';
import 'package:football/core/utils/consts.dart';
import 'package:football/features/home/presentation/bloc/home_bloc.dart';
import 'package:football/features/home/presentation/screen/widgets/games_list.dart';
import 'package:football/features/home/presentation/screen/widgets/tab_bar_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      length: 2,
      vsync: this,
    );
    Modular.get<HomeBloc>().add(GetAllFixturesEvent(
      leagueId: 850,
      season: 2023,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          Consts.appName,
          style: Theme.of(context).textTheme.headline1?.copyWith(
                color: Colors.white,
              ),
        ),
        bottom: TabBar(
          controller: _controller,
          indicatorWeight: 2,
          indicatorColor: Colors.black,
          tabs: const [
            TabBarItem(title: 'Upcoming games'),
            TabBarItem(title: 'Finished games'),
          ],
        ),
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: Modular.get(),
        listener: _homeStateListener,
        builder: (ctx, state) => state is AllFixturesLoaded
            ? TabBarView(
                controller: _controller,
                children: [
                  // Upcoming games
                  GamesList(games: state.entity.upcomingMatches),
                  // Finished games
                  GamesList(games: state.entity.finishedMatches),
                ],
              )
            : state is AllFixturesLoading
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : const SizedBox.shrink(),
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
