//
//  GuidanceResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.6.0.9663 on 2016-08-12.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class GuidanceResponseTests: XCTestCase {
	
	func instantiateFrom(filename filename: String) throws -> GuidanceResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json json: FHIRJSON) -> GuidanceResponse {
		let instance = GuidanceResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testGuidanceResponse1() {
		do {
			let instance = try runGuidanceResponse1()
			try runGuidanceResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test GuidanceResponse successfully, but threw")
		}
	}
	
	func runGuidanceResponse1(json: FHIRJSON? = nil) throws -> GuidanceResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "guidanceresponse-example.json")
		
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.module!.reference, "DecisionSupportServiceModule/example")
		XCTAssertEqual(inst.status, "success")
		XCTAssertEqual(inst.text!.div, "<div xmlns=\"http://www.w3.org/1999/xhtml\">[Put rendering here]</div>")
		XCTAssertEqual(inst.text!.status, "generated")
		
		return inst
	}
}