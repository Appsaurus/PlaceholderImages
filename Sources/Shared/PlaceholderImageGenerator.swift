//
//  Image.swift
//  Fakery
//
//  Created by Brian Strobach on 5/24/18.
//

import Foundation

public final class PlaceholderImageGenerator {
	
	/// Returns an image url string from a free image provider api. Defaults to Unsplash.com.
	///
	/// - Parameters:
	///   - width: The width of the image to create.
	///   - height: The height of the image to create.
	///   - provider: The image provider to use to resolve the image url string.
	/// - Returns: An image url string
	public func urlString(width: Int = 640, height: Int = 480, provider: ImageURLProvider? = nil) -> String {
		let provider = provider ?? UnsplashURLBuilder()
		return provider.urlString(width: width, height: height)
	}

	/// Returns an image url from a free image provider api. Defaults to Unsplash.com.
	///
	/// - Parameters:
	///   - width: The width of the image to create.
	///   - height: The height of the image to create.
	///   - provider: The image provider to use to resolve the image url.
	/// - Returns: An image url
	public func url(width: Int = 640, height: Int = 480, provider: ImageURLProvider? = nil) -> URL {
		return urlString(width: width, height: height, provider: provider).toURL()
	}
}


extension String{
	public static func imageURLString(width: Int = 640, height: Int = 480, provider: ImageURLProvider? = nil) -> String{
		return PlaceholderImageGenerator().urlString(width: width, height: height, provider: provider)
	}
}

extension URL{
	public static func imageURL(width: Int = 640, height: Int = 480, provider: ImageURLProvider? = nil) -> URL{
		return URL(string: .imageURLString(width: width, height: height, provider: provider))!
	}
}


fileprivate extension String{
	fileprivate func toURL() -> URL{
		return URL(string: self)!
	}
}
