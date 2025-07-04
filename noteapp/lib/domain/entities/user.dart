class User {
  final String id;
  final String email;
  final String? displayName;
  final DateTime createdAt;

  User({
    required this.id,
    required this.email,
    this.displayName,
    required this.createdAt,
  });

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is User && other.id == id;
  }

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() {
    return 'User(id: $id, email: $email, displayName: $displayName)';
  }
}
