import Constants from '../common/Constants'

@Entry
@Component
struct Index {
  build() {
    Column() {
      Row({ space: Constants.SPACING_MEDIUM }) {
        Image($r('app.media.app_icon'))
          .height($r('app.float.image_size_m'))
        Column({ space: Constants.SPACING_SMALL }) {
          Text('Artorias')
            .fontWeight(FontWeight.Bold)
          Text('Grateful for the opportunity to explore new horizons, create lasting memories, and cherish every moment of this vacation.')
            .width(Constants.MOMENTS_CONTENT_LENGTH)
          Grid() {
            GridItem() {
              Image($r('app.media.icon'))
                .width($r('app.float.image_size_l'))
            }

            GridItem() {
              Image($r('app.media.icon'))
                .width($r('app.float.image_size_l'))
            }

            GridItem() {
              Image($r('app.media.icon'))
                .width($r('app.float.image_size_l'))
            }

            GridItem() {
              Image($r('app.media.icon'))
                .width($r('app.float.image_size_l'))
            }
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