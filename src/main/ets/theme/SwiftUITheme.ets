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

export enum SwiftUIBrandStyle {
  Graphite = 0,
  Mist = 1,
  Ocean = 2,
  Mint = 3,
  Amber = 4,
  Rose = 5,
  Lavender = 6
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

export interface SwiftUIBrandPreset {
  tone: SwiftUITone
  fillColor: ResourceColor
  tintColor: ResourceColor
  color: ResourceColor
  accentColor: ResourceColor
  borderColor: ResourceColor
  shadowColor: ResourceColor
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

export function getSwiftUIBrandStyleTitle(style: SwiftUIBrandStyle): ResourceStr {
  switch (style) {
    case SwiftUIBrandStyle.Mist:
      return 'Mist'
    case SwiftUIBrandStyle.Ocean:
      return 'Ocean'
    case SwiftUIBrandStyle.Mint:
      return 'Mint'
    case SwiftUIBrandStyle.Amber:
      return 'Amber'
    case SwiftUIBrandStyle.Rose:
      return 'Rose'
    case SwiftUIBrandStyle.Lavender:
      return 'Lavender'
    case SwiftUIBrandStyle.Graphite:
    default:
      return 'Graphite'
  }
}

export function getSwiftUIBrandStyleSubtitle(style: SwiftUIBrandStyle): ResourceStr {
  switch (style) {
    case SwiftUIBrandStyle.Mist:
      return 'Soft light glass'
    case SwiftUIBrandStyle.Ocean:
      return 'Blue operational'
    case SwiftUIBrandStyle.Mint:
      return 'Green success'
    case SwiftUIBrandStyle.Amber:
      return 'Warm reminder'
    case SwiftUIBrandStyle.Rose:
      return 'Red highlight'
    case SwiftUIBrandStyle.Lavender:
      return 'Purple identity'
    case SwiftUIBrandStyle.Graphite:
    default:
      return 'Dark neutral'
  }
}

export function getSwiftUIBrandPreset(style: SwiftUIBrandStyle = SwiftUIBrandStyle.Graphite): SwiftUIBrandPreset {
  switch (style) {
    case SwiftUIBrandStyle.Mist:
      return {
        tone: SwiftUITone.PureWhite,
        fillColor: '#EEFFFFFF',
        tintColor: '#2EE5E7EB',
        color: '#111827',
        accentColor: '#64748B',
        borderColor: '#80CBD5E1',
        shadowColor: '#1A111827'
      }
    case SwiftUIBrandStyle.Ocean:
      return {
        tone: SwiftUITone.SystemGray,
        fillColor: '#E6111F2E',
        tintColor: '#332563EB',
        color: '#38BDF8',
        accentColor: '#0EA5E9',
        borderColor: '#6638BDF8',
        shadowColor: '#241D4ED8'
      }
    case SwiftUIBrandStyle.Mint:
      return {
        tone: SwiftUITone.GlassBlack,
        fillColor: '#E60E1F1A',
        tintColor: '#3322C55E',
        color: '#34D399',
        accentColor: '#10B981',
        borderColor: '#6634D399',
        shadowColor: '#2410B981'
      }
    case SwiftUIBrandStyle.Amber:
      return {
        tone: SwiftUITone.SystemGray,
        fillColor: '#E6241A0C',
        tintColor: '#33F59E0B',
        color: '#FBBF24',
        accentColor: '#D97706',
        borderColor: '#66FBBF24',
        shadowColor: '#24D97706'
      }
    case SwiftUIBrandStyle.Rose:
      return {
        tone: SwiftUITone.GlassBlack,
        fillColor: '#E6241018',
        tintColor: '#33F43F5E',
        color: '#FB7185',
        accentColor: '#E11D48',
        borderColor: '#66FB7185',
        shadowColor: '#24E11D48'
      }
    case SwiftUIBrandStyle.Lavender:
      return {
        tone: SwiftUITone.SystemGray,
        fillColor: '#E61C1630',
        tintColor: '#33A78BFA',
        color: '#C4B5FD',
        accentColor: '#8B5CF6',
        borderColor: '#66C4B5FD',
        shadowColor: '#248B5CF6'
      }
    case SwiftUIBrandStyle.Graphite:
    default:
      return {
        tone: SwiftUITone.GlassBlack,
        fillColor: SWIFT_UI_GLASS_FILL_STRONG,
        tintColor: '#33252525',
        color: SWIFT_UI_TEXT_PRIMARY,
        accentColor: '#CFCFCF',
        borderColor: '#664A4A4A',
        shadowColor: SWIFT_UI_SHADOW
      }
  }
}

export function swiftUIConfigForStyle(style: SwiftUIBrandStyle = SwiftUIBrandStyle.Graphite): SwiftUIComponentConfig {
  const preset = getSwiftUIBrandPreset(style)
  return swiftUIConfig()
    .withTone(preset.tone)
    .withFillColor(preset.fillColor)
    .withTintColor(preset.tintColor)
    .withColor(preset.color)
    .withAccentColor(preset.accentColor)
    .withBorder(preset.borderColor, 1.1)
    .withShadow(preset.shadowColor, 18)
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
