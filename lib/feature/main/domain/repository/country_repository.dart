abstract class CountryRepository {
  Future<dynamic> getAll();

  Future<dynamic> searchByName(String query);
}
