class QuoteModel {
  String? qotdDate;
  Quote? quote;

  QuoteModel({this.qotdDate, this.quote});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    qotdDate = json["qotd_date"];
    quote = Quote.fromJson(json["quote"]);
  }
}

class Quote {
  int? id;
  bool? dialogue;
  String? source;
  String? context;
  bool? private;
  List<String>? tags;
  String? url;
  int? favoritesCount;
  int? upvotesCount;
  int? downvotesCount;
  String? author;
  String? authorPermalink;
  String? body;

  Quote(
      {this.id,
      this.dialogue,
      this.source,
      this.context,
      this.private,
      this.tags,
      this.url,
      this.favoritesCount,
      this.upvotesCount,
      this.downvotesCount,
      this.author,
      this.authorPermalink,
      this.body});

  Quote.fromJson(Map<String, dynamic> json) {
    id = json["id"];

    dialogue = json["dialogue"];

    source = json["source"];

    context = json["context"];

    private = json["private"];

    url = json["url"];

    favoritesCount = json["favorites_count"];

    upvotesCount = json["upvotes_count"];

    downvotesCount = json["downvotes_count"];

    author = json["author"];

    authorPermalink = json["author_permalink"];

    body = json["body"];
  }
}
