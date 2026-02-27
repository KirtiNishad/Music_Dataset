import 'dart:convert';

class MusicListModel {
  final List<MusicDetail>? data;
  final int? total;
  final String? next;

  MusicListModel({
    this.data,
    this.total,
    this.next,
  });

  factory MusicListModel.fromRawJson(String str) => MusicListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MusicListModel.fromJson(Map<String, dynamic> json) => MusicListModel(
    data: json["data"] == null ? [] : List<MusicDetail>.from(json["data"]!.map((x) => MusicDetail.fromJson(x))),
    total: json["total"],
    next: json["next"],
  );

  Map<String, dynamic> toJson() => {
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "total": total,
    "next": next,
  };
}

class MusicDetail {
  final int? id;
  final bool? readable;
  final String? title;
  final String? titleShort;
  final String? titleVersion;
  final String? isrc;
  final String? link;
  final int? duration;
  final int? rank;
  final bool? explicitLyrics;
  final int? explicitContentLyrics;
  final int? explicitContentCover;
  final String? preview;
  final String? md5Image;
  final Artist? artist;
  final Album? album;
  final String? type;

  MusicDetail({
    this.id,
    this.readable,
    this.title,
    this.titleShort,
    this.titleVersion,
    this.isrc,
    this.link,
    this.duration,
    this.rank,
    this.explicitLyrics,
    this.explicitContentLyrics,
    this.explicitContentCover,
    this.preview,
    this.md5Image,
    this.artist,
    this.album,
    this.type,
  });

  factory MusicDetail.fromRawJson(String str) => MusicDetail.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MusicDetail.fromJson(Map<String, dynamic> json) => MusicDetail(
    id: json["id"],
    readable: json["readable"],
    title: json["title"],
    titleShort: json["title_short"],
    titleVersion: json["title_version"],
    isrc: json["isrc"],
    link: json["link"],
    duration: json["duration"],
    rank: json["rank"],
    explicitLyrics: json["explicit_lyrics"],
    explicitContentLyrics: json["explicit_content_lyrics"],
    explicitContentCover: json["explicit_content_cover"],
    preview: json["preview"],
    md5Image: json["md5_image"],
    artist: json["artist"] == null ? null : Artist.fromJson(json["artist"]),
    album: json["album"] == null ? null : Album.fromJson(json["album"]),
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "readable": readable,
    "title": title,
    "title_short": titleShort,
    "title_version": titleVersion,
    "isrc": isrc,
    "link": link,
    "duration": duration,
    "rank": rank,
    "explicit_lyrics": explicitLyrics,
    "explicit_content_lyrics": explicitContentLyrics,
    "explicit_content_cover": explicitContentCover,
    "preview": preview,
    "md5_image": md5Image,
    "artist": artist?.toJson(),
    "album": album?.toJson(),
    "type": type,
  };
}

class Album {
  final int? id;
  final String? title;
  final String? cover;
  final String? coverSmall;
  final String? coverMedium;
  final String? coverBig;
  final String? coverXl;
  final String? md5Image;
  final String? tracklist;
  final String? type;

  Album({
    this.id,
    this.title,
    this.cover,
    this.coverSmall,
    this.coverMedium,
    this.coverBig,
    this.coverXl,
    this.md5Image,
    this.tracklist,
    this.type,
  });

  factory Album.fromRawJson(String str) => Album.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Album.fromJson(Map<String, dynamic> json) => Album(
    id: json["id"],
    title: json["title"],
    cover: json["cover"],
    coverSmall: json["cover_small"],
    coverMedium: json["cover_medium"],
    coverBig: json["cover_big"],
    coverXl: json["cover_xl"],
    md5Image: json["md5_image"],
    tracklist: json["tracklist"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "cover": cover,
    "cover_small": coverSmall,
    "cover_medium": coverMedium,
    "cover_big": coverBig,
    "cover_xl": coverXl,
    "md5_image": md5Image,
    "tracklist": tracklist,
    "type": type,
  };
}

class Artist {
  final int? id;
  final String? name;
  final String? link;
  final String? picture;
  final String? pictureSmall;
  final String? pictureMedium;
  final String? pictureBig;
  final String? pictureXl;
  final String? tracklist;
  final String? type;

  Artist({
    this.id,
    this.name,
    this.link,
    this.picture,
    this.pictureSmall,
    this.pictureMedium,
    this.pictureBig,
    this.pictureXl,
    this.tracklist,
    this.type,
  });

  factory Artist.fromRawJson(String str) => Artist.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Artist.fromJson(Map<String, dynamic> json) => Artist(
    id: json["id"],
    name: json["name"],
    link: json["link"],
    picture: json["picture"],
    pictureSmall: json["picture_small"],
    pictureMedium: json["picture_medium"],
    pictureBig: json["picture_big"],
    pictureXl: json["picture_xl"],
    tracklist: json["tracklist"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "link": link,
    "picture": picture,
    "picture_small": pictureSmall,
    "picture_medium": pictureMedium,
    "picture_big": pictureBig,
    "picture_xl": pictureXl,
    "tracklist": tracklist,
    "type": type,
  };
}
