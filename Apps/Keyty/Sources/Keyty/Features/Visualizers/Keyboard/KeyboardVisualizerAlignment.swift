//
//  KeyboardVisualizerAlignment.swift
//  Keyty
//
//  SPDX-FileCopyrightText: 2026 Serhii Bykov
//  SPDX-License-Identifier: BSD-3-Clause
//

/// Aligns groups on the cross axis of a `KeyboardVisualizerStackAxis`.
/// The same cases map to left/center/right or bottom/center/top depending on stack direction.
enum KeyboardVisualizerAlignment: Int, CaseIterable {
    /// Pinned to the cross-axis start (left for a vertical stack, bottom for a horizontal stack).
    case leading = 0
    /// Centered on the cross axis.
    case center = 1
    /// Pinned to the cross-axis end (right for a vertical stack, top for a horizontal stack).
    case trailing = 2

    static let horizontalOptions: [KeyboardVisualizerAlignment] = [.leading, .center, .trailing]
    static let verticalOptions: [KeyboardVisualizerAlignment] = [.trailing, .center, .leading]

    var horizontalPickerIcon: String {
        switch self {
        case .leading:
            "⇥"
        case .center:
            "◆"
        case .trailing:
            "⇤"
        }
    }

    var horizontalPickerLabel: String {
        switch self {
        case .leading:
            L10n.Displays.horizontalAlignmentLeftToRight
        case .center:
            L10n.Displays.horizontalAlignmentCenterOut
        case .trailing:
            L10n.Displays.horizontalAlignmentRightToLeft
        }
    }

    var verticalPickerIcon: String {
        switch self {
        case .leading:
            "↑"
        case .center:
            "◆"
        case .trailing:
            "↓"
        }
    }

    var verticalPickerLabel: String {
        switch self {
        case .leading:
            L10n.Displays.verticalAlignmentBottomUp
        case .center:
            L10n.Displays.verticalAlignmentMiddleOut
        case .trailing:
            L10n.Displays.verticalAlignmentTopDown
        }
    }

    var horizontalPickerTitle: String {
        "\(self.horizontalPickerIcon) \(self.horizontalPickerLabel)"
    }

    var verticalPickerTitle: String {
        "\(self.verticalPickerIcon) \(self.verticalPickerLabel)"
    }
}
