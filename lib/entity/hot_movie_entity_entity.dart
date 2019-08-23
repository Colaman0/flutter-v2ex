class HotMovieEntityEntity {
	int total;
	List<HotMovieEntitySubjectCollectionItem> subjectCollectionItems;
	int count;
	int start;
	HotMovieEntitySubjectCollection subjectCollection;

	HotMovieEntityEntity({this.total, this.subjectCollectionItems, this.count, this.start, this.subjectCollection});

	HotMovieEntityEntity.fromJson(Map<String, dynamic> json) {
		print("json= $json");
		total = json['total'];
		if (json['subject_collection_items'] != null) {
			subjectCollectionItems = new List<HotMovieEntitySubjectCollectionItem>();(json['subject_collection_items'] as List).forEach((v) { subjectCollectionItems.add(new HotMovieEntitySubjectCollectionItem.fromJson(v)); });
		}
		count = json['count'];
		start = json['start'];
		subjectCollection = json['subject_collection'] != null ? new HotMovieEntitySubjectCollection.fromJson(json['subject_collection']) : null;
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

class HotMovieEntitySubjectCollectionItem {
	dynamic date;
	dynamic originalPrice;
	String year;
	List<String> directors;
	HotMovieEntitySubjectCollectionItemsRating rating;
	String description;
	String title;
	String type;
	HotMovieEntitySubjectCollectionItemsCover cover;
	dynamic interest;
	String subtype;
	dynamic forumInfo;
	dynamic price;
	String id;
	String info;
	List<HotMovieEntitySubjectCollectionItemsCommants> comments;
	String originalTitle;
	dynamic label;
	String uri;
	String url;
	HotMovieEntitySubjectCollectionItemsRatingData ratingData;
	String cardSubtitle;
	List<String> actors;
	bool hasLinewatch;
	String releaseDate;
	String reviewerName;
	String nullRatingReason;
	List<Null> actions;

	HotMovieEntitySubjectCollectionItem({this.date, this.originalPrice, this.year, this.directors, this.rating, this.description, this.title, this.type, this.cover, this.interest, this.subtype, this.forumInfo, this.price, this.id, this.info, this.comments, this.originalTitle, this.label, this.uri, this.url, this.ratingData, this.cardSubtitle, this.actors, this.hasLinewatch, this.releaseDate, this.reviewerName, this.nullRatingReason, this.actions});

	HotMovieEntitySubjectCollectionItem.fromJson(Map<String, dynamic> json) {
		date = json['date'];
		originalPrice = json['original_price'];
		year = json['year'];
		directors = json['directors']?.cast<String>();
		rating = json['rating'] != null ? new HotMovieEntitySubjectCollectionItemsRating.fromJson(json['rating']) : null;
		description = json['description'];
		title = json['title'];
		type = json['type'];
		cover = json['cover'] != null ? new HotMovieEntitySubjectCollectionItemsCover.fromJson(json['cover']) : null;
		interest = json['interest'];
		subtype = json['subtype'];
		forumInfo = json['forum_info'];
		price = json['price'];
		id = json['id'];
		info = json['info'];
		if (json['comments'] != null) {
			comments = new List<HotMovieEntitySubjectCollectionItemsCommants>();(json['comments'] as List).forEach((v) { comments.add(new HotMovieEntitySubjectCollectionItemsCommants.fromJson(v)); });
		}
		originalTitle = json['original_title'];
		label = json['label'];
		uri = json['uri'];
		url = json['url'];
		ratingData = json['rating_data'] != null ? new HotMovieEntitySubjectCollectionItemsRatingData.fromJson(json['rating_data']) : null;
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
		data['interest'] = this.interest;
		data['subtype'] = this.subtype;
		data['forum_info'] = this.forumInfo;
		data['price'] = this.price;
		data['id'] = this.id;
		data['info'] = this.info;
		if (this.comments != null) {
      data['comments'] =  this.comments.map((v) => v.toJson()).toList();
    }
		data['original_title'] = this.originalTitle;
		data['label'] = this.label;
		data['uri'] = this.uri;
		data['url'] = this.url;
		if (this.ratingData != null) {
      data['rating_data'] = this.ratingData.toJson();
    }
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

class HotMovieEntitySubjectCollectionItemsRating {
	int max;
	int count;
	double value;

	HotMovieEntitySubjectCollectionItemsRating({this.max, this.count, this.value});

	HotMovieEntitySubjectCollectionItemsRating.fromJson(Map<String, dynamic> json) {
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

class HotMovieEntitySubjectCollectionItemsCover {
	String shape;
	int width;
	String url;
	int height;

	HotMovieEntitySubjectCollectionItemsCover({this.shape, this.width, this.url, this.height});

	HotMovieEntitySubjectCollectionItemsCover.fromJson(Map<String, dynamic> json) {
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

class HotMovieEntitySubjectCollectionItemsCommants {
	bool isVoted;
	String createTime;
	String wechatTimelineShare;
	HotMovieEntitySubjectCollectionItemsCommentsRating rating;
	String comment;
	String id;
	String uri;
	int voteCount;
	HotMovieEntitySubjectCollectionItemsCommentsUser user;
	String sharingUrl;
	List<Null> platforms;
	String status;

	HotMovieEntitySubjectCollectionItemsCommants({this.isVoted, this.createTime, this.wechatTimelineShare, this.rating, this.comment, this.id, this.uri, this.voteCount, this.user, this.sharingUrl, this.platforms, this.status});

	HotMovieEntitySubjectCollectionItemsCommants.fromJson(Map<String, dynamic> json) {
		isVoted = json['is_voted'];
		createTime = json['create_time'];
		wechatTimelineShare = json['wechat_timeline_share'];
		rating = json['rating'] != null ? new HotMovieEntitySubjectCollectionItemsCommentsRating.fromJson(json['rating']) : null;
		comment = json['comment'];
		id = json['id'];
		uri = json['uri'];
		voteCount = json['vote_count'];
		user = json['user'] != null ? new HotMovieEntitySubjectCollectionItemsCommentsUser.fromJson(json['user']) : null;
		sharingUrl = json['sharing_url'];
		if (json['platforms'] != null) {
			platforms = new List<Null>();
		}
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['is_voted'] = this.isVoted;
		data['create_time'] = this.createTime;
		data['wechat_timeline_share'] = this.wechatTimelineShare;
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		data['comment'] = this.comment;
		data['id'] = this.id;
		data['uri'] = this.uri;
		data['vote_count'] = this.voteCount;
		if (this.user != null) {
      data['user'] = this.user.toJson();
    }
		data['sharing_url'] = this.sharingUrl;
		if (this.platforms != null) {
      data['platforms'] =  [];
    }
		data['status'] = this.status;
		return data;
	}
}

class HotMovieEntitySubjectCollectionItemsCommentsRating {
	int max;
	int count;
	int value;
	int starCount;

	HotMovieEntitySubjectCollectionItemsCommentsRating({this.max, this.count, this.value, this.starCount});

	HotMovieEntitySubjectCollectionItemsCommentsRating.fromJson(Map<String, dynamic> json) {
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

class HotMovieEntitySubjectCollectionItemsCommentsUser {
	HotMovieEntitySubjectCollectionItemsCommentsUserLoc loc;
	String gender;
	String kind;
	String remark;
	String avatar;
	String type;
	bool followed;
	String uri;
	String url;
	String uid;
	bool inBlacklist;
	String name;
	String id;

	HotMovieEntitySubjectCollectionItemsCommentsUser({this.loc, this.gender, this.kind, this.remark, this.avatar, this.type, this.followed, this.uri, this.url, this.uid, this.inBlacklist, this.name, this.id});

	HotMovieEntitySubjectCollectionItemsCommentsUser.fromJson(Map<String, dynamic> json) {
		loc = json['loc'] != null ? new HotMovieEntitySubjectCollectionItemsCommentsUserLoc.fromJson(json['loc']) : null;
		gender = json['gender'];
		kind = json['kind'];
		remark = json['remark'];
		avatar = json['avatar'];
		type = json['type'];
		followed = json['followed'];
		uri = json['uri'];
		url = json['url'];
		uid = json['uid'];
		inBlacklist = json['in_blacklist'];
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.loc != null) {
      data['loc'] = this.loc.toJson();
    }
		data['gender'] = this.gender;
		data['kind'] = this.kind;
		data['remark'] = this.remark;
		data['avatar'] = this.avatar;
		data['type'] = this.type;
		data['followed'] = this.followed;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['uid'] = this.uid;
		data['in_blacklist'] = this.inBlacklist;
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}

class HotMovieEntitySubjectCollectionItemsCommentsUserLoc {
	String uid;
	String name;
	String id;

	HotMovieEntitySubjectCollectionItemsCommentsUserLoc({this.uid, this.name, this.id});

	HotMovieEntitySubjectCollectionItemsCommentsUserLoc.fromJson(Map<String, dynamic> json) {
		uid = json['uid'];
		name = json['name'];
		id = json['id'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['uid'] = this.uid;
		data['name'] = this.name;
		data['id'] = this.id;
		return data;
	}
}

class HotMovieEntitySubjectCollectionItemsRatingData {
	List<double> stats;
	List<HotMovieEntitySubjectCollectionItemsRatingDataTypeRank> typeRanks;

	HotMovieEntitySubjectCollectionItemsRatingData({this.stats, this.typeRanks});

	HotMovieEntitySubjectCollectionItemsRatingData.fromJson(Map<String, dynamic> json) {
		stats = json['stats']?.cast<double>();
		if (json['type_ranks'] != null) {
			typeRanks = new List<HotMovieEntitySubjectCollectionItemsRatingDataTypeRank>();(json['type_ranks'] as List).forEach((v) { typeRanks.add(new HotMovieEntitySubjectCollectionItemsRatingDataTypeRank.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['stats'] = this.stats;
		if (this.typeRanks != null) {
      data['type_ranks'] =  this.typeRanks.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class HotMovieEntitySubjectCollectionItemsRatingDataTypeRank {
	double rank;
	String type;

	HotMovieEntitySubjectCollectionItemsRatingDataTypeRank({this.rank, this.type});

	HotMovieEntitySubjectCollectionItemsRatingDataTypeRank.fromJson(Map<String, dynamic> json) {
		rank = json['rank'];
		type = json['type'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['rank'] = this.rank;
		data['type'] = this.type;
		return data;
	}
}

class HotMovieEntitySubjectCollection {
	String moreDescription;
	String description;
	String mediumName;
	String sharingUrl;
	int subjectCount;
	int total;
	dynamic updatedAt;
	String id;
	HotMovieEntitySubjectCollectionBackgroundColorScheme backgroundColorScheme;
	String iconFgImage;
	String coverUrl;
	bool showRank;
	String subjectType;
	int doneCount;
	String typeText;
	bool showHeaderMask;
	HotMovieEntitySubjectCollectionDisplay display;
	String miniProgramName;
	String uri;
	int collectCount;
	String url;
	dynamic badge;
	String subtitle;
	String name;
	String shortName;
	String miniProgramPage;
	String typeIconBgText;

	HotMovieEntitySubjectCollection({this.moreDescription, this.description, this.mediumName, this.sharingUrl, this.subjectCount, this.total, this.updatedAt, this.id, this.backgroundColorScheme, this.iconFgImage, this.coverUrl, this.showRank, this.subjectType, this.doneCount, this.typeText, this.showHeaderMask, this.display, this.miniProgramName, this.uri, this.collectCount, this.url, this.badge, this.subtitle, this.name, this.shortName, this.miniProgramPage, this.typeIconBgText});

	HotMovieEntitySubjectCollection.fromJson(Map<String, dynamic> json) {
		moreDescription = json['more_description'];
		description = json['description'];
		mediumName = json['medium_name'];
		sharingUrl = json['sharing_url'];
		subjectCount = json['subject_count'];
		total = json['total'];
		updatedAt = json['updated_at'];
		id = json['id'];
		backgroundColorScheme = json['background_color_scheme'] != null ? new HotMovieEntitySubjectCollectionBackgroundColorScheme.fromJson(json['background_color_scheme']) : null;
		iconFgImage = json['icon_fg_image'];
		coverUrl = json['cover_url'];
		showRank = json['show_rank'];
		subjectType = json['subject_type'];
		doneCount = json['done_count'];
		typeText = json['type_text'];
		showHeaderMask = json['show_header_mask'];
		display = json['display'] != null ? new HotMovieEntitySubjectCollectionDisplay.fromJson(json['display']) : null;
		miniProgramName = json['mini_program_name'];
		uri = json['uri'];
		collectCount = json['collect_count'];
		url = json['url'];
		badge = json['badge'];
		subtitle = json['subtitle'];
		name = json['name'];
		shortName = json['short_name'];
		miniProgramPage = json['mini_program_page'];
		typeIconBgText = json['type_icon_bg_text'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['more_description'] = this.moreDescription;
		data['description'] = this.description;
		data['medium_name'] = this.mediumName;
		data['sharing_url'] = this.sharingUrl;
		data['subject_count'] = this.subjectCount;
		data['total'] = this.total;
		data['updated_at'] = this.updatedAt;
		data['id'] = this.id;
		if (this.backgroundColorScheme != null) {
      data['background_color_scheme'] = this.backgroundColorScheme.toJson();
    }
		data['icon_fg_image'] = this.iconFgImage;
		data['cover_url'] = this.coverUrl;
		data['show_rank'] = this.showRank;
		data['subject_type'] = this.subjectType;
		data['done_count'] = this.doneCount;
		data['type_text'] = this.typeText;
		data['show_header_mask'] = this.showHeaderMask;
		if (this.display != null) {
      data['display'] = this.display.toJson();
    }
		data['mini_program_name'] = this.miniProgramName;
		data['uri'] = this.uri;
		data['collect_count'] = this.collectCount;
		data['url'] = this.url;
		data['badge'] = this.badge;
		data['subtitle'] = this.subtitle;
		data['name'] = this.name;
		data['short_name'] = this.shortName;
		data['mini_program_page'] = this.miniProgramPage;
		data['type_icon_bg_text'] = this.typeIconBgText;
		return data;
	}
}

class HotMovieEntitySubjectCollectionBackgroundColorScheme {
	String primaryColorLight;
	String primaryColorDark;
	String secondaryColor;
	bool isDark;

	HotMovieEntitySubjectCollectionBackgroundColorScheme({this.primaryColorLight, this.primaryColorDark, this.secondaryColor, this.isDark});

	HotMovieEntitySubjectCollectionBackgroundColorScheme.fromJson(Map<String, dynamic> json) {
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

class HotMovieEntitySubjectCollectionDisplay {
	String layout;

	HotMovieEntitySubjectCollectionDisplay({this.layout});

	HotMovieEntitySubjectCollectionDisplay.fromJson(Map<String, dynamic> json) {
		layout = json['layout'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['layout'] = this.layout;
		return data;
	}
}
