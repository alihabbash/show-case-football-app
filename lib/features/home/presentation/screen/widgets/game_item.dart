import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/model/fixtures/fixture_item_model.dart';

class GameItem extends StatelessWidget {
  const GameItem({
    required this.game,
    required this.isUpcoming,
    Key? key,
  }) : super(key: key);

  final FixtureItemModel game;
  final bool isUpcoming;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: _onItemTap,
        child: Padding(
          padding: EdgeInsets.all(16.r),
          child: Column(
            children: [
              Row(
                children: [
                  // Team home section
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CachedNetworkImage(
                          imageUrl: game.teams?.home?.logo ?? '',
                          height: 40.h,
                          width: 56.w,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 16.h),
                        Text(game.teams?.home?.readableName ?? ''),
                      ],
                    ),
                  ),
                  // Score section
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (!isUpcoming)
                          Text(
                            game.goals?.home?.toString() ?? '-',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        if (!isUpcoming) SizedBox(width: 4.w),
                        Text(
                          '-',
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        if (!isUpcoming) SizedBox(width: 4.w),
                        if (!isUpcoming)
                          Text(
                            game.goals?.home?.toString() ?? '-',
                            style: Theme.of(context).textTheme.headline2,
                          ),
                      ],
                    ),
                  ),
                  // Team away section
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CachedNetworkImage(
                          imageUrl: game.teams?.away?.logo ?? '',
                          height: 40.h,
                          width: 56.w,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(height: 16.h),
                        Text(game.teams?.away?.readableName ?? ''),
                      ],
                    ),
                  ),
                  // Text(game.fixtureDetails?.date.toString() ?? ''),
                ],
              ),
              SizedBox(height: 16.h),
              Center(
                child: Text(
                  game.fixtureDetails?.readableDate ?? 'No Date',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Center(
                child: Text(
                  game.fixtureDetails?.readableTime ?? 'No Time',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTap() {
  }
}
