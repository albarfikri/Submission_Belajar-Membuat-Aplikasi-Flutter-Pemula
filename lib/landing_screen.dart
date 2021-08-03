import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:submission/model/movie_model.dart';

import 'detail_movie_screen.dart';

class LandingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color:Colors.white,
          ), onPressed: () {  },
        ),
        title: Text('Movie Catalogue', style: TextStyle(color: Colors.white)),
        actions:[
          IconButton(
            icon:Icon(
              Icons.search,
              color: Colors.white,
            ), onPressed: () {  },
          )
        ],
      ),
      body: MovieCatalogueList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child:Icon(Icons.movie),
      ),
    );
  }
}

class MovieCatalogueList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Movie data = moviesList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return DetailMovieScreen();
            }));
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0)
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
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
                            child: Row(children: <Widget>[
                          Text(data.vote_average,
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.grey)),
                          Icon(Icons.star, size: 14, color: Colors.grey),
                        ])),
                        SizedBox(
                          height: 15,
                          width: 10,
                        ),
                        Text(
                          data.release_date,
                          style: TextStyle(
                              fontSize: 12.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 0,
                  child:
                  Image.network(data.poster_path, width: 100, height: 150),
                )
              ],
            ),
          ),
        );
      },
      itemCount: moviesList.length,
    );
  }
}
