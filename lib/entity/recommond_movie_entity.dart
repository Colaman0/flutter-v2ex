class RecommondMovieEntity {
	dynamic interest;
	RecommondMovieRating rating;
	String algJson;
	RecommondMoviePic pic;
	String id;
	String title;
	String type;
	String uri;
	String sharingUrl;
	String url;

	RecommondMovieEntity({this.interest, this.rating, this.algJson, this.pic, this.id, this.title, this.type, this.uri, this.sharingUrl, this.url});

	RecommondMovieEntity.fromJson(Map<String, dynamic> json) {
		interest = json['interest'];
		rating = json['rating'] != null ? new RecommondMovieRating.fromJson(json['rating']) : null;
		algJson = json['alg_json'];
		pic = json['pic'] != null ? new RecommondMoviePic.fromJson(json['pic']) : null;
		id = json['id'];
		title = json['title'];
		type = json['type'];
		uri = json['uri'];
		sharingUrl = json['sharing_url'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['interest'] = this.interest;
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		data['alg_json'] = this.algJson;
		if (this.pic != null) {
      data['pic'] = this.pic.toJson();
    }
		data['id'] = this.id;
		data['title'] = this.title;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['sharing_url'] = this.sharingUrl;
		data['url'] = this.url;
		return data;
	}
}

class RecommondMovieRating {
	int max;
	int count;
	String value;
	String starCount;

	RecommondMovieRating({this.max, this.count, this.value, this.starCount});

	RecommondMovieRating.fromJson(Map<String, dynamic> json) {
		max = json['max'];
		count = json['count'];
		value = json['value'].toString();
		starCount = json['star_count'].toString();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['max'] = this.max;
		data['count'] = this.count;
		data['value'] = this.value;
		data['star_count'] = this.starCount;
		return data;
	}
}

class RecommondMoviePic {
	String normal;
	String large;

	RecommondMoviePic({this.normal, this.large});

	RecommondMoviePic.fromJson(Map<String, dynamic> json) {
		normal = json['normal'];
		large = json['large'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['normal'] = this.normal;
		data['large'] = this.large;
		return data;
	}
}
