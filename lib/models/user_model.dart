class User {
  String name;
  String profilepicture;
  int id;
  bool isOffline;

  User({
    required this.name,
    required this.profilepicture,
    required this.id,
    required this.isOffline
  });
}

User currentUser = User(
  id: 0,
  profilepicture: "assets/1.jpg",
  name: "Zenitsu",
 isOffline: true,
);

User gideon = User(
  id: 1,
  profilepicture: "assets/2.jpg",
  name: "Gideon",
  isOffline: false,
);

User tj = User(
  id: 2,
  profilepicture: "assets/3.jpg",
  name: "TJ",
  isOffline: false,
);
User kay = User(
  id: 3,
  profilepicture: "assets/4.jpg",
  name: "Kayode",
 isOffline: true,
);
User musa = User(
  id: 4,
  profilepicture: "assets/5.jpg",
  name: "Musa",
 isOffline: false,
);
User richard = User(
  id: 5,
  profilepicture: "assets/1.jpg",
  name: "Richard",
 isOffline: false,
);
User babes = User(
  id: 6,
  profilepicture: "assets/3.jpg",
  name: "babes",
 isOffline: false,
);
