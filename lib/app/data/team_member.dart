class TeamMember{

  String id;
  String name;
  String image;
  String gender;
  String address;
  List<Qualification> qualifications;
  List<Experience> experience;
  String currentProject;

//<editor-fold desc="Data Methods">

  TeamMember({
    required this.id,
    required this.name,
    required this.image,
    required this.gender,
    required this.address,
    required this.qualifications,
    required this.experience,
    required this.currentProject,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is TeamMember &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          name == other.name &&
          image == other.image &&
          gender == other.gender &&
          address == other.address &&
          qualifications == other.qualifications &&
          experience == other.experience &&
          currentProject == other.currentProject);

  @override
  int get hashCode =>
      id.hashCode ^
      name.hashCode ^
      image.hashCode ^
      gender.hashCode ^
      address.hashCode ^
      qualifications.hashCode ^
      experience.hashCode ^
      currentProject.hashCode;

  @override
  String toString() {
    return 'TeamMember{ id: $id, name: $name, image: $image, gender: $gender, address: $address, qualifications: $qualifications, experience: $experience, currentProject: $currentProject,}';
  }

  TeamMember copyWith({
    String? id,
    String? name,
    String? image,
    String? gender,
    String? profileImage,
    String? address,
    List<Qualification>? qualifications,
    List<Experience>? experience,
    String? currentProject,
  }) {
    return TeamMember(
      id: id ?? this.id,
      name: name ?? this.name,
      image: image ?? this.image,
      gender: gender ?? this.gender,
      address: address ?? this.address,
      qualifications: qualifications ?? this.qualifications,
      experience: experience ?? this.experience,
      currentProject: currentProject ?? this.currentProject,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'image': image,
      'gender': gender,
      'address': address,
      'qualifications': qualifications,
      'experience': experience,
      'currentProject': currentProject,
    };
  }

  factory TeamMember.fromMap(Map<String, dynamic> map) {
    return TeamMember(
      id: map['id'] as String,
      name: map['name'] as String,
      image: map['image'] as String,
      gender: map['gender'] as String,
      address: map['address'] as String,
      qualifications: map['qualifications'] as List<Qualification>,
      experience: map['experience'] as List<Experience>,
      currentProject: map['currentProject'] as String,
    );
  }

//</editor-fold>
}

class Qualification{
  String courseName;
  String instituteName;
  DateTime enrolledIn;
  DateTime graduatedIn;
  double passingPercentage;

//<editor-fold desc="Data Methods">

  Qualification({
    required this.courseName,
    required this.instituteName,
    required this.enrolledIn,
    required this.graduatedIn,
    required this.passingPercentage,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Qualification &&
          runtimeType == other.runtimeType &&
          courseName == other.courseName &&
          instituteName == other.instituteName &&
          enrolledIn == other.enrolledIn &&
          graduatedIn == other.graduatedIn &&
          passingPercentage == other.passingPercentage);

  @override
  int get hashCode =>
      courseName.hashCode ^
      instituteName.hashCode ^
      enrolledIn.hashCode ^
      graduatedIn.hashCode ^
      passingPercentage.hashCode;

  @override
  String toString() {
    return 'Qualification{ courseName: $courseName, instituteName: $instituteName, enrolledIn: $enrolledIn, graduatedIn: $graduatedIn, passingPercentage: $passingPercentage,}';
  }

  Qualification copyWith({
    String? courseName,
    String? instituteName,
    DateTime? enrolledIn,
    DateTime? graduatedIn,
    double? passingPercentage,
  }) {
    return Qualification(
      courseName: courseName ?? this.courseName,
      instituteName: instituteName ?? this.instituteName,
      enrolledIn: enrolledIn ?? this.enrolledIn,
      graduatedIn: graduatedIn ?? this.graduatedIn,
      passingPercentage: passingPercentage ?? this.passingPercentage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'courseName': courseName,
      'instituteName': instituteName,
      'enrolledIn': enrolledIn,
      'graduatedIn': graduatedIn,
      'passingPercentage': passingPercentage,
    };
  }

  factory Qualification.fromMap(Map<String, dynamic> map) {
    return Qualification(
      courseName: map['courseName'] as String,
      instituteName: map['instituteName'] as String,
      enrolledIn: map['enrolledIn'] as DateTime,
      graduatedIn: map['graduatedIn'] as DateTime,
      passingPercentage: map['passingPercentage'] as double,
    );
  }

//</editor-fold>
}

class Experience{
  String postName;
  String companyName;
  DateTime startedIn;
  DateTime leftIn;

//<editor-fold desc="Data Methods">

  Experience({
    required this.postName,
    required this.companyName,
    required this.startedIn,
    required this.leftIn,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Experience &&
          runtimeType == other.runtimeType &&
          postName == other.postName &&
          companyName == other.companyName &&
          startedIn == other.startedIn &&
          leftIn == other.leftIn);

  @override
  int get hashCode =>
      postName.hashCode ^
      companyName.hashCode ^
      startedIn.hashCode ^
      leftIn.hashCode;

  @override
  String toString() {
    return 'Experience{ postName: $postName, companyName: $companyName, startedIn: $startedIn, leftIn: $leftIn,}';
  }

  Experience copyWith({
    String? postName,
    String? companyName,
    DateTime? startedIn,
    DateTime? leftIn,
  }) {
    return Experience(
      postName: postName ?? this.postName,
      companyName: companyName ?? this.companyName,
      startedIn: startedIn ?? this.startedIn,
      leftIn: leftIn ?? this.leftIn,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'postName': postName,
      'companyName': companyName,
      'startedIn': startedIn,
      'leftIn': leftIn,
    };
  }

  factory Experience.fromMap(Map<String, dynamic> map) {
    return Experience(
      postName: map['postName'] as String,
      companyName: map['companyName'] as String,
      startedIn: map['startedIn'] as DateTime,
      leftIn: map['leftIn'] as DateTime,
    );
  }

//</editor-fold>
}