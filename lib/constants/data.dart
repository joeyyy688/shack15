import 'package:flutter/material.dart';
import 'package:shack15/models/circleAvatarModel.dart';
import 'package:shack15/models/latestNewsModel.dart';
import 'package:shack15/models/menusModel.dart';
import 'package:shack15/models/seatAvailabaleModel.dart';

final cAvatarElements = [
  CAvatar(
    id: 1,
    image: Image.asset('assets/images/Ellipse_8.png'),
  ),
  CAvatar(
    id: 2,
    image: Image.asset('assets/images/Ellipse_9.png'),
  ),
  CAvatar(
    id: 3,
    image: Image.asset('assets/images/Ellipse_10.png'),
  ),
  CAvatar(
    id: 4,
    image: Image.asset('assets/images/Ellipse_11.png'),
  ),
  CAvatar(
    id: 5,
    image: Image.asset('assets/images/Ellipse_12.png'),
  ),
  CAvatar(
    id: 6,
    image: Image.asset('assets/images/Ellipse_13.png'),
  ),
  CAvatar(
    id: 7,
    image: Image.asset('assets/images/Ellipse_8.png'),
  ),
  CAvatar(
    id: 8,
    image: Image.asset('assets/images/Ellipse_9.png'),
  ),
  CAvatar(
    id: 9,
    image: Image.asset('assets/images/Ellipse_10.png'),
  ),
  CAvatar(
    id: 10,
    image: Image.asset('assets/images/Ellipse_11.png'),
  ),
  CAvatar(
    id: 11,
    image: Image.asset('assets/images/Ellipse_12.png'),
  ),
  CAvatar(
    id: 12,
    image: Image.asset('assets/images/Ellipse_13.png'),
  ),
];

final menusData = [
  Menus(
    id: 1,
    image: Image.asset('assets/images/IMG_1069_3.png'),
    title: 'COFFEE & TEA',
  ),
  Menus(
    id: 2,
    image: Image.asset('assets/images/IMG_1069_1.png'),
    title: 'BREAK FAST',
  ),
  Menus(
    id: 3,
    image: Image.asset('assets/images/IMG_1069_3.png'),
    title: 'COFFEE & TEA',
  ),
];

final latestNewsData = [
  LatestNews(
    id: 1,
    image: Image.asset('assets/images/IMG_1069_2.png'),
    subtitle: 'We are now open until 8pm on Mondays starting next week',
    title: 'New Opening Hours',
  ),
  LatestNews(
    id: 2,
    image: Image.asset('assets/images/IMG_1069_2.png'),
    subtitle:
        'Sping is upon us and now we have a new menu. Try our spritz and new selection of non alcaholics.',
    title: 'Spring Cocktails!',
  ),
  LatestNews(
    id: 3,
    image: Image.asset('assets/images/IMG_1069_2.png'),
    subtitle:
        'Sping is upon us and now we have a new menu. Try our spritz and new selection of non alcaholics.',
    title: 'Spring Cocktails!',
  ),
];

final availableSeatData = [
  SeatAvailableModel(id: 1, info: 'Seat 6', seatNumber: '001'),
  SeatAvailableModel(id: 2, info: 'Seat 12', seatNumber: '003'),
  SeatAvailableModel(id: 3, info: 'Seat 4', seatNumber: '006'),
  SeatAvailableModel(id: 4, info: 'Seat 12', seatNumber: '012'),
  SeatAvailableModel(id: 5, info: 'Seat 12', seatNumber: '014'),
  SeatAvailableModel(id: 6, info: 'Seat 6', seatNumber: '015'),
  SeatAvailableModel(id: 7, info: 'Seat 6', seatNumber: '001'),
  SeatAvailableModel(id: 8, info: 'Seat 8', seatNumber: '016'),
  SeatAvailableModel(id: 9, info: 'Seat 7', seatNumber: '018'),
  SeatAvailableModel(id: 10, info: 'Seat 2', seatNumber: '020'),
  SeatAvailableModel(id: 11, info: 'Seat 5', seatNumber: '022'),
];
