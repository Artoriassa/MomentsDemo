import Constants from '../common/Constants'
import Moment from '../model/Moment'
import Sender from '../model/Sender'
@Component
export default struct MomentView {
  @State private moment: Moment = new Moment(
    new Sender('', '', ''),
    '',
    [],
    []
  )

  build() {
    Column() {
      Row({ space: Constants.SPACING_MEDIUM }) {
        Image($r('app.media.app_icon'))
          .height($r('app.float.image_size_m'))
        Column({ space: Constants.SPACING_SMALL }) {
          Text(this.moment.sender.username)
            .fontWeight(FontWeight.Bold)
          Text(this.moment.content)
            .width(Constants.MOMENTS_CONTENT_LENGTH)
          Grid() {
            ForEach(this.moment.images, image => {
              GridItem() {
                Image($r('app.media.icon'))
                  .width($r('app.float.image_size_l'))
              }
            })
          }
          .columnsGap($r('app.float.margin_s'))
          .rowsGap($r('app.float.margin_s'))
          .layoutDirection(GridDirection.Row)
          .maxCount(Constants.MOMENTS_GRID_MAX_LENGTH)
        }
        .alignItems(HorizontalAlign.Start)
      }
      .width(Constants.FULL_LENGTH)
      .alignItems(VerticalAlign.Top)

      Divider()
        .padding({ top: $r('app.float.margin_l'), bottom: $r('app.float.margin_l') })
    }
    .padding($r('app.float.margin_l'))
  }
}