import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:football/features/home/presentation/screen/widgets/game_item.dart';

import '../../../data/model/fixtures/fixture_item_model.dart';

class GamesList extends StatefulWidget {
  const GamesList({
    required this.games,
    Key? key,
  }) : super(key: key);

  final List<FixtureItemModel> games;

  @override
  _GamesListState createState() => _GamesListState();
}

class _GamesListState extends State<GamesList> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(8.r),
      itemBuilder: _itemBuilder,
      separatorBuilder: _separatorBuilder,
      itemCount: widget.games.length,
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) => SizedBox(
        height: 8.h,
      );

  Widget _itemBuilder(BuildContext context, int index) => GameItem(
        game: widget.games[index],
        isUpcoming: !(widget.games.first.fixtureDetails?.isFinished ?? true),
      );
}
