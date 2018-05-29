import XCTest
import SwiftTestUtils
import PlaceholderImages

class SharedTests: BaseTestCase {


	//MARK: Linux Testing
	static var allTests = [
		("testLinuxTestSuiteIncludesAllTests", testLinuxTestSuiteIncludesAllTests),
		("testUnsplahURLProvider", testUnsplashURLProvider),
		("testLoremFlickrURLProvider", testLoremFlickrURLProvider),
		("testLoremPixelURLProvider", testLoremPixelURLProvider),
		("testPlaceImgURLProvider", testPlaceImgURLProvider),
		("testDummyImageURLProvider", testDummyImageURLProvider)
	]

	func testLinuxTestSuiteIncludesAllTests(){
		assertLinuxTestCoverage(tests: type(of: self).allTests)
	}

	var keywords: [String] = ["mountain", "river"]
	public func testUnsplashURLProvider() throws{
		try test(.imageURL(provider: .unsplash()))
		try test(.imageURL(provider: .unsplash(keywords: keywords)))
	}

	public func testLoremFlickrURLProvider() throws{
		try test(.imageURL(provider: .loremFlickr()))
		try test(.imageURL(provider: .loremFlickr(keywords: keywords)))
	}


	public func testLoremPixelURLProvider() throws{
		try test(.imageURL(provider: .loremPixel()))
		try test(.imageURL(provider: .loremPixel(category: .animals)))
	}

	public func testPlaceImgURLProvider() throws{
		try test(.imageURL(provider: .placeImg()))
		try test(.imageURL(provider: .placeImg(category: .animals)))
		try test(.imageURL(provider: .placeImg(category: .animals, effect: .sepia)))
	}

	public func testDummyImageURLProvider() throws{
		try test(.imageURL(provider: .dummy()))
	}

	func test(_ url: URL) throws {
		let imageData = try? Data(contentsOf: url)
		print(url.absoluteString)
		XCTAssertNotNil(imageData)
	}
	//
	//	public func test<#provider#>URLProvider() throws{
	//
	//	let url: URL = <#url#>
	//	XCTAssertEqual(<#hardcoded#>, url.absoluteString)
	//	let imageData = try? Data(contentsOf: url)
	//	XCTAssertNotNil(imageData)
	//	}
}
