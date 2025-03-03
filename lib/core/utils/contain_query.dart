bool containQuery({required String target, required String query}) {
  //String normalizeTarget = target.replaceAll(RegExp(r'\s+'), '');
  //String normalizeQuery = query.replaceAll(RegExp(r'\s+'), '');

  return target.toLowerCase().contains(query.toLowerCase());
  //return normalizeTarget.toLowerCase().contains(normalizeQuery.toLowerCase());
}
