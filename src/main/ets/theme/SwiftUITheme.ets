export enum SwiftUITone {
  GlassBlack = 0,
  PureWhite = 1,
  SystemGray = 2
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

export class SwiftUIComponentConfig {
  tone?: SwiftUITone
  width?: Length
  height?: Length
  color?: ResourceColor
  fillColor?: ResourceColor
  tintColor?: ResourceColor
  borderColor?: ResourceColor
  borderWidth?: number
  cornerRadius?: number
  shadowColor?: ResourceColor
  shadowRadius?: number
  contentPadding?: number
  spacing?: number
  titleFontSize?: number
  subtitleFontSize?: number
  textFontSize?: number
  iconSize?: Length
  accentColor?: ResourceColor

  withTone(tone: SwiftUITone): SwiftUIComponentConfig {
    this.tone = tone
    return this
  }

  withWidth(width: Length): SwiftUIComponentConfig {
    this.width = width
    return this
  }

  withHeight(height: Length): SwiftUIComponentConfig {
    this.height = height
    return this
  }

  withSize(width: Length, height: Length): SwiftUIComponentConfig {
    this.width = width
    this.height = height
    return this
  }

  withColor(color: ResourceColor): SwiftUIComponentConfig {
    this.color = color
    return this
  }

  withFillColor(fillColor: ResourceColor): SwiftUIComponentConfig {
    this.fillColor = fillColor
    return this
  }

  withTintColor(tintColor: ResourceColor): SwiftUIComponentConfig {
    this.tintColor = tintColor
    return this
  }

  withBorder(color: ResourceColor, width: number = 1): SwiftUIComponentConfig {
    this.borderColor = color
    this.borderWidth = width
    return this
  }

  withRadius(cornerRadius: number): SwiftUIComponentConfig {
    this.cornerRadius = cornerRadius
    return this
  }

  withShadow(color: ResourceColor, radius: number): SwiftUIComponentConfig {
    this.shadowColor = color
    this.shadowRadius = radius
    return this
  }

  withPadding(contentPadding: number): SwiftUIComponentConfig {
    this.contentPadding = contentPadding
    return this
  }

  withSpacing(spacing: number): SwiftUIComponentConfig {
    this.spacing = spacing
    return this
  }

  withTitleFontSize(titleFontSize: number): SwiftUIComponentConfig {
    this.titleFontSize = titleFontSize
    return this
  }

  withSubtitleFontSize(subtitleFontSize: number): SwiftUIComponentConfig {
    this.subtitleFontSize = subtitleFontSize
    return this
  }

  withTextFontSize(textFontSize: number): SwiftUIComponentConfig {
    this.textFontSize = textFontSize
    return this
  }

  withIconSize(iconSize: Length): SwiftUIComponentConfig {
    this.iconSize = iconSize
    return this
  }

  withAccentColor(accentColor: ResourceColor): SwiftUIComponentConfig {
    this.accentColor = accentColor
    return this
  }
}

export function swiftUIConfig(): SwiftUIComponentConfig {
  return new SwiftUIComponentConfig()
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
    case SwiftUITone.PureWhite:
      return 'Pure White'
    case SwiftUITone.SystemGray:
    default:
      return 'System Gray'
  }
}

export function getSwiftUIToneSubtitle(tone: SwiftUITone): ResourceStr {
  switch (tone) {
    case SwiftUITone.GlassBlack:
      return 'Default black glass'
    case SwiftUITone.PureWhite:
      return 'Clean white glass'
    case SwiftUITone.SystemGray:
    default:
      return 'Neutral gray glass'
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
    case SwiftUITone.PureWhite:
      return {
        background: '#F8F8F8',
        backgroundElevated: '#FFFFFF',
        surface: '#FFFFFF',
        surfaceMuted: '#EFEFEF',
        surfaceBlue: '#E7E7E7',
        surfaceAmber: '#DDDDDD',
        primary: '#111111',
        primaryDark: '#000000',
        accent: '#4D4D4D',
        border: '#D0D0D0',
        divider: '#E5E5E5'
      }
    case SwiftUITone.SystemGray:
    default:
      return {
        background: '#1C1C1E',
        backgroundElevated: '#2C2C2E',
        surface: '#303033',
        surfaceMuted: '#3A3A3C',
        surfaceBlue: '#4A4A4D',
        surfaceAmber: '#5A5A5D',
        primary: '#F2F2F7',
        primaryDark: '#111111',
        accent: '#B8B8BD',
        border: '#5F5F63',
        divider: '#3F3F43'
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
