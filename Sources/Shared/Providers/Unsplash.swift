//
//  LoremPixel.swift
//  Fakery
//
//  Created by Brian Strobach on 5/24/18.
//

import Foundation

//Example: https://source.unsplash.com/1600x900/?nature,water
public class UnsplashURLBuilder: ImageURLProvider{

	public var keywords: [String]?

	public init(keywords: [String]? = nil){
		self.keywords = keywords
	}

	public override func urlString(width: Int = 640, height: Int = 480) -> String {
		var url = "https://source.unsplash.com/\(width)x\(height)/"

		if let keywords = keywords{
			url += "?"
			for keyword in keywords{
				url += keyword + ","
			}
			if url.last == ","{
				url.removeLast()
			}
		}
		return url
	}
}


extension ImageURLProvider{
	public static func unsplash(keywords: [String]? = nil) -> UnsplashURLBuilder{
		return UnsplashURLBuilder(keywords: keywords)
	}
}
