//
//  View+Autocomplete.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2023-12-06.
//  Copyright © 2021-2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension Autocomplete {
    
    /**
     This view modifier can be applied to any view, to honor
     `.autocorrectionDisabled()` by disabling autocorrect in
     the provided context.
     */
    struct AutocorrectionDisabledToContextModifer: ViewModifier {
        
        /// Create a modifier instance for a certain context.
        public init(
            context: AutocompleteContext
        ) {
            self.context = context
        }
        
        private let context: AutocompleteContext
        
        @Environment(\.autocorrectionDisabled)
        private var autocorrectionDisabled
        
        public func body(content: Content) -> some View {
            content
                .onAppear {
                    guard autocorrectionDisabled else { return }
                    context.isAutocorrectEnabled = false
                }
        }
    }
}

public extension View {

    /**
     This view modifier can be applied to any view, to honor
     `.autocorrectionDisabled()` by disabling autocorrect in
     the provided context.
     */
    func autocorrectionDisabled(
        with context: AutocompleteContext
    ) -> some View {
        self.modifier(
            Autocomplete.AutocorrectionDisabledToContextModifer(
                context: context
            )
        )
    }
}
