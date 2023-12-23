

class ArticlesModel {
 final  String? urlToImage;
 final  String title;
 final  String? description;
  ArticlesModel({
   required  this.urlToImage,
   required this.title,
   required this.description,
  });
   factory ArticlesModel.fromJson( json) {
    return ArticlesModel(
      urlToImage: json['urlToImage'],
      title: json['title'] ,
      description: json['Description'],
    );
  }
}


