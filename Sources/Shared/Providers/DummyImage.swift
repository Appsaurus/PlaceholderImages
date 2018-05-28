//
//  DummyImage.swift
//  PlaceholderImages
//
//  Created by Brian Strobach on 5/28/18.
//

import Foundation

public class DummyImageURLBuilder: ImageURLProvider{

	public var backgroundColorHex: String
	public var foregroundColorHex: String

	public init(backgroundColorHex: String = "000000", foregroundColorHex: String = "ffffff"){
		self.backgroundColorHex = backgroundColorHex
		self.foregroundColorHex = foregroundColorHex
	}

	public override func urlString(width: Int = 640, height: Int = 480) -> String {
		return "https://dummyimage.com/\(width)x\(height)/\(backgroundColorHex)/\(foregroundColorHex)"
	}
}


extension ImageURLProvider{
	public static func dummy(backgroundColorHex: String = "000000", foregroundColorHex: String = "ffffff") -> DummyImageURLBuilder{
		return DummyImageURLBuilder(backgroundColorHex: backgroundColorHex, foregroundColorHex: foregroundColorHex)
	}
}
