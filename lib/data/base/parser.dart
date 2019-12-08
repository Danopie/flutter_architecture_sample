int parseInt(dynamic value) {
  if (value is int) {
    return value;
  } else if (value is String) {
    return int.tryParse(value);
  } else {
    return null;
  }
}

double parseDouble(dynamic value) {
  if (value is double) {
    return value;
  } else if (value is String) {
    return double.tryParse(value);
  } else {
    return null;
  }
}

String parseString(dynamic value) {
  if (value is String) {
    return value;
  } else {
    return value?.toString();
  }
}
