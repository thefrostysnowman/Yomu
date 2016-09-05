//
//  Config.swift
//  Yomu
//
//  Created by Sendy Halim on 7/29/16.
//  Copyright © 2016 Sendy Halim. All rights reserved.
//

import AppKit
import Hue

private let bundle = NSBundle.mainBundle()
private let info = bundle.infoDictionary!

internal struct Style {
  let actionButtonColor = NSColor(hex: "#2674A8")
  let borderColor = NSColor(hex: "#F0F0F0")
  let buttonBackgroundColor = NSColor(hex: "#FFFFFF")
  let cornerRadius = CGFloat(7.0)
  let darkenBackgroundColor = NSColor(hex: "#F4F4F4")
  let inputBackgroundColor = NSColor(hex: "#FFFFFF")
  let noteColor = NSColor(hex: "#555555")
  let primaryBackgroundColor = NSColor(hex: "#FFFFFF")
  let selectedBackgroundColor = NSColor(hex: "22BDFC")
  let primaryFontColor = NSColor(hex: "#474747")
}

internal struct Icon {
  let plus = bundle.imageForResource("Plus")!
  let rightArrow = bundle.imageForResource("RightArrow")!
}

internal struct IconName {
  let ascending = "Ascending"
  let descending = "Descending"
}

public struct Config {
  static let YomuAPI: String = info["YomuAPI"] as! String
  static let style = Style()
  static let icon = Icon()
  static let iconName = IconName()

  static private var iconByName: [String: NSImage] = [:]

  static func iconWithName(name: String) -> NSImage {
    if let icon = iconByName[name] {
      return icon
    }

    let _icon = bundle.imageForResource(name)!
    iconByName[name] = _icon

    return _icon
  }
}
