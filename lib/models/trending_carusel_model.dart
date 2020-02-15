class TrendingCarusel {
  String boldname;
  String simplename;
  String imageUrl;

  TrendingCarusel({this.boldname, this.imageUrl, this.simplename});
}

List<TrendingCarusel> trendings = [
  TrendingCarusel(
      boldname: 'The Gurunge Collection',
      simplename: 'Born For The Road',
      imageUrl: 'lib/images/trend1.jpg'),
  TrendingCarusel(
      boldname: 'On Point!',
      simplename: 'Premuim Cloths That Steal',
      imageUrl: 'lib/images/trend2.jpg'),
  TrendingCarusel(
      boldname: 'A Fresh Edge To Evryday',
      simplename: 'Printed Tees',
      imageUrl: 'lib/images/trend3.jpg'),
  TrendingCarusel(
      boldname: 'Up to 50% Off',
      simplename: 'Born For Shopping',
      imageUrl: 'lib/images/trend4.jpg')
];
