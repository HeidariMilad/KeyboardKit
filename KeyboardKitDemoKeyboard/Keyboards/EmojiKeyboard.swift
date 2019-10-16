//
//  EmojiKeyboard.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2018-03-13.
//  Copyright © 2018 Daniel Saidi. All rights reserved.
//

import KeyboardKit

/**
 
 This demo keyboard has 24 buttons per page, which fits this
 demo app's two different grid sizes for portrait/landscape.
 It features one page of real emoji characters and four with
 image buttons, which are handled by the demo action handler.
 
 If you make any changes to this keyboard (which you should,
 play with it) the keyboard may get an uneven set of buttons,
 which the grid engine handles by adding empty dummy buttons
 at the very end.
 
 */
struct EmojiKeyboard: DemoKeyboard {
    
    init(in viewController: KeyboardViewController) {
        self.bottomActions = EmojiKeyboard.bottomActions(
            leftmost: EmojiKeyboard.switchAction,
            for: viewController)
    }
    
    let actions: [KeyboardAction] = [
        .character("😀"),
        .character("😬"),
        .character("😁"),
        .character("😂"),
        .character("😃"),
        .character("😄"),
        .character("😅"),
        .character("😆"),
        .character("😇"),
        .character("😉"),
        .character("😊"),
        .character("🙂"),
        .character("🙃"),
        .character("☺"),
        .character("😋"),
        .character("😌"),
        .character("😍"),
        .character("😘"),
        .character("😗"),
        .character("😙"),
        .character("😚"),
        .character("😜"),
        .character("😝"),
        .character("😛"),
        .character("🤑"),
        .character("🤓"),
        .character("😎"),
        .character("🤗"),
        .character("😏"),
        .character("😶"),
        .character("😐"),
        .character("😑"),
        .character("😒"),
        .character("🙄"),
        .character("🤔"),
        .character("😳"),
        .character("😞"),
        .character("😟"),
        .character("😠"),
        .character("😡"),
        .character("😔"),
        .character("😕"),
        .character("🙁"),
        .character("😣"),
        .character("😖"),
        .character("😫"),
        .character("😩"),
        .character("😤"),
        .character("😮"),
        .character("😱"),
        .character("😨"),
        .character("😰"),
        .character("😯"),
        .character("😦"),
        .character("😧"),
        .character("😢"),
        .character("😥"),
        .character("😪"),
        .character("😓"),
        .character("😭"),
        .character("😵"),
        .character("😲"),
        .character("🤐"),
        .character("😷"),
        .character("🤒"),
        .character("🤕"),
        .character("😴"),
        .character("💤"),
        .character("💩"),
        .character("😈"),
        .character("👿"),
        .character("👹"),
        .character("👺"),
        .character("👻"),
        .character("💀"),
        .character("☠"),
        .character("👽"),
        .character("👾"),
        .character("🤖"),
        .character("😺"),
        .character("😸"),
        .character("😹"),
        .character("😻"),
        .character("😼"),
        .character("😽"),
        .character("🙀"),
        .character("😿"),
        .character("😾"),
        .character("🙌"),
        .character("👏"),
        .character("👍"),
        .character("👎"),
        .character("👊"),
        .character("✊"),
        .character("👋"),
        .character("👈"),
        .character("👉"),
        .character("👆"),
        .character("👇"),
        .character("👌"),
        .character("☝"),
        .character("✌"),
        .character("✋"),
        .character("🖐"),
        .character("👐"),
        .character("💪"),
        .character("🙏"),
        .character("🖖"),
        .character("🤘"),
        .character("🖕"),
        .character("✍"),
        .character("💅"),
        .character("👄"),
        .character("👅"),
        .character("👂"),
        .character("👃"),
        .character("👁"),
        .character("👀"),
        .character("🗣"),
        .character("👤"),
        .character("👥"),
        .character("👶"),
        .character("👦"),
        .character("👧"),
        .character("👨"),
        .character("👩"),
        .character("👱"),
        .character("👴"),
        .character("👵"),
        .character("👲"),
        .character("👳"),
        .character("👮"),
        .character("👷"),
        .character("💂"),
        .character("🎅"),
        .character("👸"),
        .character("👰"),
        .character("👼"),
        .character("🙇"),
        .character("💁"),
        .character("🙅"),
        .character("🙆"),
        .character("🙋"),
        .character("🙎"),
        .character("🙍"),
        .character("💇"),
        .character("💆"),
        .character("💃"),
        .character("👯"),
        .character("🚶"),
        .character("🏃"),
        .character("👫"),
        .character("👭"),
        .character("👬"),
        .character("💑"),
        .character("👩"),
        .character("👨"),
        .character("💏"),
        .character("👩"),
        .character("👨"),
        .character("👪"),
        .character("👨"),
        .character("👨"),
        .character("👨"),
        .character("👨"),
        .character("👩"),
        .character("👩"),
        .character("👩"),
        .character("👩"),
        .character("👩"),
        .character("👨"),
        .character("👨"),
        .character("👨"),
        .character("👨"),
        .character("👨"),
        .character("👚"),
        .character("👕"),
        .character("👖"),
        .character("👔"),
        .character("👗"),
        .character("👙"),
        .character("👘"),
        .character("💄"),
        .character("💋"),
        .character("👣"),
        .character("👠"),
        .character("👡"),
        .character("👢"),
        .character("👞"),
        .character("👟"),
        .character("👒"),
        .character("🎩"),
        .character("🎓"),
        .character("👑"),
        .character("⛑"),
        .character("🎒"),
        .character("👝"),
        .character("👛"),
        .character("👜"),
        .character("💼"),
        .character("👓"),
        .character("🕶"),
        .character("💍"),
        .character("🌂"),
        .character("🐶"),
        .character("🐱"),
        .character("🐭"),
        .character("🐹"),
        .character("🐰"),
        .character("🐻"),
        .character("🐼"),
        .character("🐨"),
        .character("🐯"),
        .character("🦁"),
        .character("🐮"),
        .character("🐷"),
        .character("🐽"),
        .character("🐸"),
        .character("🐙"),
        .character("🐵"),
        .character("🙈"),
        .character("🙉"),
        .character("🙊"),
        .character("🐒"),
        .character("🐔"),
        .character("🐧"),
        .character("🐦"),
        .character("🐤"),
        .character("🐣"),
        .character("🐥"),
        .character("🐺"),
        .character("🐗"),
        .character("🐴"),
        .character("🦄"),
        .character("🐝"),
        .character("🐛"),
        .character("🐌"),
        .character("🐞"),
        .character("🐜"),
        .character("🕷"),
        .character("🦂"),
        .character("🦀"),
        .character("🐍"),
        .character("🐢"),
        .character("🐠"),
        .character("🐟"),
        .character("🐡"),
        .character("🐬"),
        .character("🐳"),
        .character("🐋"),
        .character("🐊"),
        .character("🐆"),
        .character("🐅"),
        .character("🐃"),
        .character("🐂"),
        .character("🐄"),
        .character("🐪"),
        .character("🐫"),
        .character("🐘"),
        .character("🐐"),
        .character("🐏"),
        .character("🐑"),
        .character("🐎"),
        .character("🐖"),
        .character("🐀"),
        .character("🐁"),
        .character("🐓"),
        .character("🦃"),
        .character("🕊"),
        .character("🐕"),
        .character("🐩"),
        .character("🐈"),
        .character("🐇"),
        .character("🐿"),
        .character("🐾"),
        .character("🐉"),
        .character("🐲"),
        .character("🌵"),
        .character("🎄"),
        .character("🌲"),
        .character("🌳"),
        .character("🌴"),
        .character("🌱"),
        .character("🌿"),
        .character("☘"),
        .character("🍀"),
        .character("🎍"),
        .character("🎋"),
        .character("🍃"),
        .character("🍂"),
        .character("🍁"),
        .character("🌾"),
        .character("🌺"),
        .character("🌻"),
        .character("🌹"),
        .character("🌷"),
        .character("🌼"),
        .character("🌸"),
        .character("💐"),
        .character("🍄"),
        .character("🌰"),
        .character("🎃"),
        .character("🐚"),
        .character("🕸"),
        .character("🌎"),
        .character("🌍"),
        .character("🌏"),
        .character("🌕"),
        .character("🌖"),
        .character("🌗"),
        .character("🌘"),
        .character("🌑"),
        .character("🌒"),
        .character("🌓"),
        .character("🌔"),
        .character("🌚"),
        .character("🌝"),
        .character("🌛"),
        .character("🌜"),
        .character("🌞"),
        .character("🌙"),
        .character("⭐"),
        .character("🌟"),
        .character("💫"),
        .character("✨"),
        .character("☄"),
        .character("☀"),
        .character("🌤"),
        .character("⛅"),
        .character("🌥"),
        .character("🌦"),
        .character("☁"),
        .character("🌧"),
        .character("⛈"),
        .character("🌩"),
        .character("⚡"),
        .character("🔥"),
        .character("💥"),
        .character("❄"),
        .character("🌨"),
        .character("☃"),
        .character("⛄"),
        .character("🌬"),
        .character("💨"),
        .character("🌪"),
        .character("🌫"),
        .character("☂"),
        .character("☔"),
        .character("💧"),
        .character("💦"),
        .character("🌊"),
        .character("🍏"),
        .character("🍎"),
        .character("🍐"),
        .character("🍊"),
        .character("🍋"),
        .character("🍌"),
        .character("🍉"),
        .character("🍇"),
        .character("🍓")
    ]
    
    let bottomActions: KeyboardActionRow
}

private extension EmojiKeyboard {
    
    static var switchAction: KeyboardAction {
        return .switchToKeyboard(.alphabetic(uppercased: false))
    }
}
