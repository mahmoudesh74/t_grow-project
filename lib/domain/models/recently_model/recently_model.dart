class RecentlyAdded {
 late int id;
late  String date;
late  String imageUrl;
late  String treatmentTitle;
late  String treatmentKey;
late  String treatmentContent;


  RecentlyAdded.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    imageUrl = json['imageUrl'];
    treatmentTitle = json['treatmentTitle'];
    treatmentKey = json['treatmentKey'];
    treatmentContent = json['treatmentContent'];
  }

}