enum AppEnvironment {
  dev('dev', 'https://dummyjson.com'),
  staging('staging', 'https://dummyjson.com'),
  prod('prod', 'https://dummyjson.com');

  const AppEnvironment(
    this.name,
    this.baseUrl,
  );

  final String baseUrl;
  final String name;
}
