class HotTVEntity {
	int total;
	List<HotTVSubjectCollectionItem> subjectCollectionItems;
	int count;
	int start;
	HotTVSubjectCollection subjectCollection;

	HotTVEntity({this.total, this.subjectCollectionItems, this.count, this.start, this.subjectCollection});

	HotTVEntity.fromJson(Map<String, dynamic> json) {
		total = json['total'];
		if (json['subject_collection_items'] != null) {
			subjectCollectionItems = new List<HotTVSubjectCollectionItem>();(json['subject_collection_items'] as List).forEach((v) { subjectCollectionItems.add(new HotTVSubjectCollectionItem.fromJson(v)); });
		}
		count = json['count'];
		start = json['start'];
		subjectCollection = json['subject_collection'] != null ? new HotTVSubjectCollection.fromJson(json['subject_collection']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['total'] = this.total;
		if (this.subjectCollectionItems != null) {
      data['subject_collection_items'] =  this.subjectCollectionItems.map((v) => v.toJson()).toList();
    }
		data['count'] = this.count;
		data['start'] = this.start;
		if (this.subjectCollection != null) {
      data['subject_collection'] = this.subjectCollection.toJson();
    }
		return data;
	}
}

class HotTVSubjectCollectionItem {
	dynamic date;
	dynamic originalPrice;
	String recommendComment;
	String year;
	List<String> directors;
	HotTVSubjectCollectionItemsRating rating;
	String description;
	String title;
	String type;
	HotTVSubjectCollectionItemsCover cover;
	bool isNewTv;
	dynamic interest;
	String subtype;
	HotTVSubjectCollectionItemsForumInfo forumInfo;
	dynamic price;
	String id;
	String info;
	dynamic label;
	String uri;
	String url;
	String cardSubtitle;
	List<String> actors;
	bool hasLinewatch;
	String releaseDate;
	String reviewerName;
	String nullRatingReason;
	List<Null> actions;

	HotTVSubjectCollectionItem({this.date, this.originalPrice, this.recommendComment, this.year, this.directors, this.rating, this.description, this.title, this.type, this.cover, this.isNewTv, this.interest, this.subtype, this.forumInfo, this.price, this.id, this.info, this.label, this.uri, this.url, this.cardSubtitle, this.actors, this.hasLinewatch, this.releaseDate, this.reviewerName, this.nullRatingReason, this.actions});

	HotTVSubjectCollectionItem.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		originalPrice = json['original_price'];
		recommendComment = json['recommend_comment'];
		year = json['year'];
		directors = json['directors']?.cast<String>();
		rating = json['rating'] != null ? new HotTVSubjectCollectionItemsRating.fromJson(json['rating']) : null;
		description = json['description'];
		title = json['title'];
		type = json['type'];
		cover = json['cover'] != null ? new HotTVSubjectCollectionItemsCover.fromJson(json['cover']) : null;
		isNewTv = json['is_new_tv'];
		interest = json['interest'];
		subtype = json['subtype'];
		forumInfo = json['forum_info'] != null ? new HotTVSubjectCollectionItemsForumInfo.fromJson(json['forum_info']) : null;
		price = json['price'];
		id = json['id'];
		info = json['info'];
		label = json['label'];
		uri = json['uri'];
		url = json['url'];
		cardSubtitle = json['card_subtitle'];
		actors = json['actors']?.cast<String>();
		hasLinewatch = json['has_linewatch'];
		releaseDate = json['release_date'];
		reviewerName = json['reviewer_name'];
		nullRatingReason = json['null_rating_reason'];
		if (json['actions'] != null) {
			actions = new List<Null>();
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = this.date;
		data['original_price'] = this.originalPrice;
		data['recommend_comment'] = this.recommendComment;
		data['year'] = this.year;
		data['directors'] = this.directors;
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		data['description'] = this.description;
		data['title'] = this.title;
		data['type'] = this.type;
		if (this.cover != null) {
      data['cover'] = this.cover.toJson();
    }
		data['is_new_tv'] = this.isNewTv;
		data['interest'] = this.interest;
		data['subtype'] = this.subtype;
		if (this.forumInfo != null) {
      data['forum_info'] = this.forumInfo.toJson();
    }
		data['price'] = this.price;
		data['id'] = this.id;
		data['info'] = this.info;
		data['label'] = this.label;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['card_subtitle'] = this.cardSubtitle;
		data['actors'] = this.actors;
		data['has_linewatch'] = this.hasLinewatch;
		data['release_date'] = this.releaseDate;
		data['reviewer_name'] = this.reviewerName;
		data['null_rating_reason'] = this.nullRatingReason;
		if (this.actions != null) {
      data['actions'] =  [];
    }
		return data;
	}
}

class HotTVSubjectCollectionItemsRating {
	int max;
	int count;
	double value;

	HotTVSubjectCollectionItemsRating({this.max, this.count, this.value});

	HotTVSubjectCollectionItemsRating.fromJson(Map<String, dynamic> json) {
		max = json['max'];
		count = json['count'];
		value = json['value'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['max'] = this.max;
		data['count'] = this.count;
		data['value'] = this.value;
		return data;
	}
}

class HotTVSubjectCollectionItemsCover {
	String shape;
	int width;
	String url;
	int height;

	HotTVSubjectCollectionItemsCover({this.shape, this.width, this.url, this.height});

	HotTVSubjectCollectionItemsCover.fromJson(Map<String, dynamic> json) {
		shape = json['shape'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['shape'] = this.shape;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class HotTVSubjectCollectionItemsForumInfo {
	int participantCount;
	String id;
	String uri;

	HotTVSubjectCollectionItemsForumInfo({this.participantCount, this.id, this.uri});

	HotTVSubjectCollectionItemsForumInfo.fromJson(Map<String, dynamic> json) {
		participantCount = json['participant_count'];
		id = json['id'];
		uri = json['uri'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['participant_count'] = this.participantCount;
		data['id'] = this.id;
		data['uri'] = this.uri;
		return data;
	}
}

class HotTVSubjectCollection {
	String coverUrl;
	bool showRank;
	String subjectType;
	String typeText;
	bool showHeaderMask;
	HotTVSubjectCollectionDisplay display;
	String moreDescription;
	String description;
	String miniProgramName;
	String mediumName;
	String uri;
	String sharingUrl;
	String url;
	int subjectCount;
	bool showFilterPlayable;
	dynamic updatedAt;
	String subtitle;
	String name;
	String shortName;
	String miniProgramPage;
	String typeIconBgText;
	String id;
	HotTVSubjectCollectionBackgroundColorScheme backgroundColorScheme;
	String iconFgImage;

	HotTVSubjectCollection({this.coverUrl, this.showRank, this.subjectType, this.typeText, this.showHeaderMask, this.display, this.moreDescription, this.description, this.miniProgramName, this.mediumName, this.uri, this.sharingUrl, this.url, this.subjectCount, this.showFilterPlayable, this.updatedAt, this.subtitle, this.name, this.shortName, this.miniProgramPage, this.typeIconBgText, this.id, this.backgroundColorScheme, this.iconFgImage});

	HotTVSubjectCollection.fromJson(Map<String, dynamic> json) {
		coverUrl = json['cover_url'];
		showRank = json['show_rank'];
		subjectType = json['subject_type'];
		typeText = json['type_text'];
		showHeaderMask = json['show_header_mask'];
		display = json['display'] != null ? new HotTVSubjectCollectionDisplay.fromJson(json['display']) : null;
		moreDescription = json['more_description'];
		description = json['description'];
		miniProgramName = json['mini_program_name'];
		mediumName = json['medium_name'];
		uri = json['uri'];
		sharingUrl = json['sharing_url'];
		url = json['url'];
		subjectCount = json['subject_count'];
		showFilterPlayable = json['show_filter_playable'];
		updatedAt = json['updated_at'];
		subtitle = json['subtitle'];
		name = json['name'];
		shortName = json['short_name'];
		miniProgramPage = json['mini_program_page'];
		typeIconBgText = json['type_icon_bg_text'];
		id = json['id'];
		backgroundColorScheme = json['background_color_scheme'] != null ? new HotTVSubjectCollectionBackgroundColorScheme.fromJson(json['background_color_scheme']) : null;
		iconFgImage = json['icon_fg_image'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover_url'] = this.coverUrl;
		data['show_rank'] = this.showRank;
		data['subject_type'] = this.subjectType;
		data['type_text'] = this.typeText;
		data['show_header_mask'] = this.showHeaderMask;
		if (this.display != null) {
      data['display'] = this.display.toJson();
    }
		data['more_description'] = this.moreDescription;
		data['description'] = this.description;
		data['mini_program_name'] = this.miniProgramName;
		data['medium_name'] = this.mediumName;
		data['uri'] = this.uri;
		data['sharing_url'] = this.sharingUrl;
		data['url'] = this.url;
		data['subject_count'] = this.subjectCount;
		data['show_filter_playable'] = this.showFilterPlayable;
		data['updated_at'] = this.updatedAt;
		data['subtitle'] = this.subtitle;
		data['name'] = this.name;
		data['short_name'] = this.shortName;
		data['mini_program_page'] = this.miniProgramPage;
		data['type_icon_bg_text'] = this.typeIconBgText;
		data['id'] = this.id;
		if (this.backgroundColorScheme != null) {
      data['background_color_scheme'] = this.backgroundColorScheme.toJson();
    }
		data['icon_fg_image'] = this.iconFgImage;
		return data;
	}
}

class HotTVSubjectCollectionDisplay {
	String layout;

	HotTVSubjectCollectionDisplay({this.layout});

	HotTVSubjectCollectionDisplay.fromJson(Map<String, dynamic> json) {
		layout = json['layout'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['layout'] = this.layout;
		return data;
	}
}

class HotTVSubjectCollectionBackgroundColorScheme {
	String primaryColorLight;
	String primaryColorDark;
	String secondaryColor;
	bool isDark;

	HotTVSubjectCollectionBackgroundColorScheme({this.primaryColorLight, this.primaryColorDark, this.secondaryColor, this.isDark});

	HotTVSubjectCollectionBackgroundColorScheme.fromJson(Map<String, dynamic> json) {
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
