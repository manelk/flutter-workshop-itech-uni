class ApodModel {
  // Method 1: Unamed CONSTRUCTOR
  ApodModel(this.copyright, this.date, this.explanation, this.title, this.url);

  //  Method 2: NAMED CONSTRUCTOR
  // Try it out: uncomment and test

  // ApodModel({
  //   this.copyright = "default value",
  //   this.date,
  //   this.explanation,
  //   this.title,
  //   this.url,
  // });

  final String copyright;
  final String date;
  final String explanation;
  final String title;
  final String url;
}
