class ArtistMainInfo {
  const ArtistMainInfo({
    this.apiPath = '',
    this.headerImageUrl = '',
    this.id = 0,
    this.imageUrl = '',
    this.name = '',
    this.url = '',
  });

  final String apiPath;
  final String headerImageUrl;
  final int id;
  final String imageUrl;
  final String name;
  final String url;

  factory ArtistMainInfo.fromJson(Map<String, dynamic> json) => ArtistMainInfo(
        apiPath: json['api_path'],
        headerImageUrl: json['header_image_url'],
        id: json['id'],
        imageUrl: json['image_url'],
        name: json['name'],
        url: json['url'],
      );

  Map<String, dynamic> toJson() => {
        'api_path': apiPath,
        'header_image_url': headerImageUrl,
        'id': id,
        'image_url': imageUrl,
        'name': name,
        'url': url,
      };
}
