// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shack15/constants/data.dart';

class AvailableSeatsWidget extends StatelessWidget {
  const AvailableSeatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: availableSeatData.length,
        itemBuilder: (BuildContext context, int index) => Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: Theme.of(context).primaryColor,
                radius: 30,
                child: Text(
                  availableSeatData[index].seatNumber,
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
              Text(
                availableSeatData[index].info,
                style: Theme.of(context).textTheme.subtitle1,
              )
            ],
          ),
        ),
      ),
    );
  }
}
