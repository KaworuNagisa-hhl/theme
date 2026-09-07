export enum SwiftUITone {
  GlassBlack = 0,
  CareGreen = 1,
  WarmAmber = 2,
  ClinicalBlue = 3,
  FreshMint = 4
}

export enum SwiftUIHeaderStyle {
  Neutral = 0,
  Care = 1,
  Tasks = 2,
  Records = 3,
  Family = 4
}

export interface SwiftUIPalette {
  background: ResourceColor
  backgroundElevated: ResourceColor
  surface: ResourceColor
  surfaceMuted: ResourceColor
  surfaceBlue: ResourceColor
  surfaceAmber: ResourceColor
  primary: ResourceColor
  primaryDark: ResourceColor
  accent: ResourceColor
  border: ResourceColor
  divider: ResourceColor
}

export interface SwiftUIGlassMaterial {
  fill: ResourceColor
  fillStrong: ResourceColor
  tint: ResourceColor
  highlight: ResourceColor
  border: ResourceColor
  shadow: ResourceColor
  blurRadius: number
}

export interface SwiftUIMetricItem {
  title: ResourceStr
  value: ResourceStr
  color?: ResourceColor
  icon?: ResourceStr
}

export interface SwiftUIRowItem {
  title: ResourceStr
  subtitle: ResourceStr
  color?: ResourceColor
  icon?: ResourceStr
}

export const SWIFT_UI_SPACING_EXTRA_SMALL: number = 4
export const SWIFT_UI_SPACING_SMALL: number = 8
export const SWIFT_UI_SPACING_MEDIUM: number = 12
export const SWIFT_UI_SPACING_LARGE: number = 16
export const SWIFT_UI_SPACING_EXTRA_LARGE: number = 24

export const SWIFT_UI_RADIUS_CARD: number = 8
export const SWIFT_UI_RADIUS_CONTROL: number = 8
export const SWIFT_UI_GLASS_BLUR: number = 22

export const SWIFT_UI_TEXT_PRIMARY: ResourceColor = '#F8F8F8'
export const SWIFT_UI_TEXT_SECONDARY: ResourceColor = '#D6D6D6'
export const SWIFT_UI_TEXT_TERTIARY: ResourceColor = '#A8A8A8'
export const SWIFT_UI_CRITICAL: ResourceColor = '#AF1E1A'
export const SWIFT_UI_WARNING: ResourceColor = '#AB5F08'
export const SWIFT_UI_SUCCESS: ResourceColor = '#1E7A50'
export const SWIFT_UI_INFO: ResourceColor = '#235595'
export const SWIFT_UI_LAVENDER: ResourceColor = '#7449AA'
export const SWIFT_UI_SHADOW_BASE: ResourceColor = '#11181E'
export const SWIFT_UI_SHADOW: ResourceColor = '#1411181E'
export const SWIFT_UI_GLASS_HIGHLIGHT: ResourceColor = '#33FFFFFF'
export const SWIFT_UI_GLASS_FILL: ResourceColor = '#C2141414'
export const SWIFT_UI_GLASS_FILL_STRONG: ResourceColor = '#E6111111'

function toAlphaHex(opacity: number): string {
  const alpha = Math.max(0, Math.min(255, Math.round(opacity * 255)))
  const hex = alpha.toString(16).toUpperCase()
  return hex.length === 1 ? `0${hex}` : hex
}

export function swiftUIColorWithOpacity(color: ResourceColor, opacity: number): ResourceColor {
  if (typeof color === 'string') {
    const hex = color.trim()
    if (hex.length === 7 && hex.charAt(0) === '#') {
      return `#${toAlphaHex(opacity)}${hex.substring(1)}`
    }
  }
  return color
}

export function getSwiftUIToneTitle(tone: SwiftUITone): ResourceStr {
  switch (tone) {
    case SwiftUITone.GlassBlack:
      return 'Glass Black'
    case SwiftUITone.WarmAmber:
      return 'Warm Amber'
    case SwiftUITone.ClinicalBlue:
      return 'Clinical Blue'
    case SwiftUITone.FreshMint:
      return 'Fresh Mint'
    case SwiftUITone.CareGreen:
    default:
      return 'Care Green'
  }
}

export function getSwiftUIToneSubtitle(tone: SwiftUITone): ResourceStr {
  switch (tone) {
    case SwiftUITone.GlassBlack:
      return 'Default black glass'
    case SwiftUITone.WarmAmber:
      return 'Warmer family tone'
    case SwiftUITone.ClinicalBlue:
      return 'Cleaner clinic tone'
    case SwiftUITone.FreshMint:
      return 'Fresh family space'
    case SwiftUITone.CareGreen:
    default:
      return 'Default calm care'
  }
}

export function getSwiftUIPalette(tone: SwiftUITone = SwiftUITone.GlassBlack): SwiftUIPalette {
  switch (tone) {
    case SwiftUITone.GlassBlack:
      return {
        background: '#0B0B0C',
        backgroundElevated: '#161616',
        surface: '#1A1A1A',
        surfaceMuted: '#2A2A2A',
        surfaceBlue: '#252525',
        surfaceAmber: '#333333',
        primary: '#F8F8F8',
        primaryDark: '#000000',
        accent: '#CFCFCF',
        border: '#4A4A4A',
        divider: '#2E2E2E'
      }
    case SwiftUITone.WarmAmber:
      return {
        background: '#FAF4EA',
        backgroundElevated: '#FFFBEF',
        surface: '#FFFFFE',
        surfaceMuted: '#DEF2DF',
        surfaceBlue: '#E3F2FD',
        surfaceAmber: '#FFE6B3',
        primary: '#1D6E63',
        primaryDark: '#153A35',
        accent: '#C26F42',
        border: '#D1BAA0',
        divider: '#E3D4BF'
      }
    case SwiftUITone.ClinicalBlue:
      return {
        background: '#EDF5FB',
        backgroundElevated: '#F6FBFF',
        surface: '#FEFFFF',
        surfaceMuted: '#D8F4E9',
        surfaceBlue: '#D2EAFF',
        surfaceAmber: '#FFECBE',
        primary: '#165A8F',
        primaryDark: '#0D2842',
        accent: '#0F8173',
        border: '#A6C7E3',
        divider: '#CBDDED'
      }
    case SwiftUITone.FreshMint:
      return {
        background: '#EEF9F5',
        backgroundElevated: '#F7FDFB',
        surface: '#FFFFFF',
        surfaceMuted: '#D1F6E6',
        surfaceBlue: '#DBF0FE',
        surfaceAmber: '#FFEDC2',
        primary: '#096B5F',
        primaryDark: '#083633',
        accent: '#3CA5AF',
        border: '#A9CFC9',
        divider: '#CFE4E0'
      }
    case SwiftUITone.CareGreen:
    default:
      return {
        background: '#EFF7F5',
        backgroundElevated: '#F8FCFA',
        surface: '#FFFFFF',
        surfaceMuted: '#D9F6EA',
        surfaceBlue: '#E2F2FE',
        surfaceAmber: '#FFEFCA',
        primary: '#0B7063',
        primaryDark: '#0A3834',
        accent: '#40A4B3',
        border: '#B0CFCB',
        divider: '#D3E4E1'
      }
  }
}

export function getSwiftUIGlassMaterial(tone: SwiftUITone = SwiftUITone.GlassBlack): SwiftUIGlassMaterial {
  const palette = getSwiftUIPalette(tone)
  return {
    fill: SWIFT_UI_GLASS_FILL,
    fillStrong: SWIFT_UI_GLASS_FILL_STRONG,
    tint: swiftUIColorWithOpacity(palette.surfaceBlue, 0.34),
    highlight: SWIFT_UI_GLASS_HIGHLIGHT,
    border: swiftUIColorWithOpacity(palette.border, 0.68),
    shadow: swiftUIColorWithOpacity(SWIFT_UI_SHADOW_BASE, 0.10),
    blurRadius: SWIFT_UI_GLASS_BLUR
  }
}

export function getSwiftUIGlassBorderColor(tone: SwiftUITone = SwiftUITone.GlassBlack): ResourceColor {
  return getSwiftUIGlassMaterial(tone).border
}

export function getSwiftUIGlassTint(tone: SwiftUITone = SwiftUITone.GlassBlack): ResourceColor {
  return getSwiftUIGlassMaterial(tone).tint
}

export function getHeaderPrimaryColor(style: SwiftUIHeaderStyle, tone: SwiftUITone = SwiftUITone.GlassBlack): ResourceColor {
  const palette = getSwiftUIPalette(tone)
  switch (style) {
    case SwiftUIHeaderStyle.Care:
      return palette.primary
    case SwiftUIHeaderStyle.Records:
      return SWIFT_UI_INFO
    case SwiftUIHeaderStyle.Family:
      return palette.accent
    case SwiftUIHeaderStyle.Tasks:
      return palette.surfaceMuted
    case SwiftUIHeaderStyle.Neutral:
    default:
      return palette.surface
  }
}

export function getHeaderGradientStops(style: SwiftUIHeaderStyle, tone: SwiftUITone = SwiftUITone.GlassBlack): Array<[ResourceColor, number]> {
  const palette = getSwiftUIPalette(tone)
  switch (style) {
    case SwiftUIHeaderStyle.Care:
      return [[palette.primaryDark, 0.0], [palette.primary, 0.58], [palette.accent, 1.0]]
    case SwiftUIHeaderStyle.Tasks:
      return [
        [palette.surface, 0.0],
        [palette.surface, 0.36],
        [swiftUIColorWithOpacity(palette.surfaceMuted, 0.58), 0.76],
        [swiftUIColorWithOpacity(palette.surfaceBlue, 0.34), 1.0]
      ]
    case SwiftUIHeaderStyle.Records:
      return [[SWIFT_UI_INFO, 0.0], [palette.surfaceBlue, 0.58], [swiftUIColorWithOpacity(palette.accent, 0.80), 1.0]]
    case SwiftUIHeaderStyle.Family:
      return [[palette.primary, 0.0], [swiftUIColorWithOpacity(SWIFT_UI_LAVENDER, 0.78), 0.58], [swiftUIColorWithOpacity(palette.surfaceMuted, 0.90), 1.0]]
    case SwiftUIHeaderStyle.Neutral:
    default:
      return [[palette.surface, 0.0], [palette.surface, 0.68], [swiftUIColorWithOpacity(palette.surfaceBlue, 0.08), 1.0]]
  }
}

export function getHeaderAccentColor(style: SwiftUIHeaderStyle, tone: SwiftUITone = SwiftUITone.GlassBlack): ResourceColor {
  const palette = getSwiftUIPalette(tone)
  switch (style) {
    case SwiftUIHeaderStyle.Tasks:
      return palette.primary
    case SwiftUIHeaderStyle.Family:
      return SWIFT_UI_LAVENDER
    case SwiftUIHeaderStyle.Neutral:
    case SwiftUIHeaderStyle.Care:
    case SwiftUIHeaderStyle.Records:
    default:
      return palette.surfaceAmber
  }
}

export function headerUsesLightText(style: SwiftUIHeaderStyle): boolean {
  return style === SwiftUIHeaderStyle.Care || style === SwiftUIHeaderStyle.Records || style === SwiftUIHeaderStyle.Family
}
