import 'dart:convert';

List<MyWatchlist> myWatchlistFromJson(String str) => List<MyWatchlist>.from(json.decode(str).map((x) => MyWatchlist.fromJson(x)));

String myWatchlistToJson(List<MyWatchlist> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MyWatchlist {
    MyWatchlist({
        required this.model,
        required this.pk,
        required this.fields,
    });

    Model? model;
    int pk;
    Fields fields;

    factory MyWatchlist.fromJson(Map<String, dynamic> json) => MyWatchlist(
        model: modelValues.map[json["model"]],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": modelValues.reverse![model],
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.title,
        required this.releaseDate,
        required this.rating,
        required this.review,
        required this.watched,
    });

    String title;
    String releaseDate;
    int rating;
    String review;
    Watched? watched;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        title: json["title"],
        releaseDate: json["release_date"],
        rating: json["rating"],
        review: json["review"],
        watched: watchedValues.map[json["watched"]],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "release_date": releaseDate,
        "rating": rating,
        "review": review,
        "watched": watchedValues.reverse![watched],
    };
}

enum Watched { YES }

final watchedValues = EnumValues({
    "Yes": Watched.YES
});

enum Model { MYWATCHLIST_MYWATCHLISTITEM }

final modelValues = EnumValues({
    "mywatchlist.mywatchlistitem": Model.MYWATCHLIST_MYWATCHLISTITEM
});

class EnumValues<T> {
    Map<String, T> map;
    Map<T, String>? reverseMap;

    EnumValues(this.map);

    Map<T, String>? get reverse {
        if (reverseMap == null) {
            reverseMap = map.map((k, v) => new MapEntry(v, k));
        }
        return reverseMap;
    }
}

