dynamic str_to_list(data) {
  return data
      .replaceAll("[", "")
      .replaceAll("]", "")
      .replaceAll("'", "")
      .split(', ');
}

dynamic list_to_str(data) {
  return data.toString().replaceAll('[', '').replaceAll(']', '');
}
