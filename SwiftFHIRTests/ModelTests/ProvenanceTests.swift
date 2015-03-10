//
//  ProvenanceTests.swift
//  ProvenanceTests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class ProvenanceTests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> Provenance {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> Provenance {
		let instance = Provenance(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testProvenance1() {
		let instance = testProvenance1_impl()
		testProvenance1_impl(json: instance.asJSON())
	}
	
	func testProvenance1_impl(json: JSONDictionary? = nil) -> Provenance {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "provenance-example.json")
		
		XCTAssertEqual(inst.agent![0].display!, "Grahame Grieve")
		XCTAssertEqual(inst.agent![0].reference!.absoluteString!, "mailto:grahame@healthintersections.com.au")
		XCTAssertEqual(inst.agent![0].role!.code!, "author")
		XCTAssertEqual(inst.agent![0].role!.system!.absoluteString!, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent![0].type!.code!, "person")
		XCTAssertEqual(inst.agent![0].type!.system!.absoluteString!, "http://hl7.org/fhir/provenance-participant-type")
		XCTAssertEqual(inst.agent![1].display!, "ISO 21090")
		XCTAssertEqual(inst.agent![1].reference!.absoluteString!, "urn:iso:std:21090")
		XCTAssertEqual(inst.agent![1].role!.code!, "source")
		XCTAssertEqual(inst.agent![1].role!.system!.absoluteString!, "http://hl7.org/fhir/provenance-participant-role")
		XCTAssertEqual(inst.agent![1].type!.code!, "document")
		XCTAssertEqual(inst.agent![1].type!.system!.absoluteString!, "http://hl7.org/fhir/provenance-participant-type")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.location!.reference!, "Location/2")
		XCTAssertEqual(inst.period!.start!.description, "2011-06-23")
		XCTAssertEqual(inst.reason!.text!, "Editing the FHIR Specification")
		XCTAssertEqual(inst.recorded!.description, "2012-11-08T23:16:03+11:00")
		XCTAssertEqual(inst.target![0].reference!, "Patient/example/_history/1")
		XCTAssertEqual(inst.text!.div!, "<div>Authored on 8-Nov 2011 by Grahame Grieve. Content extracted from ISO-21090</div>")
		XCTAssertEqual(inst.text!.status!, "generated")
		
		return inst
	}
}