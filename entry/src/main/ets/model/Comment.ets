import Sender from './Sender'
export default class Comment {
  public content: string
  public sender: Sender

  constructor(content: string, sender: Sender) {
    this.content = content
    this.sender = sender
  }
}