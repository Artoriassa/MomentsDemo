import Comment from './Comment'
import Sender from './Sender'

export default class Moment {
  public sender: Sender
  public content: string
  public images: string[]
  public comments: Comment[]

  constructor(sender: Sender, content: string, images: string[], comments: Comment[]) {
    this.sender = sender
    this.content = content
    this.images = images
    this.comments = comments
  }
}

