//
//  UITextViewExtensions.swift
//  SwifterSwift
//
//  Created by Omar Albeik on 9/28/16.
//  Copyright © 2016 SwifterSwift
//

#if canImport(UIKit)
import UIKit

#if !os(watchOS)
// MARK: - Methods
public extension UITextView {

	/// SwifterSwift: Clear text.
	public func clear() {
		text = ""
		attributedText = NSAttributedString(string: "")
	}

	/// SwifterSwift: Scroll to the bottom of text view
	public func scrollToBottom() {
        // swiftlint:disable legacy_constructor
		let range = NSMakeRange((text as NSString).length - 1, 1)
        // swiftlint:enable legacy_constructor
        scrollRangeToVisible(range)
	}

	/// SwifterSwift: Scroll to the top of text view
	public func scrollToTop() {
        // swiftlint:disable legacy_constructor
		let range = NSMakeRange(0, 1)
        // swiftlint:enable legacy_constructor
		scrollRangeToVisible(range)
	}

}
#endif

#endif
