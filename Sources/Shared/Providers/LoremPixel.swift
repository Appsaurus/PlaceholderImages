//
//  LoremPixel.swift
//  Fakery
//
//  Created by Brian Strobach on 5/24/18.
//

import Foundation

public enum LoremPixelImageCategory: String {
	case abstract
	case animals
	case business
	case cats
	case city
	case food
	case nightlife
	case fashion
	case people
	case nature
	case sports
	case technics
	case transport
}

public class LoremPixelURLBuilder: ImageURLProvider{
	public var category: LoremPixelImageCategory?
	public var grayscale: Bool
	public var pictureNumber: Int?
	public var textOverlay: String?
	public init(category: LoremPixelImageCategory? = nil, grayscale: Bool = false, pictureNumber: Int? = nil, textOverlay: String? = nil){
		self.category = category
		self.grayscale = grayscale
		self.pictureNumber = pictureNumber
		self.textOverlay = textOverlay
	}

	public override func urlString(width: Int = 640, height: Int = 480) -> String {
		var url = "http://lorempixel.com/\(width)/\(height)"		
		if grayscale{
			url += "/g"
		}
		if let category = category{
			url += "/\(category)"
		}
		if let pictureNumber = pictureNumber{
			url += "/\(pictureNumber)"
		}
		if let textOverlay = textOverlay{
			url += "/\(textOverlay)"
		}
		return url
	}
}

extension ImageURLProvider{
	public static func loremPixel(category: LoremPixelImageCategory? = nil, grayscale: Bool = false, pictureNumber: Int? = nil, textOverlay: String? = nil) -> LoremPixelURLBuilder{
		return LoremPixelURLBuilder(category: category, grayscale: grayscale, pictureNumber: pictureNumber, textOverlay: textOverlay)
	}
}
