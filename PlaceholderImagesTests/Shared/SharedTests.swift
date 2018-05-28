import XCTest
import SwiftTestUtils
import PlaceholderImages

class SharedTests: BaseTestCase {


	//MARK: Linux Testing
	static var allTests = [
		("testLinuxTestSuiteIncludesAllTests", testLinuxTestSuiteIncludesAllTests),
		("testUnsplahURLProvider", testUnsplahURLProvider),
		("testLoremFlickrURLProvider", testLoremFlickrURLProvider)
	]

	func testLinuxTestSuiteIncludesAllTests(){
		assertLinuxTestCoverage(tests: type(of: self).allTests)
	}

	public func testUnsplahURLProvider() throws{
		let url: URL = .imageURL(provider: .unsplash(keywords: ["mountain", "river"]))
		XCTAssertNotNil(try? Data(contentsOf: url))
	}

	public func testLoremFlickrURLProvider() throws{

//	let url: URL = <#url#>
//	XCTAssertEqual(<#hardcoded#>, url.absoluteString)
//	let imageData = try? Data(contentsOf: url)
//	XCTAssertNotNil(imageData)
	}


//	public func test<#provider#>URLProvider() throws{
//
//	let url: URL = <#url#>
//	XCTAssertEqual(<#hardcoded#>, url.absoluteString)
//	let imageData = try? Data(contentsOf: url)
//	XCTAssertNotNil(imageData)
//	}
//
//	public func test<#provider#>URLProvider() throws{
//
//	let url: URL = <#url#>
//	XCTAssertEqual(<#hardcoded#>, url.absoluteString)
//	let imageData = try? Data(contentsOf: url)
//	XCTAssertNotNil(imageData)
//	}
}
