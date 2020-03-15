
class PublishItemModel{
  String username;
  String graphername;
  String grapherschool;
  String imageUrl;

  PublishItemModel({
    this.username,
    this.graphername,
    this.grapherschool,
    this.imageUrl,
  });

  factory PublishItemModel.fromJson(dynamic json){
    return PublishItemModel(
      username: json['username'],
      graphername: json['graphername'],
      grapherschool: json['grapherschool'],
      imageUrl: json['imageUrl'],
    );
  }
}

class PublishListModel{

  List<PublishItemModel> data;
  PublishListModel(this.data);

  factory PublishListModel.fromJson(List json){
    return PublishListModel(
      json.map((i)=>PublishItemModel.fromJson((i))).toList()
    );
  }
}