//
// Created on 19-10-2022 at 11:57 by Gunjan
class Battery {
  String bin;
  int currentSoc;

  Battery({
    required this.bin,
    required this.currentSoc,
  });

  Battery copyWith({
    String? bin,
    int? currentSoc,
  }) {
    return Battery(
      bin: bin ?? this.bin,
      currentSoc: currentSoc ?? this.currentSoc,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bin': bin,
      'currentSoc': currentSoc,
    };
  }

  factory Battery.fromMap(Map<String, dynamic> map) {
    return Battery(
      bin: map['bin'] as String,
      currentSoc: map['currentSoc'] as int,
    );
  }
}
