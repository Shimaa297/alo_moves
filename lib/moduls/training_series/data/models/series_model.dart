class SeriesModel {
  String? coverPhotoUrl;
  String? seriesName;
  String? coacheName;
  String? aboutSeries;

  SeriesModel({
    this.coacheName,
    this.coverPhotoUrl,
    this.aboutSeries,
    this.seriesName,
  });

  SeriesModel.fromJson(Map<String, dynamic> json) {
    coverPhotoUrl = json['coverPhotoUrl'];
    seriesName = json['seriesName'];
    coacheName = json['coacheName'];
    aboutSeries = json['aboutSeries'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['coverPhotoUrl'] = coverPhotoUrl;
    data['seriesName'] = seriesName;
    data['coacheName'] = coacheName;
    data['aboutSeries'] = aboutSeries;
    return data;
  }
}
