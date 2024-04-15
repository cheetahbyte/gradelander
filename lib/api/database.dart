class Database {
  Database();

  List<int> _grades = [1, 2, 3, 4, 5, 6];

  void addGrade(int grade) {
    _grades.add(grade);
  }

  List<int> get grades => _grades;
}

final DB = Database();
