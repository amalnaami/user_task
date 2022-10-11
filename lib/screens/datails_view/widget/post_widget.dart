import 'package:flutter/material.dart';
import 'package:user_task/model/post_model.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({Key? key, required this.postData}) : super(key: key);
  final PostModel postData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        padding: const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey[300]!, blurRadius: 5, spreadRadius: 2)
            ]),
        child: ListTile(
          title: Text(postData.title),
          subtitle: Text(postData.body),
        ),
      ),
    );
  }
}
