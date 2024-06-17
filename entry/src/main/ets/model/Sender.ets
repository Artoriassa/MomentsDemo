export default class Sender {
  public username: string
  public nickname: string
  public avatar: string

  constructor(username: string, nickname: string, avatar: string) {
    this.username = username
    this.nickname = nickname
    this.avatar = avatar
  }
}