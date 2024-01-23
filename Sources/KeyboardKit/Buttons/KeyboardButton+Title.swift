//
//  KeyboardButton+Title.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2021-10-04.
//  Copyright © 2021-2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension KeyboardButton {
    
    /**
     This view renders keyboard button text content.
     
     The text is limited to one line, with a vertical offset
     for input actions with lowercased text.
     */
    struct Title: View {
        
        /**
         Create a system keyboard button text view.
         
         - Parameters:
           - text: The text to display.
           - action: The action bound to the button.
           - smallCharacter: The small character to display at the top right.
         */
        public init(
            text: String,
            action: KeyboardAction,
            smallCharacter: String = ""
        ) {
            self.text = text
            self.isInputAction = action.isInputAction
            self.smallCharacter = smallCharacter
            self.action = action
        }
        
        private let text: String
        private let isInputAction: Bool
        private let smallCharacter: String
        private let action: KeyboardAction?
        
        public var body: some View {
            
            ZStack(alignment: .topTrailing) {
                Text(text)
                    .lineLimit(1)
                    .offset(x: getTextOffset.x, y: getTextOffset.y)
                if action?.isCharacterAction == true || action?.isCustomAction == true {
                    Text(smallCharacter)
                        .font(.system(size: smallCharacter == "☺︎" ? 22 : 9))
                        .offset(x: getSmallCharOffset.x, y: getSmallCharOffset.y)
                }
            }
            
        }
    }
}
private extension KeyboardButton.Title {
    
    var defaultSmallCharOffset: CGPoint {
        return CGPoint(x: 6, y: -6)
    }
    var defaultTextOffset: CGPoint {
        return CGPoint(x: 0, y: useNegativeOffset ? -2 : 0)
    }
    
    var getTextOffset: CGPoint {
//        if action?.isCustomAction == true {
//            return CGPoint(x: 0, y: defaultTextOffset.y)
//        }
        switch text {
        default:
            return defaultTextOffset
        }
    }
    var getSmallCharOffset: CGPoint {
        if action?.isCustomAction == true {
            return CGPoint(x: defaultSmallCharOffset.x - 7, y: defaultSmallCharOffset.y)
        }
        switch smallCharacter {
        case "☺︎":
            return CGPoint(x: 4, y: defaultSmallCharOffset.y)
        case "?", "!":
            return CGPoint(x: 0, y: defaultSmallCharOffset.y)
        case "/":
            return CGPoint(x: 3, y: -7)
        case ":", ";", "'", "\"":
            return CGPoint(x: 3, y: defaultSmallCharOffset.y)
        case "1", "2":
            return CGPoint(x: 2, y: defaultSmallCharOffset.y)
        default:
            return defaultSmallCharOffset
        }
    }
}

private extension KeyboardButton.Title {
    
    var useNegativeOffset: Bool {
        isInputAction && text.isLowercasedWithUppercaseVariant
    }
}

struct KeyboardButton_Title_Previews: PreviewProvider {
    
    static var previews: some View {
        HStack {
            KeyboardButton.Title(text: ".", action: .character(""),smallCharacter: "☺︎")
            KeyboardButton.Title(text: ".", action: .custom(named: "d"),smallCharacter: "☺︎")
            KeyboardButton.Title(text: ".", action: .character(""),smallCharacter: "☺︎")
           
        }
    }
}
