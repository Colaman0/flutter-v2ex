class MovieDetailEntity {
	List<MovieDetailUgcTab> ugcTabs;
	int commentCount;
	String year;
	MovieDetailRating rating;
	int reviewCount;
	MovieDetailPic pic;
	int vendorCount;
	bool canInteract;
	String type;
	MovieDetailWebviewInfo webviewInfo;
	MovieDetailCover cover;
	String intro;
	List<MovieDetailHonorInfo> honorInfos;
	MovieDetailColorScheme colorScheme;
	List<String> durations;
	String id;
	String preReleaseDesc;
	List<Null> vendors;
	int forumTopicCount;
	String miniProgramName;
	List<String> countries;
	List<MovieDetailTag> tags;
	List<MovieDetailActor> actors;
	bool hasLinewatch;
	dynamic releaseDate;
	String nullRatingReason;
	String miniProgramPage;
	List<Null> linewatches;
	List<Null> vendorIcons;
	String headerBgColor;
	String wechatTimelineShare;
	List<MovieDetailDirector> directors;
	bool isTv;
	dynamic webisode;
	dynamic video;
	String title;
	dynamic lastEpisodeNumber;
	String sharingUrl;
	bool isDoubanIntro;
	MovieDetailTrailer trailer;
	int webisodeCount;
	dynamic interest;
	String subtype;
	bool inBlacklist;
	dynamic forumInfo;
	List<String> genres;
	int galleryTopicCount;
	String ticketPriceInfo;
	dynamic headInfo;
	String lineticketUrl;
	List<String> pubdate;
	String bodyBgColor;
	List<String> languages;
	String originalTitle;
	bool isReleased;
	String uri;
	int episodesCount;
	String url;
	bool isShow;
	dynamic prePlayableDate;
	String cardSubtitle;
	List<String> aka;
	String infoUrl;

	MovieDetailEntity({this.ugcTabs, this.commentCount, this.year, this.rating, this.reviewCount, this.pic, this.vendorCount, this.canInteract, this.type, this.webviewInfo, this.cover, this.intro, this.honorInfos, this.colorScheme, this.durations, this.id, this.preReleaseDesc, this.vendors, this.forumTopicCount, this.miniProgramName, this.countries, this.tags, this.actors, this.hasLinewatch, this.releaseDate, this.nullRatingReason, this.miniProgramPage, this.linewatches, this.vendorIcons, this.headerBgColor, this.wechatTimelineShare, this.directors, this.isTv, this.webisode, this.video, this.title, this.lastEpisodeNumber, this.sharingUrl, this.isDoubanIntro, this.trailer, this.webisodeCount, this.interest, this.subtype, this.inBlacklist, this.forumInfo, this.genres, this.galleryTopicCount, this.ticketPriceInfo, this.headInfo, this.lineticketUrl, this.pubdate, this.bodyBgColor, this.languages, this.originalTitle, this.isReleased, this.uri, this.episodesCount, this.url, this.isShow, this.prePlayableDate, this.cardSubtitle, this.aka, this.infoUrl});

	MovieDetailEntity.fromJson(Map<String, dynamic> json) {
		if (json['ugc_tabs'] != null) {
			ugcTabs = new List<MovieDetailUgcTab>();(json['ugc_tabs'] as List).forEach((v) { ugcTabs.add(new MovieDetailUgcTab.fromJson(v)); });
		}
		commentCount = json['comment_count'];
		year = json['year'];
		rating = json['rating'] != null ? new MovieDetailRating.fromJson(json['rating']) : null;
		reviewCount = json['review_count'];
		pic = json['pic'] != null ? new MovieDetailPic.fromJson(json['pic']) : null;
		vendorCount = json['vendor_count'];
		canInteract = json['can_interact'];
		type = json['type'];
		webviewInfo = json['webview_info'] != null ? new MovieDetailWebviewInfo.fromJson(json['webview_info']) : null;
		cover = json['cover'] != null ? new MovieDetailCover.fromJson(json['cover']) : null;
		intro = json['intro'];
		if (json['honor_infos'] != null) {
			honorInfos = new List<MovieDetailHonorInfo>();(json['honor_infos'] as List).forEach((v) { honorInfos.add(new MovieDetailHonorInfo.fromJson(v)); });
		}
		colorScheme = json['color_scheme'] != null ? new MovieDetailColorScheme.fromJson(json['color_scheme']) : null;
		durations = json['durations']?.cast<String>();
		id = json['id'];
		preReleaseDesc = json['pre_release_desc'];
		if (json['vendors'] != null) {
			vendors = new List<Null>();
		}
		forumTopicCount = json['forum_topic_count'];
		miniProgramName = json['mini_program_name'];
		countries = json['countries']?.cast<String>();
		if (json['tags'] != null) {
			tags = new List<MovieDetailTag>();(json['tags'] as List).forEach((v) { tags.add(new MovieDetailTag.fromJson(v)); });
		}
		if (json['actors'] != null) {
			actors = new List<MovieDetailActor>();(json['actors'] as List).forEach((v) { actors.add(new MovieDetailActor.fromJson(v)); });
		}
		hasLinewatch = json['has_linewatch'];
		releaseDate = json['release_date'];
		nullRatingReason = json['null_rating_reason'];
		miniProgramPage = json['mini_program_page'];
		if (json['linewatches'] != null) {
			linewatches = new List<Null>();
		}
		if (json['vendor_icons'] != null) {
			vendorIcons = new List<Null>();
		}
		headerBgColor = json['header_bg_color'];
		wechatTimelineShare = json['wechat_timeline_share'];
		if (json['directors'] != null) {
			directors = new List<MovieDetailDirector>();(json['directors'] as List).forEach((v) { directors.add(new MovieDetailDirector.fromJson(v)); });
		}
		isTv = json['is_tv'];
		webisode = json['webisode'];
		video = json['video'];
		title = json['title'];
		lastEpisodeNumber = json['last_episode_number'];
		sharingUrl = json['sharing_url'];
		isDoubanIntro = json['is_douban_intro'];
		trailer = json['trailer'] != null ? new MovieDetailTrailer.fromJson(json['trailer']) : null;
		webisodeCount = json['webisode_count'];
		interest = json['interest'];
		subtype = json['subtype'];
		inBlacklist = json['in_blacklist'];
		forumInfo = json['forum_info'];
		genres = json['genres']?.cast<String>();
		galleryTopicCount = json['gallery_topic_count'];
		ticketPriceInfo = json['ticket_price_info'];
		headInfo = json['head_info'];
		lineticketUrl = json['lineticket_url'];
		pubdate = json['pubdate']?.cast<String>();
		bodyBgColor = json['body_bg_color'];
		languages = json['languages']?.cast<String>();
		originalTitle = json['original_title'];
		isReleased = json['is_released'];
		uri = json['uri'];
		episodesCount = json['episodes_count'];
		url = json['url'];
		isShow = json['is_show'];
		prePlayableDate = json['pre_playable_date'];
		cardSubtitle = json['card_subtitle'];
		aka = json['aka']?.cast<String>();
		infoUrl = json['info_url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.ugcTabs != null) {
      data['ugc_tabs'] =  this.ugcTabs.map((v) => v.toJson()).toList();
    }
		data['comment_count'] = this.commentCount;
		data['year'] = this.year;
		if (this.rating != null) {
      data['rating'] = this.rating.toJson();
    }
		data['review_count'] = this.reviewCount;
		if (this.pic != null) {
      data['pic'] = this.pic.toJson();
    }
		data['vendor_count'] = this.vendorCount;
		data['can_interact'] = this.canInteract;
		data['type'] = this.type;
		if (this.webviewInfo != null) {
      data['webview_info'] = this.webviewInfo.toJson();
    }
		if (this.cover != null) {
      data['cover'] = this.cover.toJson();
    }
		data['intro'] = this.intro;
		if (this.honorInfos != null) {
      data['honor_infos'] =  this.honorInfos.map((v) => v.toJson()).toList();
    }
		if (this.colorScheme != null) {
      data['color_scheme'] = this.colorScheme.toJson();
    }
		data['durations'] = this.durations;
		data['id'] = this.id;
		data['pre_release_desc'] = this.preReleaseDesc;
		if (this.vendors != null) {
      data['vendors'] =  [];
    }
		data['forum_topic_count'] = this.forumTopicCount;
		data['mini_program_name'] = this.miniProgramName;
		data['countries'] = this.countries;
		if (this.tags != null) {
      data['tags'] =  this.tags.map((v) => v.toJson()).toList();
    }
		if (this.actors != null) {
      data['actors'] =  this.actors.map((v) => v.toJson()).toList();
    }
		data['has_linewatch'] = this.hasLinewatch;
		data['release_date'] = this.releaseDate;
		data['null_rating_reason'] = this.nullRatingReason;
		data['mini_program_page'] = this.miniProgramPage;
		if (this.linewatches != null) {
      data['linewatches'] =  [];
    }
		if (this.vendorIcons != null) {
      data['vendor_icons'] =  [];
    }
		data['header_bg_color'] = this.headerBgColor;
		data['wechat_timeline_share'] = this.wechatTimelineShare;
		if (this.directors != null) {
      data['directors'] =  this.directors.map((v) => v.toJson()).toList();
    }
		data['is_tv'] = this.isTv;
		data['webisode'] = this.webisode;
		data['video'] = this.video;
		data['title'] = this.title;
		data['last_episode_number'] = this.lastEpisodeNumber;
		data['sharing_url'] = this.sharingUrl;
		data['is_douban_intro'] = this.isDoubanIntro;
		if (this.trailer != null) {
      data['trailer'] = this.trailer.toJson();
    }
		data['webisode_count'] = this.webisodeCount;
		data['interest'] = this.interest;
		data['subtype'] = this.subtype;
		data['in_blacklist'] = this.inBlacklist;
		data['forum_info'] = this.forumInfo;
		data['genres'] = this.genres;
		data['gallery_topic_count'] = this.galleryTopicCount;
		data['ticket_price_info'] = this.ticketPriceInfo;
		data['head_info'] = this.headInfo;
		data['lineticket_url'] = this.lineticketUrl;
		data['pubdate'] = this.pubdate;
		data['body_bg_color'] = this.bodyBgColor;
		data['languages'] = this.languages;
		data['original_title'] = this.originalTitle;
		data['is_released'] = this.isReleased;
		data['uri'] = this.uri;
		data['episodes_count'] = this.episodesCount;
		data['url'] = this.url;
		data['is_show'] = this.isShow;
		data['pre_playable_date'] = this.prePlayableDate;
		data['card_subtitle'] = this.cardSubtitle;
		data['aka'] = this.aka;
		data['info_url'] = this.infoUrl;
		return data;
	}
}

class MovieDetailUgcTab {
	String source;
	String type;
	String title;

	MovieDetailUgcTab({this.source, this.type, this.title});

	MovieDetailUgcTab.fromJson(Map<String, dynamic> json) {
		source = json['source'];
		type = json['type'];
		title = json['title'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['source'] = this.source;
		data['type'] = this.type;
		data['title'] = this.title;
		return data;
	}
}

class MovieDetailRating {
	int max;
	int count;
	double value;
	double starCount;

	MovieDetailRating({this.max, this.count, this.value, this.starCount});

	MovieDetailRating.fromJson(Map<String, dynamic> json) {
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

class MovieDetailPic {
	String normal;
	String large;

	MovieDetailPic({this.normal, this.large});

	MovieDetailPic.fromJson(Map<String, dynamic> json) {
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

class MovieDetailWebviewInfo {


	MovieDetailWebviewInfo({});

	MovieDetailWebviewInfo.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class MovieDetailCover {
	MovieDetailCoverImage image;
	String ownerUri;
	String createTime;
	MovieDetailCoverAuthor author;
	String description;
	int position;
	String id;
	String type;
	String uri;
	String url;
	String sharingUrl;

	MovieDetailCover({this.image, this.ownerUri, this.createTime, this.author, this.description, this.position, this.id, this.type, this.uri, this.url, this.sharingUrl});

	MovieDetailCover.fromJson(Map<String, dynamic> json) {
		image = json['image'] != null ? new MovieDetailCoverImage.fromJson(json['image']) : null;
		ownerUri = json['owner_uri'];
		createTime = json['create_time'];
		author = json['author'] != null ? new MovieDetailCoverAuthor.fromJson(json['author']) : null;
		description = json['description'];
		position = json['position'];
		id = json['id'];
		type = json['type'];
		uri = json['uri'];
		url = json['url'];
		sharingUrl = json['sharing_url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.image != null) {
      data['image'] = this.image.toJson();
    }
		data['owner_uri'] = this.ownerUri;
		data['create_time'] = this.createTime;
		if (this.author != null) {
      data['author'] = this.author.toJson();
    }
		data['description'] = this.description;
		data['position'] = this.position;
		data['id'] = this.id;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['sharing_url'] = this.sharingUrl;
		return data;
	}
}

class MovieDetailCoverImage {
	MovieDetailCoverImageSmall small;
	MovieDetailCoverImageNormal normal;
	bool isAnimated;
	MovieDetailCoverImageLarge large;
	dynamic raw;

	MovieDetailCoverImage({this.small, this.normal, this.isAnimated, this.large, this.raw});

	MovieDetailCoverImage.fromJson(Map<String, dynamic> json) {
		small = json['small'] != null ? new MovieDetailCoverImageSmall.fromJson(json['small']) : null;
		normal = json['normal'] != null ? new MovieDetailCoverImageNormal.fromJson(json['normal']) : null;
		isAnimated = json['is_animated'];
		large = json['large'] != null ? new MovieDetailCoverImageLarge.fromJson(json['large']) : null;
		raw = json['raw'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.small != null) {
      data['small'] = this.small.toJson();
    }
		if (this.normal != null) {
      data['normal'] = this.normal.toJson();
    }
		data['is_animated'] = this.isAnimated;
		if (this.large != null) {
      data['large'] = this.large.toJson();
    }
		data['raw'] = this.raw;
		return data;
	}
}

class MovieDetailCoverImageSmall {
	int size;
	int width;
	String url;
	int height;

	MovieDetailCoverImageSmall({this.size, this.width, this.url, this.height});

	MovieDetailCoverImageSmall.fromJson(Map<String, dynamic> json) {
		size = json['size'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['size'] = this.size;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class MovieDetailCoverImageNormal {
	int size;
	int width;
	String url;
	int height;

	MovieDetailCoverImageNormal({this.size, this.width, this.url, this.height});

	MovieDetailCoverImageNormal.fromJson(Map<String, dynamic> json) {
		size = json['size'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['size'] = this.size;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class MovieDetailCoverImageLarge {
	int size;
	int width;
	String url;
	int height;

	MovieDetailCoverImageLarge({this.size, this.width, this.url, this.height});

	MovieDetailCoverImageLarge.fromJson(Map<String, dynamic> json) {
		size = json['size'];
		width = json['width'];
		url = json['url'];
		height = json['height'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['size'] = this.size;
		data['width'] = this.width;
		data['url'] = this.url;
		data['height'] = this.height;
		return data;
	}
}

class MovieDetailCoverAuthor {
	MovieDetailCoverAuthorLoc loc;
	String uid;
	String kind;
	String name;
	String avatar;
	String id;
	String type;
	String uri;
	String url;

	MovieDetailCoverAuthor({this.loc, this.uid, this.kind, this.name, this.avatar, this.id, this.type, this.uri, this.url});

	MovieDetailCoverAuthor.fromJson(Map<String, dynamic> json) {
		loc = json['loc'] != null ? new MovieDetailCoverAuthorLoc.fromJson(json['loc']) : null;
		uid = json['uid'];
		kind = json['kind'];
		name = json['name'];
		avatar = json['avatar'];
		id = json['id'];
		type = json['type'];
		uri = json['uri'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.loc != null) {
      data['loc'] = this.loc.toJson();
    }
		data['uid'] = this.uid;
		data['kind'] = this.kind;
		data['name'] = this.name;
		data['avatar'] = this.avatar;
		data['id'] = this.id;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['url'] = this.url;
		return data;
	}
}

class MovieDetailCoverAuthorLoc {
	String uid;
	String name;
	String id;

	MovieDetailCoverAuthorLoc({this.uid, this.name, this.id});

	MovieDetailCoverAuthorLoc.fromJson(Map<String, dynamic> json) {
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

class MovieDetailHonorInfo {
	String kind;
	int rank;
	String title;
	String uri;

	MovieDetailHonorInfo({this.kind, this.rank, this.title, this.uri});

	MovieDetailHonorInfo.fromJson(Map<String, dynamic> json) {
		kind = json['kind'];
		rank = json['rank'];
		title = json['title'];
		uri = json['uri'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['kind'] = this.kind;
		data['rank'] = this.rank;
		data['title'] = this.title;
		data['uri'] = this.uri;
		return data;
	}
}

class MovieDetailColorScheme {
	String primaryColorLight;
	List<double> lAvgColor;
	String primaryColorDark;
	String secondaryColor;
	List<double> lBaseColor;
	bool isDark;

	MovieDetailColorScheme({this.primaryColorLight, this.lAvgColor, this.primaryColorDark, this.secondaryColor, this.lBaseColor, this.isDark});

	MovieDetailColorScheme.fromJson(Map<String, dynamic> json) {
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

class MovieDetailTag {
	bool isChannel;
	String name;
	String id;
	String uri;
	String url;

	MovieDetailTag({this.isChannel, this.name, this.id, this.uri, this.url});

	MovieDetailTag.fromJson(Map<String, dynamic> json) {
		isChannel = json['is_channel'];
		name = json['name'];
		id = json['id'];
		uri = json['uri'];
		url = json['url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['is_channel'] = this.isChannel;
		data['name'] = this.name;
		data['id'] = this.id;
		data['uri'] = this.uri;
		data['url'] = this.url;
		return data;
	}
}

class MovieDetailActor {
	String coverUrl;
	dynamic author;
	List<String> roles;
	String name;
	String xAbstract;
	MovieDetailActorsAvatar avatar;
	String id;
	String title;
	String type;
	String uri;
	String url;
	String sharingUrl;

	MovieDetailActor({this.coverUrl, this.author, this.roles, this.name, this.xAbstract, this.avatar, this.id, this.title, this.type, this.uri, this.url, this.sharingUrl});

	MovieDetailActor.fromJson(Map<String, dynamic> json) {
		coverUrl = json['cover_url'];
		author = json['author'];
		roles = json['roles']?.cast<String>();
		name = json['name'];
		xAbstract = json['abstract'];
		avatar = json['avatar'] != null ? new MovieDetailActorsAvatar.fromJson(json['avatar']) : null;
		id = json['id'];
		title = json['title'];
		type = json['type'];
		uri = json['uri'];
		url = json['url'];
		sharingUrl = json['sharing_url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover_url'] = this.coverUrl;
		data['author'] = this.author;
		data['roles'] = this.roles;
		data['name'] = this.name;
		data['abstract'] = this.xAbstract;
		if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
		data['id'] = this.id;
		data['title'] = this.title;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['sharing_url'] = this.sharingUrl;
		return data;
	}
}

class MovieDetailActorsAvatar {
	String normal;
	String large;

	MovieDetailActorsAvatar({this.normal, this.large});

	MovieDetailActorsAvatar.fromJson(Map<String, dynamic> json) {
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

class MovieDetailDirector {
	String coverUrl;
	dynamic author;
	List<String> roles;
	String name;
	String xAbstract;
	MovieDetailDirectorsAvatar avatar;
	String id;
	String title;
	String type;
	String uri;
	String url;
	String sharingUrl;

	MovieDetailDirector({this.coverUrl, this.author, this.roles, this.name, this.xAbstract, this.avatar, this.id, this.title, this.type, this.uri, this.url, this.sharingUrl});

	MovieDetailDirector.fromJson(Map<String, dynamic> json) {
		coverUrl = json['cover_url'];
		author = json['author'];
		roles = json['roles']?.cast<String>();
		name = json['name'];
		xAbstract = json['abstract'];
		avatar = json['avatar'] != null ? new MovieDetailDirectorsAvatar.fromJson(json['avatar']) : null;
		id = json['id'];
		title = json['title'];
		type = json['type'];
		uri = json['uri'];
		url = json['url'];
		sharingUrl = json['sharing_url'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['cover_url'] = this.coverUrl;
		data['author'] = this.author;
		data['roles'] = this.roles;
		data['name'] = this.name;
		data['abstract'] = this.xAbstract;
		if (this.avatar != null) {
      data['avatar'] = this.avatar.toJson();
    }
		data['id'] = this.id;
		data['title'] = this.title;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['url'] = this.url;
		data['sharing_url'] = this.sharingUrl;
		return data;
	}
}

class MovieDetailDirectorsAvatar {
	String normal;
	String large;

	MovieDetailDirectorsAvatar({this.normal, this.large});

	MovieDetailDirectorsAvatar.fromJson(Map<String, dynamic> json) {
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

class MovieDetailTrailer {
	int termNum;
	String coverUrl;
	String createTime;
	String runtime;
	String title;
	String type;
	String uri;
	String sharingUrl;
	int nComments;
	int fileSize;
	String videoUrl;
	String id;
	String subjectTitle;
	String desc;

	MovieDetailTrailer({this.termNum, this.coverUrl, this.createTime, this.runtime, this.title, this.type, this.uri, this.sharingUrl, this.nComments, this.fileSize, this.videoUrl, this.id, this.subjectTitle, this.desc});

	MovieDetailTrailer.fromJson(Map<String, dynamic> json) {
		termNum = json['term_num'];
		coverUrl = json['cover_url'];
		createTime = json['create_time'];
		runtime = json['runtime'];
		title = json['title'];
		type = json['type'];
		uri = json['uri'];
		sharingUrl = json['sharing_url'];
		nComments = json['n_comments'];
		fileSize = json['file_size'];
		videoUrl = json['video_url'];
		id = json['id'];
		subjectTitle = json['subject_title'];
		desc = json['desc'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['term_num'] = this.termNum;
		data['cover_url'] = this.coverUrl;
		data['create_time'] = this.createTime;
		data['runtime'] = this.runtime;
		data['title'] = this.title;
		data['type'] = this.type;
		data['uri'] = this.uri;
		data['sharing_url'] = this.sharingUrl;
		data['n_comments'] = this.nComments;
		data['file_size'] = this.fileSize;
		data['video_url'] = this.videoUrl;
		data['id'] = this.id;
		data['subject_title'] = this.subjectTitle;
		data['desc'] = this.desc;
		return data;
	}
}
