int parseInt(dynamic value, [int fallback = 0]) {
  if (value is int) {
    return value;
  } else if (value is String) {
    return int.tryParse(value);
  } else {
    return fallback;
  }
}

double parseDouble(dynamic value, [double fallback = 0]) {
  if (value is double) {
    return value;
  } else if (value is String) {
    return double.tryParse(value);
  } else {
    return fallback;
  }
}

String parseString(dynamic value, {String fallback = ""}) {
  if (value == null) {
    return fallback;
  } else if (value is String) {
    return value;
  } else {
    return value?.toString();
  }
}
