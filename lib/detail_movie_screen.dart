import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/movie_model.dart';

var informationTextStyle = TextStyle(fontFamily: 'Oxygen');

class DetailMovieScreen extends StatelessWidget {
  final Movie data;

  DetailMovieScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailWebScreen(data: data);
        } else {
          return DetailMobileScreen(data: data);
        }
      },
    );
  }
}

class DetailWebScreen extends StatelessWidget {
  final Movie data;

  DetailWebScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 64,
        ),
        child: Center(
          child: Container(
            width: 1200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Detail Movie',
                  style: TextStyle(
                    fontFamily: 'Staatliches',
                    fontSize: 32,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(data.backdrop_path),
                          ),
                          SizedBox(height: 16),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      child: Card(
                        child: Container(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  data.original_title,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 30.0,
                                    fontFamily: 'Staatliches',
                                  ),
                                ),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    flex: 0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(data.poster_path,
                                            width: 100, height: 150),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  data.vote_average,
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.grey),
                                                ),
                                                Icon(Icons.favorite,
                                                    size: 14,
                                                    color: Colors.redAccent),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                            width: 10,
                                          ),
                                          Text(
                                            data.release_date,
                                            style: TextStyle(
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Detail',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 15,
                                            width: 10,
                                          ),
                                          Text(
                                            data.overview,
                                            style: TextStyle(fontSize: 12.0),
                                          ),
                                          SizedBox(
                                            height: 15,
                                            width: 10,
                                          ),
                                          Text(
                                            'Vote Count',
                                            style: TextStyle(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 15,
                                            width: 10,
                                          ),
                                          Container(
                                            child: Row(
                                              children: <Widget>[
                                                Text(
                                                  data.vote_count,
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.grey),
                                                ),
                                                Icon(Icons.people,
                                                    size: 14,
                                                    color: Colors.red),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class DetailMobileScreen extends StatelessWidget {
  final Movie data;

  const DetailMobileScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Expanded(
                    child: Image.network(data.backdrop_path),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.amberAccent,
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.black,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.amberAccent,
                            child: IconButton(
                              icon: Icon(
                                Icons.store,
                                color: Colors.black,
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(data.poster_path,
                            width: 100, height: 150),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            data.original_title,
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                            width: 10,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  data.vote_average,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                ),
                                Icon(Icons.favorite,
                                    size: 14, color: Colors.redAccent),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                            width: 10,
                          ),
                          Text(
                            data.release_date,
                            style: TextStyle(
                                fontSize: 12.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            'Detail',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                            width: 10,
                          ),
                          Text(
                            data.overview,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          SizedBox(
                            height: 15,
                            width: 10,
                          ),
                          Text(
                            'Vote Count',
                            style: TextStyle(
                                fontSize: 18.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                            width: 10,
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Text(
                                  data.vote_count,
                                  style: TextStyle(
                                      fontSize: 14.0, color: Colors.grey),
                                ),
                                Icon(Icons.people, size: 14, color: Colors.red),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: FavButton(),
      ),
    );
  }
}

class FavButton extends StatefulWidget {
  @override
  _FavButtonState createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFav ? Icons.bookmark : Icons.bookmark_border,
        color: Colors.black,
      ),
      onPressed: () {
        setState(() {
          isFav = !isFav;
        });
      },
    );
  }
}
