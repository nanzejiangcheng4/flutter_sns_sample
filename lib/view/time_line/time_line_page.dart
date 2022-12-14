import 'package:flutter/material.dart';
import 'package:flutter_sns_sample/model/account.dart';
import 'package:flutter_sns_sample/model/post.dart';

class TimeLinePage extends StatefulWidget {
  const TimeLinePage({Key? key}) : super(key: key);

  @override
  State<TimeLinePage> createState() => _TimeLinePageState();
}

class _TimeLinePageState extends State<TimeLinePage> {
  Account myAccount = Account(
    id: '1',
    name: 'Flutterラボ',
    selfIntroduction: 'こんばんは',
    userId: 'flutter_labo',
    imagePath:
        'https://assets.st-note.com/production/uploads/images/58075596/profile_7d12166cbb91dd3ff25bbed3898bdd76.png?fit=bounds&format=jpeg&quality=85&width=330',
    createdTime: DateTime.now(),
    updatedTime: DateTime.now(),
  );

  List<Post> postList = [
    Post(
      id: '1',
      content: '初めまして',
      postAccountId: '1',
      createdTime: DateTime.now(),
    ),
    Post(
      id: '2',
      content: '初めまして2回目',
      postAccountId: '1',
      createdTime: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'タイムライン',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Theme.of(context).canvasColor,
        elevation: 2,
      ),
      body: ListView.builder(
        itemCount: postList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              CircleAvatar(
                radius: 22,
                foregroundImage: NetworkImage(myAccount.imagePath),
              )
            ],
          );
        },
      ),
    );
  }
}
