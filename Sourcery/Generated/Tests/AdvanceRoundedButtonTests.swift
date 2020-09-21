// Generated using Sourcery 0.16.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import Foundation
import Quick
import Nimble
import RoundedUI

class AdvanceRoundedButtonSpec: QuickSpec {
    override func spec() {
        var object: AdvanceRoundedButton!
        describe("setting") {
            context("rounded", closure: {
                beforeEach {
                    object = AdvanceRoundedButton(frame: CGRect(x: 0, y: 0, width: 280, height: 44))
                }
                it("cornerRadius work") {
                    let cornerRadius: CGFloat = 10
                    object.cornerRadius = cornerRadius
                    expect(object.roundedLayer.shapeCornerRadius) == cornerRadius
                    expect(object.cornerRadius) == cornerRadius
                }
                it("roundTopLeft disable work") {
                    object.roundTopLeft = false
                    expect(object.roundedLayer.roundTopLeft) == false
                    expect(object.roundTopLeft) == false
                }
                it("roundTopRight disable work") {
                    object.roundTopRight = false
                    expect(object.roundedLayer.roundTopRight) == false
                    expect(object.roundTopRight) == false
                }
                it("roundBottomLeft disable work") {
                    object.roundBottomLeft = false
                    expect(object.roundedLayer.roundBottomLeft) == false
                    expect(object.roundBottomLeft) == false
                }
                it("roundBottomRight disable work") {
                    object.roundBottomRight = false
                    expect(object.roundedLayer.roundBottomRight) == false
                    expect(object.roundBottomRight) == false
                }
                it("default round corners work") {
                    expect(object.roundedLayer.roundTopLeft) == true
                    expect(object.roundedLayer.roundBottomLeft) == true
                    expect(object.roundedLayer.roundTopRight) == true
                    expect(object.roundedLayer.roundBottomRight) == true
                }
            })
            context("border", closure: {
                beforeEach {
                    object = AdvanceRoundedButton(frame: CGRect(x: 0, y: 0, width: 280, height: 44))
                }
                it("borderColor work") {
                    // Test borderColor nil
                    expect(object.borderColor).to(beNil())
                    object.borderColor = UIColor.green

                    // Test borderColor not nil
                    expect(object.roundedLayer.strokeLayer.strokeColor) == UIColor.green.cgColor
                    expect(object.borderColor) == UIColor.green
                }
                it("borderWidth work") {
                    let borderWidth: CGFloat = 5
                    object.borderWidth = borderWidth
                    // Setting the lineWidth draws a line, where the actual path is exactly in the middle of the drawn line.
                    // So we need to double the line width because half will be draw outside out of the frame
                    expect(object.roundedLayer.strokeLayer.lineWidth) == borderWidth * 2
                    expect(object.borderWidth) == borderWidth
                }
            })
            context("background", closure: {
                beforeEach {
                    object = AdvanceRoundedButton(frame: CGRect(x: 0, y: 0, width: 280, height: 44))
                }
                it("backgroundColor work") {
                    // Test backgroundColor nil
                    object.backgroundColor = nil
                    expect(object.backgroundColor).to(beNil())

                    // Test backgroundColor not nill
                    object.backgroundColor = UIColor.green
                    expect(object.roundedLayer.fillColor) == UIColor.green.cgColor
                    expect(object.backgroundColor) == UIColor.green
                }
            })
        }
        describe("appearance") {
            context("rounded", closure: {
                beforeEach {
                    object = AdvanceRoundedButton(frame: CGRect(x: 0, y: 0, width: 280, height: 44))
                }
                it("cornerRadius work") {
                    let cornerRadius: CGFloat = 10
                    AdvanceRoundedButton.appearance().cornerRadius = cornerRadius
                }
                it("roundTopLeft disable work") {
                    AdvanceRoundedButton.appearance().roundTopLeft = false
                }
                it("roundTopRight disable work") {
                    AdvanceRoundedButton.appearance().roundTopRight = false
                }
                it("roundBottomLeft disable work") {
                    AdvanceRoundedButton.appearance().roundBottomLeft = false
                }
                it("roundBottomRight disable work") {
                    AdvanceRoundedButton.appearance().roundBottomRight = false
                }
            })
            context("border", closure: {
                beforeEach {
                    object = AdvanceRoundedButton(frame: CGRect(x: 0, y: 0, width: 280, height: 44))
                }
                it("borderColor work") {
                    AdvanceRoundedButton.appearance().borderColor = UIColor.green
                }
                it("borderWidth work") {
                    let borderWidth: CGFloat = 5
                    AdvanceRoundedButton.appearance().borderWidth = borderWidth
                }
            })
            context("background", closure: {
                beforeEach {
                    object = AdvanceRoundedButton(frame: CGRect(x: 0, y: 0, width: 280, height: 44))
                }
                it("backgroundColor work") {
                    AdvanceRoundedButton.appearance().backgroundColor = UIColor.green
                }
            })
        }

    }
}
