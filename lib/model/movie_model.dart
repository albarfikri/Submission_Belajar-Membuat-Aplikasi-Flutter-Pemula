class Movie {
  String backdrop_path;
  String original_language;
  String original_title;
  String overview;
  String popularity;
  String poster_path;
  String release_date;
  String vote_average;
  String vote_count;

  Movie({required this.backdrop_path,
    required this.original_language,
    required this.original_title,
    required this.overview,
    required this.popularity,
    required this.poster_path,
    required this.release_date,
    required this.vote_average,
    required this.vote_count});
}

final String url = 'https://image.tmdb.org/t/p/w500';
var moviesList = [
  Movie(
      backdrop_path: url + '/8s4h9friP6Ci3adRGahHARVd76E.jpg',
      original_language: 'en',
      original_title: 'Space Jam: A New Legacy',
      overview:
      'When LeBron and his young son Dom are trapped in a digital space by a rogue A.I., LeBron must get them home safe by leading Bugs, Lola Bunny and the whole gang of notoriously undisciplined Looney Tunes to victory over the A.I.s digitized champions on the court. It\'s Tunes versus Goons in the highest-stakes challenge of his life.',
      popularity: '4781.639',
      poster_path: url + '/5bFK5d3mVTAvBCXi5NPWH0tYjKl.jpg',
      release_date: '2021-07-08',
      vote_average: '7.7',
      vote_count: '1419'),

  Movie(
      backdrop_path: url + '/4epzcO9HGbfc8BUJT0oNkL3rmCO.jpg',
      original_language: 'en',
      original_title: 'F9',
      overview:
      'Dominic Toretto and his crew battle the most skilled assassin and high-performance driver they\'ve ever encountered: his forsaken brother.',
      popularity: '5860.581',
      poster_path: url + '/bOFaAXmWWXC3Rbv4u4uM9ZSzRXP.jpg',
      release_date: '2021-05-19',
      vote_average: '7.8',
      vote_count: '1728'),

  Movie(
      backdrop_path: url + '/keIxh0wPr2Ymj0Btjh4gW7JJ89e.jpg',
      original_language: 'en',
      original_title: 'Black Widow',
      overview:
      'Natasha Romanoff, also known as Black Widow, confronts the darker parts of her ledger when a dangerous conspiracy with ties to her past arises. Pursued by a force that will stop at nothing to bring her down, Natasha must deal with her history as a spy and the broken relationships left in her wake long before she became an Avenger.',
      popularity: '4627.772',
      poster_path: url + '/qAZ0pzat24kLdO3o8ejmbLxyOac.jpg',
      release_date: '2021-07-07',
      vote_average: '7.9',
      vote_count: '3662'),

  Movie(
      backdrop_path: url + '/gX5UrH1TLVVBwI7WxplW43BD6Z1.jpg',
      original_language: 'en',
      original_title: 'The Boss Baby: Family Business',
      overview:
      'The Templeton brothers — Tim and his Boss Baby little bro Ted — have become adults and drifted away from each other. But a new boss baby with a cutting-edge approach and a can-do attitude is about to bring them together again … and inspire a new family business.',
      release_date: '2021-07-01',
      popularity: '3444.216',
      poster_path: url + '/5dExO5G2iaaTxYnLIFKLWofDzyI.jpg',
      vote_average: '7.9',
      vote_count: '992'),

  Movie(
      backdrop_path: url + '/tehpKMsls621GT9WUQie2Ft6LmP.jpg',
      original_language: 'en',
      original_title: 'The Forever Purge',
      overview:
      'All the rules are broken as a sect of lawless marauders decides that the annual Purge does not stop at daybreak and instead should never end as they chase a group of immigrants who they want to punish because of their harsh historical past.',
      release_date: '2021-06-30',
      popularity: '3702.294',
      poster_path: url + '/uHA5COgDzcxjpYSHHulrKVl6ByL.jpg',
      vote_average: '7.9',
      vote_count: '992'),

  Movie(
      backdrop_path: url + '/zm2kMjiz0u6qdn2XKbEbQkDiltN.jpg',
      original_language: 'es',
      original_title: 'El exorcismo de Carmen Farías',
      overview:
      'Carmen, a brave journalist, discovers soon after her mother\'s death that she has inherited her grandma\'s house. She decides to move there without knowing it hides dark secrets.',
      release_date: '2021-07-05',
      popularity: '2581.669',
      poster_path: url + '/uoTPjx07dxTrC1g3dYeaS2WNVGL.jpg',
      vote_average: '6.6',
      vote_count: '36'),

  Movie(
      backdrop_path: url + '/7WJjFviFBffEJvkAms4uWwbcVUk.jpg',
      original_language: 'en',
      original_title: 'Jungle Cruise',
      overview: 'Dr. Lily Houghton enlists the aid of wisecracking skipper Frank Wolff to take her down the Amazon in his dilapidated boat. Together, they search for an ancient tree that holds the power to heal – a discovery that will change the future of medicine.',
      release_date: '2021-07-28',
      popularity: '1946.942',
      poster_path: url + '/9dKCd55IuTT5QRs989m9Qlb7d2B.jpg',
      vote_average: '8.2',
      vote_count: '645'),

    Movie(
      backdrop_path: url + '/6MKr3KgOLmzOP6MSuZERO41Lpkt.jpg',
      original_language: 'en',
      original_title: 'Cruella',
      overview: 'In 1970s London amidst the punk rock revolution, a young grifter named Estella is determined to make a name for herself with her designs. She befriends a pair of young thieves who appreciate her appetite for mischief, and together they are able to build a life for themselves on the London streets. One day, Estella’s flair for fashion catches the eye of the Baroness von Hellman, a fashion legend who is devastatingly chic and terrifyingly haute. But their relationship sets in motion a course of events and revelations that will cause Estella to embrace her wicked side and become the raucous, fashionable and revenge-bent Cruella.',
      release_date: '2021-05-26',
      popularity: '1635.546',
      poster_path: url + '/rTh4K5uw9HypmpGslcKd4QfHl93.jpg',
      vote_average: '8.4',
      vote_count: '4478'),


  Movie(
      backdrop_path: url + '/5HjzYTihkH7EvOWSE7KcsF6pBMM.jpg',
      original_language: 'en',
      original_title: 'Peter Rabbit 2: The Runaway',
      overview: 'Bea, Thomas, and the rabbits have created a makeshift family, but despite his best efforts, Peter can’t seem to shake his mischievous reputation. Adventuring out of the garden, Peter finds himself in a world where his mischief is appreciated, but when his family risks everything to come looking for him, Peter must figure out what kind of bunny he wants to be.',
      release_date: '2021-03-25',
      popularity: '1481.849',
      poster_path: url + '/cycDz68DtTjJrDJ1fV8EBq2Xdpb.jpg',
      vote_average: '7.4',
      vote_count: '223'),

  Movie(
      backdrop_path: url + '/70AV2Xx5FQYj20labp0EGdbjI6E.jpg',
      original_language: 'en',
      original_title: 'Wrath of Man',
      overview: 'A cold and mysterious new security guard for a Los Angeles cash truck company surprises his co-workers when he unleashes precision skills during a heist. The crew is left wondering who he is and where he came from. Soon, the marksman\'s ultimate motive becomes clear as he takes dramatic and irrevocable steps to settle a score.',
      release_date: '2021-04-22',
      popularity: '1558.624',
      poster_path: url + '/M7SUK85sKjaStg4TKhlAVyGlz3.jpg',
      vote_average: '7.9',
      vote_count: '1672'),
];
