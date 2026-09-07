import { getSwiftUIGlassMaterial, getSwiftUIPalette, swiftUIConfig, SwiftUITone } from 'theme'

@Component
export struct SwiftUIThemeUsage {
  private palette = getSwiftUIPalette(SwiftUITone.GlassBlack)
  private material = getSwiftUIGlassMaterial(SwiftUITone.GlassBlack)
  private config = swiftUIConfig().withTone(SwiftUITone.GlassBlack).withRadius(8)

  build() {
    Column({ space: 8 }) {
      Text('Theme palette')
        .fontSize(16)
        .fontWeight(FontWeight.Bold)
        .fontColor(this.palette.primary)
      Text('Glass blur: ' + this.material.blurRadius.toString())
        .fontSize(13)
        .fontColor(this.palette.accent)
    }
    .width(this.config.width === undefined ? '100%' : this.config.width)
    .padding(16)
    .backgroundColor(this.palette.backgroundElevated)
    .borderRadius(8)
  }
}
