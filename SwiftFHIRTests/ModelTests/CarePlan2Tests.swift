//
//  CarePlan2Tests.swift
//  CarePlan2Tests
//
//  Generated from FHIR 0.4.0.4332 on 2015-03-10.
//  2015, SMART Platforms.
//

import XCTest
import SwiftFHIR


class CarePlan2Tests: FHIRModelTestCase
{
	func instantiateFrom(# filename: String) -> CarePlan2 {
		return instantiateFrom(json: readJSONFile(filename)!)
	}
	
	func instantiateFrom(# json: JSONDictionary) -> CarePlan2 {
		let instance = CarePlan2(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testCarePlan21() {
		let instance = testCarePlan21_impl()
		testCarePlan21_impl(json: instance.asJSON())
	}
	
	func testCarePlan21_impl(json: JSONDictionary? = nil) -> CarePlan2 {
		let inst = (nil != json) ? instantiateFrom(json: json!) : instantiateFrom(filename: "careplan2-example.json")
		
		XCTAssertEqual(inst.activity![0].reference!, "ProcedureRequest/example")
		XCTAssertEqual(inst.concern![0].display!, "obesity")
		XCTAssertEqual(inst.concern![0].reference!, "#p1")
		XCTAssertEqual(inst.goal![0].display!, "Target weight is 80 kg.")
		XCTAssertEqual(inst.goal![0].reference!, "Goal/12345")
		XCTAssertEqual(inst.id!, "example")
		XCTAssertEqual(inst.participant![0].member!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.participant![0].member!.reference!, "Patient/example")
		XCTAssertEqual(inst.participant![0].role!.text!, "responsiblePerson")
		XCTAssertEqual(inst.participant![1].member!.display!, "Dorothy Dietitian")
		XCTAssertEqual(inst.participant![1].member!.reference!, "#pr1")
		XCTAssertEqual(inst.participant![1].role!.text!, "adviser")
		XCTAssertEqual(inst.patient!.display!, "Peter James Chalmers")
		XCTAssertEqual(inst.patient!.reference!, "Patient/example")
		XCTAssertEqual(inst.period!.end!.description, "2013-01-01")
		XCTAssertEqual(inst.status!, "active")
		XCTAssertEqual(inst.text!.status!, "additional")
		
		return inst
	}
}