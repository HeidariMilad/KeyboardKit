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
                    .offset(y: useNegativeOffset ? -2 : 0)
                if action?.isCharacterAction == true {
                    Text(smallCharacter)
                        .font(.system(size: smallCharacter == "☺︎" ? 18 : 9))
                        .offset(x: 6, y: -6)
                }
            }
            
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
            KeyboardButton.Title(text: "PasCal", action: .space)
            KeyboardButton.Title(text: "UPPER", action: .space)
            KeyboardButton.Title(text: "lower", action: .space)
            KeyboardButton.Title(text: "non-input", action: .backspace)
        }
    }
}
