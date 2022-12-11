class Location {
  const Location({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}


const locations = [
  Location(
    name: 'Everest Base Camp',
    place: 'Nepal',
    imageUrl: 'https://www.holidify.com/images/cmsuploads/compressed/mount-everest_20180710001111.jpg',
  ),
  Location(
    name: 'Chitwan National Park',
    place: 'Chitwan',
    imageUrl: 'https://www.oyorooms.com/blog/wp-content/uploads/2018/08/CHITWAN-NATIONAL-PARK-min.jpg',
  ),
  Location(
    name: 'Sarangkot',
    place: 'Pokhara',
    imageUrl: 'https://www.holidify.com/images/cmsuploads/compressed/sarangkot_20180710001134.jpg',
  ),
  Location(
    name: 'Bouddhanath Stupa',
    place: 'Kathmandu',
    imageUrl: 'https://www.holidify.com/images/cmsuploads/compressed/22043951124_08c344201f_h_20180710001301.jpg',
  ),
  Location(
    name: 'Barun Valley',
    place: 'Sankhuwasabha',
    imageUrl: 'https://www.holidify.com/images/cmsuploads/compressed/Barun_Valley_-_Nghe_20180710001306.jpg',
  ),
  Location(
    name: 'Tilicho Lake',
    place: 'Manang',
    imageUrl: 'https://www.oyorooms.com/blog/wp-content/uploads/2018/08/TILICHO-LAKE-min.jpg',
  ),
  Location(
    name: 'Kathmandu Durbar Square',
    place: 'kathmandu',
    imageUrl: 'https://suggestnepal.com/wp-content/uploads/2014/08/8134260194_5307e80a99_z.jpg',
  ),
];