class UserModal
{
  late String name,phone,image,email,token;

  UserModal(this.name, this.phone, this.image, this.email, this.token);

  factory UserModal.fromMap(Map m1)
  {
    return UserModal(m1['name'], m1['phone'], m1['image'], m1['email'], m1['token']);
  }

  Map<String, String> toMap(UserModal user)
  {
    return {
      'name': user.name,
      'phone': user.phone,
      'image': user.image,
      'email': user.email,
      'token': user.token,
    };
  }
}