//
//  Tip.swift
//  TipKit_Practice
//
//  Created by Prajwal U on 01/02/24.
//

import Foundation
import TipKit

struct AddColorTip : Tip{
    var title: Text {Text("Add New Color")}
    var message: Text? {Text("Tap here to add new colour to the list")}
    var image: Image? {Image(systemName: "paintpalette")}
}
