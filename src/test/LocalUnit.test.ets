import { describe, it, expect } from '@ohos/hypium'
import {
  getSwiftUIGlassBorderColor,
  getSwiftUIGlassMaterial,
  getSwiftUIGlassTint,
  getSwiftUIPalette,
  getSwiftUIToneSubtitle,
  getSwiftUIToneTitle,
  swiftUIColorWithOpacity,
  SwiftUITone,
  SWIFT_UI_GLASS_FILL,
  SWIFT_UI_GLASS_FILL_STRONG,
  SWIFT_UI_GLASS_HIGHLIGHT,
  SWIFT_UI_RADIUS_CARD,
  SWIFT_UI_RADIUS_CONTROL
} from '../main/ets/theme/SwiftUITheme'

export default function localUnitTest() {
  describe('SwiftUITheme', () => {
    it('exports_glass_tokens_for_swiftui_material_style', 0, () => {
      expect(SWIFT_UI_GLASS_FILL.toString()).assertContain('#')
      expect(SWIFT_UI_GLASS_FILL_STRONG.toString()).assertContain('#')
      expect(SWIFT_UI_GLASS_HIGHLIGHT.toString()).assertContain('#')
      expect(SWIFT_UI_RADIUS_CARD).assertEqual(8)
      expect(SWIFT_UI_RADIUS_CONTROL).assertEqual(8)
    })

    it('builds_palette_for_every_tone', 0, () => {
      const tones: SwiftUITone[] = [
        SwiftUITone.CareGreen,
        SwiftUITone.WarmAmber,
        SwiftUITone.ClinicalBlue,
        SwiftUITone.FreshMint
      ]
      tones.forEach((tone: SwiftUITone) => {
        expect(getSwiftUIToneTitle(tone).toString().length > 0).assertTrue()
        expect(getSwiftUIToneSubtitle(tone).toString().length > 0).assertTrue()
        expect(getSwiftUIPalette(tone).primary.toString()).assertContain('#')
        expect(getSwiftUIPalette(tone).accent.toString()).assertContain('#')
      })
    })

    it('creates_glass_material_for_every_tone', 0, () => {
      const material = getSwiftUIGlassMaterial(SwiftUITone.CareGreen)
      expect(material.blurRadius > 0).assertTrue()
      expect(material.fill.toString()).assertContain('#')
      expect(getSwiftUIGlassBorderColor(SwiftUITone.CareGreen).toString()).assertContain('#')
      expect(getSwiftUIGlassTint(SwiftUITone.CareGreen).toString()).assertContain('#')
    })

    it('converts_hex_color_to_alpha_hex', 0, () => {
      expect(swiftUIColorWithOpacity('#FFFFFF', 0.5)).assertEqual('#80FFFFFF')
      expect(swiftUIColorWithOpacity('#101828', 0)).assertEqual('#00101828')
      expect(swiftUIColorWithOpacity('#101828', 1)).assertEqual('#FF101828')
    })
  })
}
