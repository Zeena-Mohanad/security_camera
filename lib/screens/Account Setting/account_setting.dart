import 'package:flutter/material.dart';

class AccccountSetting extends StatelessWidget {
  const AccccountSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Account Setting',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.all(16),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('Username')),
                Text(
                  'name',
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('Email')),
                Text(
                  'user@gmail.com',
                  style: TextStyle(color: Colors.grey),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('Change Password')),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text('Delete Account')),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
          ]),
        ),
        Container(
          width: MediaQuery.sizeOf(context).width,
          margin: EdgeInsets.fromLTRB(16, 0, 16, 0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8)),
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Sign Out',
              style: TextStyle(color: Colors.black),
            ),
          ),
        )
      ]),
    );
  }
}
