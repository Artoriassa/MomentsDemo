export default class User {
  public username: string
  public nickname: string
  public avatar: string
  public profileImage: string

  constructor(username: string, nickname: string, avatar: string, profileImage: string) {
    this.username = username
    this.nickname = nickname
    this.avatar = avatar
    this.profileImage = profileImage
  }
}