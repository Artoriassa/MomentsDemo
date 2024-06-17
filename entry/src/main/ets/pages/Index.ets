import Constants from '../common/Constants'
import Moment from '../model/Moment'
import Sender from '../model/Sender'
import User from '../model/User'
import MomentView from '../view/MomentView'

@Entry
@Component
struct Index {
  user: User = new User('Artorias', 'AA', 'app.media.app_icon', '')
  moments: Moment[] = [
    new Moment(
      new Sender('Artorias', 'AA', 'app.media.app_icon'),
      'Grateful for the opportunity to explore new horizons, create lasting memories, and cherish every moment of this vacation.',
      ['app.media.app_icon', 'app.media.app_icon', 'app.media.app_icon', 'app.media.app_icon'],
      []
    ),
    new Moment(
      new Sender('Artorias', 'AA', 'app.media.app_icon'),
      'Grateful for the opportunity to explore new horizons, create lasting memories, and cherish every moment of this vacation.',
      ['app.media.app_icon', 'app.media.app_icon', 'app.media.app_icon', 'app.media.app_icon'],
      []
    ),
    new Moment(
      new Sender('Artorias', 'AA', 'app.media.app_icon'),
      'Grateful for the opportunity to explore new horizons, create lasting memories, and cherish every moment of this vacation.',
      ['app.media.app_icon', 'app.media.app_icon', 'app.media.app_icon', 'app.media.app_icon'],
      []
    )
  ]

  build() {
    List() {
      ForEach(this.moments, (moment: Moment) => {
        ListItem() {
          MomentView({ moment: moment })
        }
      })
    }
    .scrollBar(BarState.Auto)
  }
}