class VacancyModel{
  int? id;
  String? name;
  String? image;
  String? slug;
  dynamic category; // Using dynamic because it's null and the type is not specified
  int? categoryId;
  dynamic title; // Same reasoning as for category
  int? titleId;
  String? description;
  dynamic introduce; // Same reasoning as above
  dynamic objectTarget; // Same reasoning as above
  String? experience;
  String? createDate;
  int? popular;
  dynamic province; // Same reasoning as above
  int? provinceId;
  dynamic time; // Same reasoning as above
  int? timeId;
  int? minSalary;
  int? maxSalary;
  dynamic appUser; // Same reasoning as above
  String? appUserId;
  dynamic skills; // Same reasoning as above
  dynamic cVs; // Same reasoning as above

  VacancyModel({
    this.id,
    this.name,
    this.image,
    this.slug,
    this.category,
    this.categoryId,
    this.title,
    this.titleId,
    this.description,
    this.introduce,
    this.objectTarget,
    this.experience,
    this.createDate,
    this.popular,
    this.province,
    this.provinceId,
    this.time,
    this.timeId,
    this.minSalary,
    this.maxSalary,
    this.appUser,
    this.appUserId,
    this.skills,
    this.cVs,
  });

  factory VacancyModel.fromJson(Map<String, dynamic> json) {
    return VacancyModel(
      id: json['id']??0,
      name: json['name']??"",
      image: json['image']??"",
      slug: json['slug']??"",
      category: json['category']??"",
      categoryId: json['categoryId']??0,
      title: json['title']??"",
      titleId: json['titleId']??0,
      description: json['description'],
      introduce: json['introduce'],
      objectTarget: json['objectTarget'],
      experience: json['experience'],
      createDate: json['createDate'],
      popular: json['popular'],
      province: json['province'],
      provinceId: json['provinceId'],
      time: json['time']??"",
      timeId: json['timeId']??0,
      minSalary: json['minSalary'],
      maxSalary: json['maxSalary'],
      appUser: json['appUser'],
      appUserId: json['appUserId'],
      skills: json['skills'],
      cVs: json['cVs'],
    );
  }

 }