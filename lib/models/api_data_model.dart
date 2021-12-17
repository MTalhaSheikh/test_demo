
import 'dart:convert';

ApiDataResponse apiDataResponseFromJson(String str) => ApiDataResponse.fromJson(json.decode(str));

String apiDataResponseToJson(ApiDataResponse data) => json.encode(data.toJson());

class ApiDataResponse {
  ApiDataResponse({
    required this.data,
    required this.pagination,
    required this.message,
  });

  List<Datum> data;
  Pagination pagination;
  String message;

  factory ApiDataResponse.fromJson(Map<String, dynamic> json) => ApiDataResponse(
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    pagination: Pagination.fromJson(json["pagination"]),
    message: json["message"],
  );

  Map<String, dynamic> toJson() => {
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
    "pagination": pagination.toJson(),
    "message": message,
  };
}

class Datum {
  Datum({
    required this.id,
    required this.userId,
    this.attachments,
    required this.businessName,
    required this.businessDetails,
    required this.dunsNumber,
    required this.yearsOfExperience,
    required this.businessType,
    required this.isFeatured,
    required this.isVerified,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.formattedCreatedAt,
    required this.userDetail,
    required this.initiatedJobs,
    required this.finishedJobs,
    required this.urgentJobsCompleted,
    required this.urgentJobsCreated,
    required this.totalRevenue,
    required this.avgRating,
    this.reviewedBy,
    required this.totalFeedbackCount,
    required this.servicesOffered,
    required this.allServicesOffered,
    required this.profileRequest,
  });

  int id;
  int userId;
  dynamic attachments;
  String businessName;
  String businessDetails;
  String dunsNumber;
  String yearsOfExperience;
  String businessType;
  int isFeatured;
  int isVerified;
  AtedAt createdAt;
  AtedAt updatedAt;
  dynamic deletedAt;
  String formattedCreatedAt;
  UserDetail userDetail;
  int initiatedJobs;
  int finishedJobs;
  int urgentJobsCompleted;
  int urgentJobsCreated;
  String totalRevenue;
  int avgRating;
  dynamic reviewedBy;
  int totalFeedbackCount;
  ServicesOffered servicesOffered;
  List<AllServicesOffered> allServicesOffered;
  ProfileRequest profileRequest;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    id: json["id"],
    userId: json["user_id"],
    attachments: json["attachments"],
    businessName: json["business_name"],
    businessDetails: json["business_details"],
    dunsNumber: json["duns_number"],
    yearsOfExperience: json["years_of_experience"],
    businessType: json["business_type"],
    isFeatured: json["is_featured"],
    isVerified: json["is_verified"],
    createdAt: AtedAt.fromJson(json["created_at"]),
    updatedAt: AtedAt.fromJson(json["updated_at"]),
    deletedAt: json["deleted_at"],
    formattedCreatedAt: json["formatted_created_at"],
    userDetail: UserDetail.fromJson(json["user_detail"]),
    initiatedJobs: json["initiated_jobs"],
    finishedJobs: json["finished_jobs"],
    urgentJobsCompleted: json["urgent_jobs_completed"],
    urgentJobsCreated: json["urgent_jobs_created"],
    totalRevenue: json["total_revenue"],
    avgRating: json["avg_rating"],
    reviewedBy: json["reviewedBy"],
    totalFeedbackCount: json["total_feedback_count"],
    servicesOffered: ServicesOffered.fromJson(json["services_offered"]),
    allServicesOffered: List<AllServicesOffered>.from(json["all_services_offered"].map((x) => AllServicesOffered.fromJson(x))),
    profileRequest: ProfileRequest.fromJson(json["profile_request"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "attachments": attachments,
    "business_name": businessName,
    "business_details": businessDetails,
    "duns_number": dunsNumber,
    "years_of_experience": yearsOfExperience,
    "business_type": businessType,
    "is_featured": isFeatured,
    "is_verified": isVerified,
    "created_at": createdAt.toJson(),
    "updated_at": updatedAt.toJson(),
    "deleted_at": deletedAt,
    "formatted_created_at": formattedCreatedAt,
    "user_detail": userDetail.toJson(),
    "initiated_jobs": initiatedJobs,
    "finished_jobs": finishedJobs,
    "urgent_jobs_completed": urgentJobsCompleted,
    "urgent_jobs_created": urgentJobsCreated,
    "total_revenue": totalRevenue,
    "avg_rating": avgRating,
    "reviewedBy": reviewedBy,
    "total_feedback_count": totalFeedbackCount,
    "services_offered": servicesOffered.toJson(),
    "all_services_offered": List<dynamic>.from(allServicesOffered.map((x) => x.toJson())),
    "profile_request": profileRequest.toJson(),
  };
}

class AllServicesOffered {
  AllServicesOffered({
    required this.id,
    required this.userId,
    this.reason,
    required this.approvedBy,
    required this.approvedAt,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.serviceProviderProfileRequestId,
    required this.serviceId,
    required this.title,
    required this.description,
    required this.isDisplayBanner,
    required this.isDisplayServiceNav,
    required this.isDisplayFooterNav,
    required this.isFeatured,
    required this.urlSuffix,
    required this.parentId,
    required this.images,
    required this.icon,
  });

  int id;
  int userId;
  dynamic reason;
  int approvedBy;
  DateTime approvedAt;
  int status;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  int serviceProviderProfileRequestId;
  int serviceId;
  String title;
  String description;
  int isDisplayBanner;
  int isDisplayServiceNav;
  int isDisplayFooterNav;
  int isFeatured;
  String urlSuffix;
  int parentId;
  String images;
  String icon;

  factory AllServicesOffered.fromJson(Map<String, dynamic> json) => AllServicesOffered(
    id: json["id"],
    userId: json["user_id"],
    reason: json["reason"],
    approvedBy: json["approved_by"],
    approvedAt: DateTime.parse(json["approved_at"]),
    status: json["status"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    deletedAt: json["deleted_at"],
    serviceProviderProfileRequestId: json["service_provider_profile_request_id"],
    serviceId: json["service_id"],
    title: json["title"],
    description: json["description"],
    isDisplayBanner: json["is_display_banner"],
    isDisplayServiceNav: json["is_display_service_nav"],
    isDisplayFooterNav: json["is_display_footer_nav"],
    isFeatured: json["is_featured"],
    urlSuffix: json["url_suffix"],
    parentId: json["parent_id"],
    images: json["images"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "reason": reason,
    "approved_by": approvedBy,
    "approved_at": approvedAt.toIso8601String(),
    "status": status,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "deleted_at": deletedAt,
    "service_provider_profile_request_id": serviceProviderProfileRequestId,
    "service_id": serviceId,
    "title": title,
    "description": description,
    "is_display_banner": isDisplayBanner,
    "is_display_service_nav": isDisplayServiceNav,
    "is_display_footer_nav": isDisplayFooterNav,
    "is_featured": isFeatured,
    "url_suffix": urlSuffix,
    "parent_id": parentId,
    "images": images,
    "icon": icon,
  };
}

class AtedAt {
  AtedAt({
    required this.date,
    required this.timezoneType,
    required this.timezone,
  });

  DateTime date;
  int timezoneType;
  dynamic timezone;

  factory AtedAt.fromJson(Map<String, dynamic> json) => AtedAt(
    date: DateTime.parse(json["date"]),
    timezoneType: json["timezone_type"],
    timezone: timezoneValues.map[json["timezone"]],
  );

  Map<String, dynamic> toJson() => {
    "date": date.toIso8601String(),
    "timezone_type": timezoneType,
    "timezone": timezoneValues.reverse[timezone],
  };
}

enum Timezone { UTC }

final timezoneValues = EnumValues({
  "UTC": Timezone.UTC
});

class ProfileRequest {
  ProfileRequest({
    required this.id,
    required this.userId,
    this.reason,
    required this.approvedBy,
    required this.approvedAt,
    required this.status,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    required this.formattedApprovedAt,
    required this.formattedCreatedAt,
    required this.formattedUpdatedAt,
    required this.approvedByUser,
  });

  int id;
  int userId;
  dynamic reason;
  int approvedBy;
  DateTime approvedAt;
  String status;
  AtedAt createdAt;
  AtedAt updatedAt;
  dynamic deletedAt;
  String formattedApprovedAt;
  String formattedCreatedAt;
  String formattedUpdatedAt;
  UserDetail approvedByUser;

  factory ProfileRequest.fromJson(Map<String, dynamic> json) => ProfileRequest(
    id: json["id"],
    userId: json["user_id"],
    reason: json["reason"],
    approvedBy: json["approved_by"],
    approvedAt: DateTime.parse(json["approved_at"]),
    status: json["status"],
    createdAt: AtedAt.fromJson(json["created_at"]),
    updatedAt: AtedAt.fromJson(json["updated_at"]),
    deletedAt: json["deleted_at"],
    formattedApprovedAt: json["formatted_approved_at"],
    formattedCreatedAt: json["formatted_created_at"],
    formattedUpdatedAt: json["formatted_updated_at"],
    approvedByUser: UserDetail.fromJson(json["approved_by_user"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "user_id": userId,
    "reason": reason,
    "approved_by": approvedBy,
    "approved_at": approvedAt.toIso8601String(),
    "status": status,
    "created_at": createdAt.toJson(),
    "updated_at": updatedAt.toJson(),
    "deleted_at": deletedAt,
    "formatted_approved_at": formattedApprovedAt,
    "formatted_created_at": formattedCreatedAt,
    "formatted_updated_at": formattedUpdatedAt,
    "approved_by_user": approvedByUser.toJson(),
  };
}

class UserDetail {
  UserDetail({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.address,
    required this.userDetailProfileImage,
    this.apartment,
    required this.zipCode,
    required this.phoneNumber,
    required this.password,
    required this.roleId,
    required this.accessLevel,
    required this.countryId,
    required this.stateId,
    required this.cityId,
    required this.activationKey,
    required this.activatedAt,
    required this.rememberToken,
    this.socialAccountId,
    required this.status,
    this.socialAccountType,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
    this.stripeId,
    this.cardBrand,
    this.cardLastFour,
    this.trialEndsAt,
    required this.isProfileCompleted,
    required this.profileImage,
    required this.role,
    required this.country,
    required this.city,
    required this.state,
    required this.formattedCreatedAt,
  });

  int id;
  String firstName;
  String lastName;
  String email;
  String address;
  String userDetailProfileImage;
  dynamic apartment;
  String zipCode;
  String phoneNumber;
  String password;
  int roleId;
  String accessLevel;
  int countryId;
  int stateId;
  int cityId;
  String activationKey;
  DateTime activatedAt;
  String rememberToken;
  dynamic socialAccountId;
  String status;
  dynamic socialAccountType;
  AtedAt createdAt;
  AtedAt updatedAt;
  dynamic deletedAt;
  dynamic stripeId;
  dynamic cardBrand;
  dynamic cardLastFour;
  dynamic trialEndsAt;
  int isProfileCompleted;
  String profileImage;
  Role role;
  String country;
  String city;
  String state;
  String formattedCreatedAt;

  factory UserDetail.fromJson(Map<String, dynamic> json) => UserDetail(
    id: json["id"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    email: json["email"],
    address: json["address"],
    userDetailProfileImage: json["profile_image"],
    apartment: json["apartment"],
    zipCode: json["zip_code"],
    phoneNumber: json["phone_number"],
    password: json["password"],
    roleId: json["role_id"],
    accessLevel: json["access_level"],
    countryId: json["country_id"],
    stateId: json["state_id"],
    cityId: json["city_id"],
    activationKey: json["activation_key"],
    activatedAt: DateTime.parse(json["activated_at"]),
    rememberToken: json["remember_token"],
    socialAccountId: json["social_account_id"],
    status: json["status"],
    socialAccountType: json["social_account_type"],
    createdAt: AtedAt.fromJson(json["created_at"]),
    updatedAt: AtedAt.fromJson(json["updated_at"]),
    deletedAt: json["deleted_at"],
    stripeId: json["stripe_id"],
    cardBrand: json["card_brand"],
    cardLastFour: json["card_last_four"],
    trialEndsAt: json["trial_ends_at"],
    isProfileCompleted: json["is_profile_completed"],
    profileImage: json["profileImage"],
    role: Role.fromJson(json["role"]),
    country: json["country"],
    city: json["city"],
    state: json["state"],
    formattedCreatedAt: json["formatted_created_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "first_name": firstName,
    "last_name": lastName,
    "email": email,
    "address": address,
    "profile_image": userDetailProfileImage,
    "apartment": apartment,
    "zip_code": zipCode,
    "phone_number": phoneNumber,
    "password": password,
    "role_id": roleId,
    "access_level": accessLevel,
    "country_id": countryId,
    "state_id": stateId,
    "city_id": cityId,
    "activation_key": activationKey,
    "activated_at": activatedAt.toIso8601String(),
    "remember_token": rememberToken,
    "social_account_id": socialAccountId,
    "status": status,
    "social_account_type": socialAccountType,
    "created_at": createdAt.toJson(),
    "updated_at": updatedAt.toJson(),
    "deleted_at": deletedAt,
    "stripe_id": stripeId,
    "card_brand": cardBrand,
    "card_last_four": cardLastFour,
    "trial_ends_at": trialEndsAt,
    "is_profile_completed": isProfileCompleted,
    "profileImage": profileImage,
    "role": role.toJson(),
    "country": country,
    "city": city,
    "state": state,
    "formatted_created_at": formattedCreatedAt,
  };
}

class Role {
  Role({
    required this.id,
    required this.title,
    required this.scope,
    required this.canRegister,
    required this.createdAt,
    required this.updatedAt,
    this.deletedAt,
  });

  int id;
  String title;
  List<String> scope;
  int canRegister;
  AtedAt createdAt;
  AtedAt updatedAt;
  dynamic deletedAt;

  factory Role.fromJson(Map<String, dynamic> json) => Role(
    id: json["id"],
    title: json["title"],
    scope: List<String>.from(json["scope"].map((x) => x)),
    canRegister: json["can_register"],
    createdAt: AtedAt.fromJson(json["created_at"]),
    updatedAt: AtedAt.fromJson(json["updated_at"]),
    deletedAt: json["deleted_at"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "scope": List<dynamic>.from(scope.map((x) => x)),
    "can_register": canRegister,
    "created_at": createdAt.toJson(),
    "updated_at": updatedAt.toJson(),
    "deleted_at": deletedAt,
  };
}

class ServicesOffered {
  ServicesOffered({
    required this.drainRepair,
  });

  int drainRepair;

  factory ServicesOffered.fromJson(Map<String, dynamic> json) => ServicesOffered(
    drainRepair: json["Drain Repair"],
  );

  Map<String, dynamic> toJson() => {
    "Drain Repair": drainRepair,
  };
}

class Pagination {
  Pagination({
    required this.total,
    required this.current,
    required this.first,
    required this.last,
    required this.from,
    required this.to,
    required this.previous,
    required this.next,
    required this.pages,
  });

  int total;
  int current;
  int first;
  int last;
  int from;
  int to;
  int previous;
  int next;
  List<int> pages;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
    total: json["total"],
    current: json["current"],
    first: json["first"],
    last: json["last"],
    from: json["from"],
    to: json["to"],
    previous: json["previous"],
    next: json["next"],
    pages: List<int>.from(json["pages"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "total": total,
    "current": current,
    "first": first,
    "last": last,
    "from": from,
    "to": to,
    "previous": previous,
    "next": next,
    "pages": List<dynamic>.from(pages.map((x) => x)),
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
