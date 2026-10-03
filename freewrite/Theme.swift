import SwiftUI
import AppKit

/// KAIZEN design system tokens: black/white (Black + Paper themes) with one hit of brand yellow.
enum Kaizen {
    static let yellow = Color(red: 0xF7 / 255, green: 0xC4 / 255, blue: 0x28 / 255)
    static let paper = Color(red: 0xFA / 255, green: 0xF9 / 255, blue: 0xF6 / 255)
    static let paper2 = Color(red: 0xF2 / 255, green: 0xF1 / 255, blue: 0xEC / 255)
    static let blackSoft = Color(red: 0x12 / 255, green: 0x12 / 255, blue: 0x12 / 255)

    static func ground(_ scheme: ColorScheme) -> Color { scheme == .light ? paper : .black }
    static func surface(_ scheme: ColorScheme) -> Color { scheme == .light ? paper2 : blackSoft }
    static func ink(_ scheme: ColorScheme) -> Color { scheme == .light ? .black : .white }
    static func inkMuted(_ scheme: ColorScheme) -> Color {
        scheme == .light ? Color(red: 0x4C / 255, green: 0x4C / 255, blue: 0x4A / 255)
                         : Color(red: 0x8F / 255, green: 0x8F / 255, blue: 0x8F / 255)
    }
    static func rule(_ scheme: ColorScheme) -> Color {
        scheme == .light ? Color(red: 0xE1 / 255, green: 0xE0 / 255, blue: 0xDA / 255)
                         : Color(red: 0.2, green: 0.2, blue: 0.2)
    }

    /// Editorial/label face: JetBrains Mono when installed, else the system monospace.
    static func mono(_ size: CGFloat, weight: Font.Weight = .medium) -> Font {
        NSFont(name: "JetBrainsMono-Medium", size: size) != nil
            ? .custom("JetBrainsMono-Medium", size: size)
            : .system(size: size, weight: weight, design: .monospaced)
    }
}
