import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/movie_model.dart';

class DetailMovieScreen extends StatelessWidget {
  final Movie data;

  DetailMovieScreen({required this.data});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 800) {
          return DetailMobileScreen(data: data);
        } else {
          return DetailMobileScreen(data: data);
        }
      },
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
                  Image.network(data.backdrop_path),
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
                              onPressed: () {},
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
