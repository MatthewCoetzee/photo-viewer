import 'dart:convert';

import 'package:photoviewer/constants/constants.dart';
import 'package:photoviewer/exceptions/exceptions.dart';
import 'package:photoviewer/models/photo_model.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class PhotoViewerRepository {
  ///Fetches 10 photos from the Pexels API
  ///The index is the page number
  ///The previous photos(if there are any) are combined with the new photos
  ///to form a new list of photos
  Future<List<Photo>> getPhotoList(
      int? currentIndex, List<Photo> previousPhotos,
      {MockApi? client}) async {
    //Gets API key from .ENV
    String? apiKey = dotenv.env['API_KEY'];
    //Parses url with updated indices into a URI
    Uri url = Uri.parse(
        'https://api.pexels.com/v1/curated?page=$currentIndex&per_page=10');

    List<Photo> photos = [];
    //Adds the last photos into the new list
    photos.addAll(previousPhotos);
    if (apiKey != null) {
      //Response from API request
      var response = client != null
          ? await client.get(url, headers: {
              "Authorization": apiKey,
            })
          : await http.get(url, headers: {
              "Authorization": apiKey,
            });
      //Check to see if request was successful
      if (response.statusCode == 200) {
        //Decodes json data
        Map<String, dynamic> jsonData = jsonDecode(response.body);
        //Adds each photo to the list of photos
        jsonData['photos'].forEach((photoJson) {
          photos.add(Photo.fromJson(photoJson));
        });
      } else {
        //Throw status code error
        throw StatusCodeException(statusCode: response.statusCode);
      }
    } else {
      //Throws an internal error which occured
      throw InternalException();
    }

    return photos;
  }
}
