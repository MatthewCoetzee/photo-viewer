class Photo {
  final String imageURL;
  final String title;

  Photo({required this.imageURL, required this.title});

  //Decodes the json data into a Photo object
  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(imageURL: json['src']['tiny'], title: json['alt']);
  }
}
