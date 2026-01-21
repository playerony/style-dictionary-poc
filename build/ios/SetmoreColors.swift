import UIKit

struct TextColors {
    let Accent: UIColor
    let AccentHover: UIColor
    let AccentPressed: UIColor
    let Primary: UIColor
    let Secondary: UIColor
    let SecondaryHover: UIColor
    let Tertiary: UIColor
    let Disabled: UIColor
    let DisabledSecondary: UIColor
    let Onprimary: UIColor
    let OnprimaryDisabled: UIColor
    let Positive: UIColor
    let PositiveSecondary: UIColor
    let Caution: UIColor
    let CautionSecondary: UIColor
    let Inverse: UIColor
    let InverseSecondary: UIColor
    let InverseCaution: UIColor
    let InversePositive: UIColor
    let InverseCritical: UIColor
    let InverseAccent: UIColor
    let Link: UIColor
    let LinkHover: UIColor
    let LinkPressed: UIColor
    let Critical: UIColor
    let CriticalOnprimary: UIColor
    let CriticalSecondary: UIColor
}

struct IconColors {
    let Accent: UIColor
    let Critical: UIColor
    let CriticalOnprimary: UIColor
    let Onprimary: UIColor
    let Primary: UIColor
    let Secondary: UIColor
    let Tertiary: UIColor
    let Positive: UIColor
    let PositiveHover: UIColor
    let Caution: UIColor
    let Inverse: UIColor
}

struct BackgroundColors {
    let Canvas: UIColor
    let CanvasSecondary: UIColor
    let CanvasTertiary: UIColor
    let Menu: UIColor
    let Neutral: UIColor
    let NeutralHover: UIColor
    let NeutralPressed: UIColor
    let NeutralActive: UIColor
    let NeutralDisabled: UIColor
    let NeutralSecondary: UIColor
    let NeutralSecondaryHover: UIColor
    let NeutralSecondaryPressed: UIColor
    let NeutralTertiary: UIColor
    let NeutralTertiaryHover: UIColor
    let Inverse: UIColor
    let InverseHover: UIColor
    let InversePressed: UIColor
    let InverseSecondary: UIColor
    let InverseTertiary: UIColor
    let InverseTertiaryHover: UIColor
    let InverseTertiaryPressed: UIColor
    let Critical: UIColor
    let CriticalHover: UIColor
    let CriticalPressed: UIColor
    let CriticalSecondary: UIColor
    let CriticalSecondaryHover: UIColor
    let CriticalSecondaryPressed: UIColor
    let Accent: UIColor
    let AccentHover: UIColor
    let AccentPressed: UIColor
    let AccentSecondary: UIColor
    let AccentSecondaryHover: UIColor
    let AccentSecondaryPressed: UIColor
    let AccentTertiary: UIColor
    let AccentTertiaryHover: UIColor
    let AccentTertiaryPressed: UIColor
    let Positive: UIColor
    let PositiveHover: UIColor
    let PositivePressed: UIColor
    let PositiveSecondary: UIColor
    let PositiveSecondaryHover: UIColor
    let PositiveSecondaryPressed: UIColor
    let Caution: UIColor
    let CautionHover: UIColor
    let CautionPressed: UIColor
    let CautionSecondary: UIColor
    let Avatar: UIColor
    let AvatarHover: UIColor
    let Calendar: UIColor
    let CalendarDisabled: UIColor
    let ModalOverlay: UIColor
}

struct BorderColors {
    let Secondary: UIColor
    let Tertiary: UIColor
    let Hover: UIColor
    let Input: UIColor
    let InputHover: UIColor
    let InputActive: UIColor
    let InputActiveHover: UIColor
    let InputActivePressed: UIColor
    let InputDisabled: UIColor
    let InputCritical: UIColor
    let InputCriticalHover: UIColor
    let InputCriticalPressed: UIColor
    let InputCaution: UIColor
    let InputCautionHover: UIColor
    let InputCautionPressed: UIColor
    let Focus: UIColor
    let Accent: UIColor
    let Primary: UIColor
    let Calendar: UIColor
}

struct StatusColors {
    let Available: UIColor
    let Away: UIColor
    let Busy: UIColor
    let Offline: UIColor
    let Icon: UIColor
    let Border: UIColor
}

struct DecorationColors {
    let Brand: UIColor
    let Facebook: UIColor
    let Instagram: UIColor
    let Teleport: UIColor
    let Twitter: UIColor
    let Whatsapp: UIColor
    let Youtube: UIColor
}

struct GeneralColors {
    let ConstantWhite: UIColor
    let ConstantBlack: UIColor
}

struct Palette {
    let GrayBackground: UIColor
    let GrayBackgroundHover: UIColor
    let GrayBackgroundActive: UIColor
    let GrayBorder: UIColor
    let GrayText: UIColor
    let GrayTextActive: UIColor
    let GrayTextSecondary: UIColor
}

struct ColorPalette {
    let text: TextColors
    let icon: IconColors
    let background: BackgroundColors
    let border: BorderColors
    let status: StatusColors
    let decoration: DecorationColors
    let general: GeneralColors
    let palette: Palette
}

class SetmoreColors {
    static let LightColor = ColorPalette(
        text: TextColors(
            Accent: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            AccentHover: UIColor(red: 0.439, green: 0.439, blue: 0.439, alpha: 1),
            AccentPressed: UIColor(red: 0.600, green: 0.600, blue: 0.600, alpha: 1),
            Primary: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Secondary: UIColor(red: 0.404, green: 0.404, blue: 0.404, alpha: 1),
            SecondaryHover: UIColor(red: 0.435, green: 0.435, blue: 0.443, alpha: 1),
            Tertiary: UIColor(red: 0.612, green: 0.612, blue: 0.612, alpha: 1),
            Disabled: UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 1),
            DisabledSecondary: UIColor(red: 0.404, green: 0.404, blue: 0.404, alpha: 1),
            Onprimary: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            OnprimaryDisabled: UIColor(red: 0.612, green: 0.612, blue: 0.612, alpha: 1),
            Positive: UIColor(red: 0.341, green: 0.647, blue: 0.478, alpha: 1),
            PositiveSecondary: UIColor(red: 0.051, green: 0.267, blue: 0.180, alpha: 1),
            Caution: UIColor(red: 0.886, green: 0.494, blue: 0.153, alpha: 1),
            CautionSecondary: UIColor(red: 0.322, green: 0.192, blue: 0.000, alpha: 1),
            Inverse: UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1),
            InverseSecondary: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            InverseCaution: UIColor(red: 1.000, green: 0.761, blue: 0.341, alpha: 1),
            InversePositive: UIColor(red: 0.514, green: 0.827, blue: 0.698, alpha: 1),
            InverseCritical: UIColor(red: 0.808, green: 0.420, blue: 0.392, alpha: 1),
            InverseAccent: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Link: UIColor(red: 0.114, green: 0.565, blue: 0.961, alpha: 1),
            LinkHover: UIColor(red: 0.035, green: 0.424, blue: 0.765, alpha: 1),
            LinkPressed: UIColor(red: 0.027, green: 0.318, blue: 0.573, alpha: 1),
            Critical: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            CriticalOnprimary: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            CriticalSecondary: UIColor(red: 0.278, green: 0.043, blue: 0.043, alpha: 1)
        ),
        icon: IconColors(
            Accent: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Critical: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            CriticalOnprimary: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            Onprimary: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Primary: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Secondary: UIColor(red: 0.404, green: 0.404, blue: 0.404, alpha: 1),
            Tertiary: UIColor(red: 0.612, green: 0.612, blue: 0.612, alpha: 1),
            Positive: UIColor(red: 0.098, green: 0.502, blue: 0.341, alpha: 1),
            PositiveHover: UIColor(red: 0.098, green: 0.502, blue: 0.341, alpha: 1),
            Caution: UIColor(red: 0.886, green: 0.494, blue: 0.153, alpha: 1),
            Inverse: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1)
        ),
        background: BackgroundColors(
            Canvas: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            CanvasSecondary: UIColor(red: 0.980, green: 0.980, blue: 0.980, alpha: 1),
            CanvasTertiary: UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1),
            Menu: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            Neutral: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            NeutralHover: UIColor(red: 0.945, green: 0.945, blue: 0.945, alpha: 1),
            NeutralPressed: UIColor(red: 0.851, green: 0.851, blue: 0.851, alpha: 1),
            NeutralActive: UIColor(red: 0.945, green: 0.945, blue: 0.945, alpha: 1),
            NeutralDisabled: UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1),
            NeutralSecondary: UIColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1),
            NeutralSecondaryHover: UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1),
            NeutralSecondaryPressed: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            NeutralTertiary: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            NeutralTertiaryHover: UIColor(red: 0.780, green: 0.780, blue: 0.780, alpha: 1),
            Inverse: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            InverseHover: UIColor(red: 0.302, green: 0.302, blue: 0.302, alpha: 1),
            InversePressed: UIColor(red: 0.439, green: 0.439, blue: 0.439, alpha: 1),
            InverseSecondary: UIColor(red: 0.196, green: 0.196, blue: 0.196, alpha: 1),
            InverseTertiary: UIColor(red: 0.404, green: 0.404, blue: 0.404, alpha: 1),
            InverseTertiaryHover: UIColor(red: 0.353, green: 0.353, blue: 0.353, alpha: 1),
            InverseTertiaryPressed: UIColor(red: 0.302, green: 0.302, blue: 0.302, alpha: 1),
            Critical: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            CriticalHover: UIColor(red: 0.690, green: 0.110, blue: 0.110, alpha: 1),
            CriticalPressed: UIColor(red: 0.518, green: 0.082, blue: 0.082, alpha: 1),
            CriticalSecondary: UIColor(red: 1.000, green: 0.925, blue: 0.898, alpha: 1),
            CriticalSecondaryHover: UIColor(red: 0.988, green: 0.929, blue: 0.929, alpha: 1),
            CriticalSecondaryPressed: UIColor(red: 0.973, green: 0.827, blue: 0.827, alpha: 1),
            Accent: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            AccentHover: UIColor(red: 0.439, green: 0.439, blue: 0.439, alpha: 1),
            AccentPressed: UIColor(red: 0.600, green: 0.600, blue: 0.600, alpha: 1),
            AccentSecondary: UIColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1),
            AccentSecondaryHover: UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1),
            AccentSecondaryPressed: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            AccentTertiary: UIColor(red: 0.957, green: 0.957, blue: 0.957, alpha: 1),
            AccentTertiaryHover: UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1),
            AccentTertiaryPressed: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            Positive: UIColor(red: 0.341, green: 0.647, blue: 0.478, alpha: 1),
            PositiveHover: UIColor(red: 0.098, green: 0.502, blue: 0.341, alpha: 1),
            PositivePressed: UIColor(red: 0.082, green: 0.420, blue: 0.282, alpha: 1),
            PositiveSecondary: UIColor(red: 0.831, green: 0.969, blue: 0.914, alpha: 1),
            PositiveSecondaryHover: UIColor(red: 0.733, green: 0.949, blue: 0.863, alpha: 1),
            PositiveSecondaryPressed: UIColor(red: 0.631, green: 0.925, blue: 0.808, alpha: 1),
            Caution: UIColor(red: 0.886, green: 0.494, blue: 0.153, alpha: 1),
            CautionHover: UIColor(red: 0.800, green: 0.486, blue: 0.000, alpha: 1),
            CautionPressed: UIColor(red: 0.600, green: 0.365, blue: 0.000, alpha: 1),
            CautionSecondary: UIColor(red: 0.992, green: 0.965, blue: 0.929, alpha: 1),
            Avatar: UIColor(red: 0.906, green: 0.906, blue: 0.906, alpha: 1),
            AvatarHover: UIColor(red: 0.867, green: 0.867, blue: 0.867, alpha: 1),
            Calendar: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            CalendarDisabled: UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1),
            ModalOverlay: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 0.6)
        ),
        border: BorderColors(
            Secondary: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            Tertiary: UIColor(red: 0.941, green: 0.941, blue: 0.941, alpha: 1),
            Hover: UIColor(red: 0.780, green: 0.780, blue: 0.780, alpha: 1),
            Input: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            InputHover: UIColor(red: 0.580, green: 0.580, blue: 0.580, alpha: 1),
            InputActive: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            InputActiveHover: UIColor(red: 0.259, green: 0.259, blue: 0.259, alpha: 1),
            InputActivePressed: UIColor(red: 0.329, green: 0.329, blue: 0.329, alpha: 1),
            InputDisabled: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            InputCritical: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            InputCriticalHover: UIColor(red: 0.690, green: 0.110, blue: 0.110, alpha: 1),
            InputCriticalPressed: UIColor(red: 0.518, green: 0.082, blue: 0.082, alpha: 1),
            InputCaution: UIColor(red: 0.886, green: 0.494, blue: 0.153, alpha: 1),
            InputCautionHover: UIColor(red: 0.796, green: 0.439, blue: 0.141, alpha: 1),
            InputCautionPressed: UIColor(red: 0.706, green: 0.392, blue: 0.122, alpha: 1),
            Focus: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Accent: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Primary: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Calendar: UIColor(red: 0.894, green: 0.894, blue: 0.894, alpha: 1)
        ),
        status: StatusColors(
            Available: UIColor(red: 0.341, green: 0.647, blue: 0.478, alpha: 1),
            Away: UIColor(red: 0.886, green: 0.494, blue: 0.153, alpha: 1),
            Busy: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            Offline: UIColor(red: 0.780, green: 0.780, blue: 0.780, alpha: 1),
            Icon: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            Border: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1)
        ),
        decoration: DecorationColors(
            Brand: UIColor(red: 0.114, green: 0.565, blue: 0.965, alpha: 1),
            Facebook: UIColor(red: 0.094, green: 0.467, blue: 0.949, alpha: 1),
            Instagram: UIColor(red: 0.894, green: 0.251, blue: 0.373, alpha: 1),
            Teleport: UIColor(red: 0.384, green: 0.522, blue: 1.000, alpha: 1),
            Twitter: UIColor(red: 0.114, green: 0.608, blue: 0.941, alpha: 1),
            Whatsapp: UIColor(red: 0.145, green: 0.827, blue: 0.400, alpha: 1),
            Youtube: UIColor(red: 1.000, green: 0.000, blue: 0.000, alpha: 1)
        ),
        general: GeneralColors(
            ConstantWhite: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            ConstantBlack: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1)
        ),
        palette: Palette(
            GrayBackground: UIColor(red: 0.965, green: 0.965, blue: 0.965, alpha: 1),
            GrayBackgroundHover: UIColor(red: 0.937, green: 0.937, blue: 0.937, alpha: 1),
            GrayBackgroundActive: UIColor(red: 0.753, green: 0.753, blue: 0.753, alpha: 1),
            GrayBorder: UIColor(red: 0.753, green: 0.753, blue: 0.753, alpha: 1),
            GrayText: UIColor(red: 0.125, green: 0.125, blue: 0.125, alpha: 1),
            GrayTextActive: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            GrayTextSecondary: UIColor(red: 0.251, green: 0.251, blue: 0.251, alpha: 1)
        )
    )

    static let DarkColor = ColorPalette(
        text: TextColors(
            Primary: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Secondary: UIColor(red: 0.580, green: 0.580, blue: 0.580, alpha: 1),
            SecondaryHover: UIColor(red: 0.639, green: 0.639, blue: 0.639, alpha: 1),
            Tertiary: UIColor(red: 0.451, green: 0.451, blue: 0.451, alpha: 1),
            Caution: UIColor(red: 1.000, green: 0.761, blue: 0.341, alpha: 1),
            CautionSecondary: UIColor(red: 0.894, green: 0.780, blue: 0.608, alpha: 1),
            Critical: UIColor(red: 0.808, green: 0.420, blue: 0.392, alpha: 1),
            CriticalOnprimary: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            CriticalSecondary: UIColor(red: 1.000, green: 0.522, blue: 0.522, alpha: 1),
            Disabled: UIColor(red: 0.451, green: 0.451, blue: 0.451, alpha: 1),
            DisabledSecondary: UIColor(red: 0.580, green: 0.580, blue: 0.580, alpha: 1),
            Inverse: UIColor(red: 0.118, green: 0.118, blue: 0.118, alpha: 1),
            InverseAccent: UIColor(red: 0.118, green: 0.118, blue: 0.118, alpha: 1),
            InverseCaution: UIColor(red: 0.906, green: 0.549, blue: 0.000, alpha: 1),
            InverseCritical: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            InversePositive: UIColor(red: 0.341, green: 0.647, blue: 0.478, alpha: 1),
            InverseSecondary: UIColor(red: 0.400, green: 0.400, blue: 0.400, alpha: 1),
            Accent: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            AccentHover: UIColor(red: 0.639, green: 0.639, blue: 0.639, alpha: 1),
            AccentPressed: UIColor(red: 0.451, green: 0.451, blue: 0.451, alpha: 1),
            Link: UIColor(red: 0.369, green: 0.690, blue: 0.973, alpha: 1),
            LinkHover: UIColor(red: 0.580, green: 0.792, blue: 0.980, alpha: 1),
            LinkPressed: UIColor(red: 0.655, green: 0.831, blue: 0.984, alpha: 1),
            Onprimary: UIColor(red: 0.118, green: 0.118, blue: 0.118, alpha: 1),
            OnprimaryDisabled: UIColor(red: 0.400, green: 0.400, blue: 0.400, alpha: 1),
            PositiveSecondary: UIColor(red: 0.345, green: 0.698, blue: 0.522, alpha: 1),
            Positive: UIColor(red: 0.514, green: 0.827, blue: 0.698, alpha: 1)
        ),
        icon: IconColors(
            Accent: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Critical: UIColor(red: 0.808, green: 0.420, blue: 0.392, alpha: 1),
            CriticalOnprimary: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            Onprimary: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1),
            Primary: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Secondary: UIColor(red: 0.549, green: 0.549, blue: 0.549, alpha: 1),
            Tertiary: UIColor(red: 0.451, green: 0.451, blue: 0.451, alpha: 1),
            Positive: UIColor(red: 0.514, green: 0.827, blue: 0.698, alpha: 1),
            PositiveHover: UIColor(red: 0.098, green: 0.502, blue: 0.341, alpha: 1),
            Caution: UIColor(red: 1.000, green: 0.761, blue: 0.341, alpha: 1),
            Inverse: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1)
        ),
        background: BackgroundColors(
            Canvas: UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1),
            CanvasSecondary: UIColor(red: 0.129, green: 0.129, blue: 0.129, alpha: 1),
            CanvasTertiary: UIColor(red: 0.161, green: 0.161, blue: 0.161, alpha: 1),
            Menu: UIColor(red: 0.118, green: 0.118, blue: 0.118, alpha: 1),
            Neutral: UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1),
            NeutralHover: UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1),
            NeutralPressed: UIColor(red: 0.400, green: 0.400, blue: 0.400, alpha: 1),
            NeutralActive: UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1),
            NeutralDisabled: UIColor(red: 0.180, green: 0.180, blue: 0.180, alpha: 1),
            NeutralSecondary: UIColor(red: 0.161, green: 0.161, blue: 0.161, alpha: 1),
            NeutralSecondaryHover: UIColor(red: 0.200, green: 0.200, blue: 0.200, alpha: 1),
            NeutralSecondaryPressed: UIColor(red: 0.239, green: 0.239, blue: 0.239, alpha: 1),
            NeutralTertiary: UIColor(red: 0.322, green: 0.322, blue: 0.322, alpha: 1),
            NeutralTertiaryHover: UIColor(red: 0.361, green: 0.361, blue: 0.361, alpha: 1),
            Inverse: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            InverseHover: UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1),
            InversePressed: UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 1),
            InverseSecondary: UIColor(red: 0.918, green: 0.918, blue: 0.918, alpha: 1),
            InverseTertiary: UIColor(red: 0.380, green: 0.380, blue: 0.380, alpha: 1),
            InverseTertiaryHover: UIColor(red: 0.345, green: 0.345, blue: 0.345, alpha: 1),
            InverseTertiaryPressed: UIColor(red: 0.302, green: 0.302, blue: 0.302, alpha: 1),
            Critical: UIColor(red: 0.769, green: 0.298, blue: 0.267, alpha: 1),
            CriticalHover: UIColor(red: 0.690, green: 0.110, blue: 0.110, alpha: 1),
            CriticalPressed: UIColor(red: 0.518, green: 0.082, blue: 0.082, alpha: 1),
            CriticalSecondary: UIColor(red: 0.259, green: 0.118, blue: 0.118, alpha: 1),
            CriticalSecondaryHover: UIColor(red: 0.306, green: 0.094, blue: 0.094, alpha: 1),
            CriticalSecondaryPressed: UIColor(red: 0.431, green: 0.129, blue: 0.129, alpha: 1),
            Accent: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            AccentHover: UIColor(red: 0.698, green: 0.698, blue: 0.698, alpha: 1),
            AccentPressed: UIColor(red: 0.502, green: 0.502, blue: 0.502, alpha: 1),
            AccentSecondary: UIColor(red: 0.161, green: 0.161, blue: 0.161, alpha: 1),
            AccentSecondaryHover: UIColor(red: 0.180, green: 0.180, blue: 0.180, alpha: 1),
            AccentSecondaryPressed: UIColor(red: 0.239, green: 0.239, blue: 0.239, alpha: 1),
            AccentTertiary: UIColor(red: 0.161, green: 0.161, blue: 0.161, alpha: 1),
            AccentTertiaryHover: UIColor(red: 0.180, green: 0.180, blue: 0.180, alpha: 1),
            AccentTertiaryPressed: UIColor(red: 0.239, green: 0.239, blue: 0.239, alpha: 1),
            Positive: UIColor(red: 0.341, green: 0.647, blue: 0.478, alpha: 1),
            PositiveHover: UIColor(red: 0.098, green: 0.502, blue: 0.341, alpha: 1),
            PositivePressed: UIColor(red: 0.082, green: 0.420, blue: 0.282, alpha: 1),
            PositiveSecondary: UIColor(red: 0.098, green: 0.220, blue: 0.180, alpha: 1),
            PositiveSecondaryHover: UIColor(red: 0.137, green: 0.302, blue: 0.251, alpha: 1),
            PositiveSecondaryPressed: UIColor(red: 0.180, green: 0.380, blue: 0.318, alpha: 1),
            Caution: UIColor(red: 0.886, green: 0.494, blue: 0.153, alpha: 1),
            CautionHover: UIColor(red: 0.800, green: 0.486, blue: 0.000, alpha: 1),
            CautionPressed: UIColor(red: 0.600, green: 0.365, blue: 0.000, alpha: 1),
            CautionSecondary: UIColor(red: 0.188, green: 0.157, blue: 0.129, alpha: 1),
            Avatar: UIColor(red: 0.161, green: 0.161, blue: 0.161, alpha: 1),
            AvatarHover: UIColor(red: 0.220, green: 0.220, blue: 0.220, alpha: 1),
            Calendar: UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1),
            CalendarDisabled: UIColor(red: 0.133, green: 0.133, blue: 0.133, alpha: 1),
            ModalOverlay: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 0.6)
        ),
        border: BorderColors(
            Secondary: UIColor(red: 0.239, green: 0.239, blue: 0.239, alpha: 1),
            Tertiary: UIColor(red: 0.165, green: 0.165, blue: 0.165, alpha: 1),
            Hover: UIColor(red: 0.361, green: 0.361, blue: 0.361, alpha: 1),
            Input: UIColor(red: 0.239, green: 0.239, blue: 0.239, alpha: 1),
            InputHover: UIColor(red: 0.361, green: 0.361, blue: 0.361, alpha: 1),
            InputActive: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            InputActiveHover: UIColor(red: 0.859, green: 0.859, blue: 0.859, alpha: 1),
            InputActivePressed: UIColor(red: 0.792, green: 0.792, blue: 0.792, alpha: 1),
            InputDisabled: UIColor(red: 0.239, green: 0.239, blue: 0.239, alpha: 1),
            InputCritical: UIColor(red: 0.808, green: 0.420, blue: 0.392, alpha: 1),
            InputCriticalHover: UIColor(red: 0.910, green: 0.290, blue: 0.290, alpha: 1),
            InputCriticalPressed: UIColor(red: 0.894, green: 0.184, blue: 0.184, alpha: 1),
            InputCaution: UIColor(red: 1.000, green: 0.761, blue: 0.341, alpha: 1),
            InputCautionHover: UIColor(red: 0.886, green: 0.675, blue: 0.302, alpha: 1),
            InputCautionPressed: UIColor(red: 0.886, green: 0.675, blue: 0.302, alpha: 1),
            Focus: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Accent: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Primary: UIColor(red: 0.933, green: 0.933, blue: 0.933, alpha: 1),
            Calendar: UIColor(red: 0.188, green: 0.188, blue: 0.188, alpha: 1)
        ),
        status: StatusColors(
            Available: UIColor(red: 0.514, green: 0.827, blue: 0.698, alpha: 1),
            Away: UIColor(red: 1.000, green: 0.761, blue: 0.341, alpha: 1),
            Busy: UIColor(red: 0.808, green: 0.420, blue: 0.392, alpha: 1),
            Offline: UIColor(red: 0.420, green: 0.420, blue: 0.420, alpha: 1),
            Icon: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            Border: UIColor(red: 0.102, green: 0.102, blue: 0.102, alpha: 1)
        ),
        decoration: DecorationColors(
            Brand: UIColor(red: 0.114, green: 0.565, blue: 0.965, alpha: 1),
            Facebook: UIColor(red: 0.094, green: 0.467, blue: 0.949, alpha: 1),
            Instagram: UIColor(red: 0.894, green: 0.251, blue: 0.373, alpha: 1),
            Teleport: UIColor(red: 0.384, green: 0.522, blue: 1.000, alpha: 1),
            Twitter: UIColor(red: 0.114, green: 0.608, blue: 0.941, alpha: 1),
            Whatsapp: UIColor(red: 0.145, green: 0.827, blue: 0.400, alpha: 1),
            Youtube: UIColor(red: 1.000, green: 0.000, blue: 0.000, alpha: 1)
        ),
        general: GeneralColors(
            ConstantWhite: UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1),
            ConstantBlack: UIColor(red: 0.067, green: 0.067, blue: 0.067, alpha: 1)
        )
    )
}
