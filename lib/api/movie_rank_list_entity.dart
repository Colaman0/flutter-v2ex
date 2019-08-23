class MovieRankListEntity {
	int total;
	int count;
	int start;
	String title;
	List<MovieRankListSelectedCollection> selectedCollections;

	MovieRankListEntity({this.total, this.count, this.start, this.title, this.selectedCollections});

	MovieRankListEntity.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		count = json['count'];
		start = json['start'];
		title = json['title'];
		if (json['selected_collections'] != null) {
			selectedCollections = new List<MovieRankListSelectedCollection>();(json['selected_collections'] as List).forEach((v) { selectedCollections.add(new MovieRankListSelectedCollection.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this.total;
		data['count'] = this.count;
		data['start'] = this.start;
		data['title'] = this.title;
		if (this.selectedCollections != null) {
      data['selected_collections'] =  this.selectedCollections.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class MovieRankListSelectedCollection {
	String coverUrl;
	String typeText;
	String description;
	String uri;
	String mediumName;
	String url;
	int total;
	String updatedAt;
	String backgroundColor;
	String name;
	bool rank;
	String id;
	MovieRankListSelectedCollectionsBackgroundColorScheme backgroundColorScheme;
	String headerFgImage;
	List<MovieRankListSelectedCollectionsItem> items;
	String iconFgImage;
	String headerBgImage;
	List<String> covers;

	MovieRankListSelectedCollection({this.coverUrl, this.typeText, this.description, this.uri, this.mediumName, this.url, this.total, this.updatedAt, this.backgroundColor, this.name, this.rank, this.id, this.backgroundColorScheme, this.headerFgImage, this.items, this.iconFgImage, this.headerBgImage, this.covers});

	MovieRankListSelectedCollection.fromJson(Map<String, dynamic> json) {
		coverUrl = json['cover_url'];
		typeText = json['type_text'];
		description = json['description'];
		uri = json['uri'];
		mediumName = json['medium_name'];
		url = json['url'];
		total = json['total'];
		updatedAt = json['updated_at'];
		backgroundColor = json['background_color'];
		name = json['name'];
		rank = json['rank'];
		id = json['id'];
		backgroundColorScheme = json['background_color_scheme'] != null ? new MovieRankListSelectedCollectionsBackgroundColorScheme.fromJson(json['background_color_scheme']) : null;
		headerFgImage = json['header_fg_image'];
		if (json['items'] != null) {
			items = new List<MovieRankListSelectedCollectionsItem>();(json['items'] as List).forEach((v) { items.add(new MovieRankListSelectedCollectionsItem.fromJson(v)); });
		}
		iconFgImage = json['icon_fg_image'];
		headerBgImage = json['header_bg_image'];
		covers = json['covers']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover_url'] = this.coverUrl;
		data['type_text'] = this.typeText;
		data['description'] = this.description;
		data['uri'] = this.uri;
		data['medium_name'] = this.mediumName;
		data['url'] = this.url;
		data['total'] = this.total;
		data['updated_at'] = this.updatedAt;
		data['background_color'] = this.backgroundColor;
		data['name'] = this.name;
		data['rank'] = this.rank;
		data['id'] = this.id;
		if (this.backgroundColorScheme != null) {
      data['background_color_scheme'] = this.backgroundColorScheme.toJson();
    }
		data['header_fg_image'] = this.headerFgImage;
		if (this.items != null) {
      data['items'] =  this.items.map((v) => v.toJson()).toList();
    }
		data['icon_fg_image'] = this.iconFgImage;
		data['header_bg_image'] = this.headerBgImage;
		data['covers'] = this.covers;
		return data;
	}
}

class MovieRankListSelectedCollectionsBackgroundColorScheme {
	String primaryColorLight;
	String primaryColorDark;
	String secondaryColor;
	bool isDark;

	MovieRankListSelectedCollectionsBackgroundColorScheme({this.primaryColorLight, this.primaryColorDark, this.secondaryColor, this.isDark});

	MovieRankListSelectedCollectionsBackgroundColorScheme.fromJson(Map<String, dynamic> json) {
		primaryColorLight = json['primary_color_light'];
		primaryColorDark = json['primary_color_dark'];
		secondaryColor = json['secondary_color'];
		isDark = json['is_dark'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['primary_color_light'] = this.primaryColorLight;
		data['primary_color_dark'] = this.primaryColorDark;
		data['secondary_color'] = this.secondaryColor;
		data['is_dark'] = this.isDark;
		return data;
	}
}

class MovieRankListSelectedCollectionsItem {
	String year;
	bool isReleased;
	List<MovieRankListSelectedCollectionsItemsDirector> directors;
	MovieRankListSelectedCollectionsItemsRating rating;
	MovieRankListSelectedCollectionsItemsPic pic;
	String title;
	String type;
	String uri;
	bool isShow;
	String sharingUrl;
	String url;
	String cardSubtitle;
	List<MovieRankListSelectedCollectionsItemsActor> actors;
	bool trendEqual;
	bool hasLinewatch;
	dynamic releaseDate;
	String subtype;
	List<String> genres;
	bool trendDown;
	String nullRatingReason;
	bool trendUp;
	MovieRankListSelectedCollectionsItemsColorScheme colorScheme;
	String id;
	List<String> pubdate;

	MovieRankListSelectedCollectionsItem({this.year, this.isReleased, this.directors, this.rating, this.pic, this.title, this.type, this.uri, this.isShow, this.sharingUrl, this.url, this.cardSubtitle, this.actors, this.trendEqual, this.hasLinewatch, this.releaseDate, this.subtype, this.genres, this.trendDown, this.nullRatingReason, this.trendUp, this.colorScheme, this.id, this.pubdate});

	MovieRankListSelectedCollectionsItem.fromJson(Map<String, dynamic> json) {
		year = json['year'];
		isReleased = json['is_released'];
		if (json['directors'] != null) {
			directors = new List<MovieRankListSelectedCollectionsItemsDirector>();(json['directors'] as List).forEach((v) { directors.add(new MovieRankListSelectedCollectionsItemsDirector.fromJson(v)); });
		}
		rating = json['rating'] != null ? new MovieRankListSelectedCollectionsItemsRating.fromJson(json['rating']) : null;
		pic = json['pic'] != null ? new MovieRankListSelectedCollectionsItemsPic.fromJson(json['pic']) : null;
		title = json['title'];
		type = json['type'];
		uri = json['uri'];
		isShow = json['is_show'];
		sharingUrl = json['sharing_url'];
		url = json['url'];
		cardSubtitle = json['card_subtitle'];
		if (json['actors'] != null) {
			actors = new List<MovieRankListSelectedCollectionsItemsActor>();(json['actors'] as List).forEach((v) { actors.add(new MovieRankListSelectedCollectionsItemsActor.fromJson(v)); });
		}
		trendEqual = json['trend_equal'];
		hasLinewatch = json['has_linewatch'];
		releaseDate = json['release_date'];
		subtype = json['subtype'];
		genres = json['genres']?.cast<String>();
		trendDown = json['trend_down'];
		nullRatingReason = json['null_rating_reason'];
		trendUp = json['trend_up'];
		colorScheme = json['color_scheme'] != null ? new MovieRankListSelectedCollectionsItemsColorScheme.fromJson(json['color_scheme']) : null;
		id = json['id'];
		pubdate = json['pubdate']?.cast<String>();
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['year'] = this.year;
		data['is_released'] = this.isReleased;
		if (this.directors != null) {
      data['directors'] =  this.directors.map((v) => v.toJson()).toList();
    }
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		if (this.pic != null) {
      data['pic'] = this.pic.toJson();
    }
		data['title'] = this.title;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['is_show'] = this.isShow;
		data['sharing_url'] = this.sharingUrl;
		data['url'] = this.url;
		data['card_subtitle'] = this.cardSubtitle;
		if (this.actors != null) {
      data['actors'] =  this.actors.map((v) => v.toJson()).toList();
    }
		data['trend_equal'] = this.trendEqual;
		data['has_linewatch'] = this.hasLinewatch;
		data['release_date'] = this.releaseDate;
		data['subtype'] = this.subtype;
		data['genres'] = this.genres;
		data['trend_down'] = this.trendDown;
		data['null_rating_reason'] = this.nullRatingReason;
		data['trend_up'] = this.trendUp;
		if (this.colorScheme != null) {
      data['color_scheme'] = this.colorScheme.toJson();
    }
		data['id'] = this.id;
		data['pubdate'] = this.pubdate;
		return data;
	}
}

class MovieRankListSelectedCollectionsItemsDirector {
	String name;

	MovieRankListSelectedCollectionsItemsDirector({this.name});

	MovieRankListSelectedCollectionsItemsDirector.fromJson(Map<String, dynamic> json) {
		name = json['name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		return data;
	}
}

class MovieRankListSelectedCollectionsItemsRating {
	int max;
	int count;
	double value;
	double starCount;

	MovieRankListSelectedCollectionsItemsRating({this.max, this.count, this.value, this.starCount});

	MovieRankListSelectedCollectionsItemsRating.fromJson(Map<String, dynamic> json) {
		max = json['max'];
		count = json['count'];
		value = json['value'];
		starCount = json['star_count'];
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

class MovieRankListSelectedCollectionsItemsPic {
	String normal;
	String large;

	MovieRankListSelectedCollectionsItemsPic({this.normal, this.large});

	MovieRankListSelectedCollectionsItemsPic.fromJson(Map<String, dynamic> json) {
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

class MovieRankListSelectedCollectionsItemsActor {
	String name;

	MovieRankListSelectedCollectionsItemsActor({this.name});

	MovieRankListSelectedCollectionsItemsActor.fromJson(Map<String, dynamic> json) {
		name = json['name'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		return data;
	}
}

class MovieRankListSelectedCollectionsItemsColorScheme {
	String primaryColorLight;
	List<double> lAvgColor;
	String primaryColorDark;
	String secondaryColor;
	List<double> lBaseColor;
	bool isDark;

	MovieRankListSelectedCollectionsItemsColorScheme({this.primaryColorLight, this.lAvgColor, this.primaryColorDark, this.secondaryColor, this.lBaseColor, this.isDark});

	MovieRankListSelectedCollectionsItemsColorScheme.fromJson(Map<String, dynamic> json) {
		primaryColorLight = json['primary_color_light'];
		lAvgColor = json['_avg_color']?.cast<double>();
		primaryColorDark = json['primary_color_dark'];
		secondaryColor = json['secondary_color'];
		lBaseColor = json['_base_color']?.cast<double>();
		isDark = json['is_dark'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['primary_color_light'] = this.primaryColorLight;
		data['_avg_color'] = this.lAvgColor;
		data['primary_color_dark'] = this.primaryColorDark;
		data['secondary_color'] = this.secondaryColor;
		data['_base_color'] = this.lBaseColor;
		data['is_dark'] = this.isDark;
		return data;
	}
}
