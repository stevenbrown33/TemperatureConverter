//
//  ConverterViewController.swift
//  TemperatureConverter
//
//  Created by Steven Brown on 3/13/18.
//  Copyright © 2018 Steven Brown. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtons()
        setupButtonConstraints()
    }
    
    // MARK: Format Buttons
    func setupButtons() {
        // set background colors
        oneButton.backgroundColor = .primaryGreen
        twoButton.backgroundColor = .primaryGreen
        threeButton.backgroundColor = .primaryGreen
        fourButton.backgroundColor = .primaryGreen
        fiveButton.backgroundColor = .primaryGreen
        sixButton.backgroundColor = .primaryGreen
        sevenButton.backgroundColor = .primaryGreen
        eightButton.backgroundColor = .primaryGreen
        nineButton.backgroundColor = .primaryGreen
        decimalButton.backgroundColor = .primaryGreen
        zeroButton.backgroundColor = .primaryGreen
        backspaceButton.backgroundColor = .primaryGreen
        clearButton.backgroundColor = .primaryGreen
        view.backgroundColor = .primaryGreen
        
        // set text colors
        oneButton.titleLabel?.textColor = .white
        twoButton.titleLabel?.textColor = .white
        threeButton.titleLabel?.textColor = .white
        fourButton.titleLabel?.textColor = .white
        fiveButton.titleLabel?.textColor = .white
        sixButton.titleLabel?.textColor = .white
        sevenButton.titleLabel?.textColor = .white
        eightButton.titleLabel?.textColor = .white
        nineButton.titleLabel?.textColor = .white
        decimalButton.titleLabel?.textColor = .white
        zeroButton.titleLabel?.textColor = .white
        backspaceButton.titleLabel?.textColor = .white
        clearButton.titleLabel?.textColor = .white
        inputLabel.textColor = .white
        outputLabel.textColor = .white
        equalLabel.textColor = .white
        
        // set text labels
        oneButton.setTitle("1", for: .normal)
        twoButton.setTitle("2", for: .normal)
        threeButton.setTitle("3", for: .normal)
        fourButton.setTitle("4", for: .normal)
        fiveButton.setTitle("5", for: .normal)
        sixButton.setTitle("6", for: .normal)
        sevenButton.setTitle("7", for: .normal)
        eightButton.setTitle("8", for: .normal)
        nineButton.setTitle("9", for: .normal)
        decimalButton.setTitle(".", for: .normal)
        zeroButton.setTitle("0", for: .normal)
        backspaceButton.setTitle("<", for: .normal)
        clearButton.setTitle("Clear", for: .normal)
        inputLabel.text = "?"
        equalLabel.text = "="
        outputLabel.text = "?"
        inputLabel.textAlignment = .center
        equalLabel.textAlignment = .center
        outputLabel.textAlignment = .center
//        temperatureSegmentedControl.setTitle("℉▻℃", forSegmentAt: 0)
//        temperatureSegmentedControl.setTitle("℃▻℉", forSegmentAt: 1)
        
        // set text font & size
        oneButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        twoButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        threeButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        fourButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        fiveButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        sixButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        sevenButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        eightButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        nineButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        decimalButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        zeroButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        backspaceButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        clearButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        inputLabel.font = UIFont(name: "Futura", size: 70)
        outputLabel.font = UIFont(name: "Futura", size: 70)
        equalLabel.font = UIFont(name: "Futura", size: 50)
        
        // add the buttons as subviews of the VCs view
        view.addSubview(oneButton)
        view.addSubview(twoButton)
        view.addSubview(threeButton)
        view.addSubview(fourButton)
        view.addSubview(fiveButton)
        view.addSubview(sixButton)
        view.addSubview(sevenButton)
        view.addSubview(eightButton)
        view.addSubview(nineButton)
        view.addSubview(decimalButton)
        view.addSubview(zeroButton)
        view.addSubview(backspaceButton)
        view.addSubview(clearButton)
        view.addSubview(inputLabel)
        view.addSubview(outputLabel)
        view.addSubview(equalLabel)
    }
    
    //MARK: Constrain Buttons
    func setupButtonConstraints() {
        oneButton.translatesAutoresizingMaskIntoConstraints = false
        twoButton.translatesAutoresizingMaskIntoConstraints = false
        threeButton.translatesAutoresizingMaskIntoConstraints = false
        fourButton.translatesAutoresizingMaskIntoConstraints = false
        fiveButton.translatesAutoresizingMaskIntoConstraints = false
        sixButton.translatesAutoresizingMaskIntoConstraints = false
        sevenButton.translatesAutoresizingMaskIntoConstraints = false
        eightButton.translatesAutoresizingMaskIntoConstraints = false
        nineButton.translatesAutoresizingMaskIntoConstraints = false
        decimalButton.translatesAutoresizingMaskIntoConstraints = false
        zeroButton.translatesAutoresizingMaskIntoConstraints = false
        backspaceButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        inputLabel.translatesAutoresizingMaskIntoConstraints = false
        outputLabel.translatesAutoresizingMaskIntoConstraints = false
        equalLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Width constraints
        let inputEqualWidths = NSLayoutConstraint(item: inputLabel, attribute: .width, relatedBy: .equal, toItem: equalLabel, attribute: .width, multiplier: 1, constant: 0)
        let equalOutputWidths = NSLayoutConstraint(item: equalLabel, attribute: .width, relatedBy: .equal, toItem: outputLabel, attribute: .width, multiplier: 1, constant: 0)
        let oneTwoWidths = NSLayoutConstraint(item: oneButton, attribute: .width, relatedBy: .equal, toItem: twoButton, attribute: .width, multiplier: 1, constant: 0)
        let twoThreeWidths = NSLayoutConstraint(item: twoButton, attribute: .width, relatedBy: .equal, toItem: threeButton, attribute: .width, multiplier: 1, constant: 0)
        let fourFiveWidths = NSLayoutConstraint(item: fourButton, attribute: .width, relatedBy: .equal, toItem: fiveButton, attribute: .width, multiplier: 1, constant: 0)
        let fiveSixWidths = NSLayoutConstraint(item: fiveButton, attribute: .width, relatedBy: .equal, toItem: sixButton, attribute: .width, multiplier: 1, constant: 0)
        let sevenEightWidths = NSLayoutConstraint(item: sevenButton, attribute: .width, relatedBy: .equal, toItem: eightButton, attribute: .width, multiplier: 1, constant: 0)
        let eightNineWidths = NSLayoutConstraint(item: eightButton, attribute: .width, relatedBy: .equal, toItem: nineButton, attribute: .width, multiplier: 1, constant: 0)
        let decimalZeroWidths = NSLayoutConstraint(item: decimalButton, attribute: .width, relatedBy: .equal, toItem: zeroButton, attribute: .width, multiplier: 1, constant: 0)
        let zeroBackspaceWidths = NSLayoutConstraint(item: zeroButton, attribute: .width, relatedBy: .equal, toItem: backspaceButton, attribute: .width, multiplier: 1, constant: 0)
        let clearButtonWidths = NSLayoutConstraint(item: clearButton, attribute: .width, relatedBy: .equal, toItem: clearButton, attribute: .width, multiplier: 1, constant: 0)
        
        view.addConstraints([inputEqualWidths, equalOutputWidths, oneTwoWidths, twoThreeWidths, fourFiveWidths, fiveSixWidths, sevenEightWidths, eightNineWidths, decimalZeroWidths, zeroBackspaceWidths, clearButtonWidths])
        
        // Height constraints
        let inputOutputHeights = NSLayoutConstraint(item: inputLabel, attribute: .height, relatedBy: .equal, toItem: outputLabel, attribute: .height, multiplier: 1, constant: 0)
        let equalLabelHeights = NSLayoutConstraint(item: equalLabel, attribute: .height, relatedBy: .equal, toItem: clearButton, attribute: .height, multiplier: 1, constant: 0)
        let oneFourHeights = NSLayoutConstraint(item: oneButton, attribute: .height, relatedBy: .equal, toItem: fourButton, attribute: .height, multiplier: 1, constant: 0)
        let fourSevenHeights = NSLayoutConstraint(item: fourButton, attribute: .height, relatedBy: .equal, toItem: sevenButton, attribute: .height, multiplier: 1, constant: 0)
        let sevenDecimalHeights = NSLayoutConstraint(item: sevenButton, attribute: .height, relatedBy: .equal, toItem: decimalButton, attribute: .height, multiplier: 1, constant: 0)
        let twoFiveHeights = NSLayoutConstraint(item: twoButton, attribute: .height, relatedBy: .equal, toItem: fiveButton, attribute: .height, multiplier: 1, constant: 0)
        let fiveEightHeights = NSLayoutConstraint(item: fiveButton, attribute: .height, relatedBy: .equal, toItem: eightButton, attribute: .height, multiplier: 1, constant: 0)
        let eightZeroHeights = NSLayoutConstraint(item: eightButton, attribute: .height, relatedBy: .equal, toItem: zeroButton, attribute: .height, multiplier: 1, constant: 0)
        let threeSixHeights = NSLayoutConstraint(item: threeButton, attribute: .height, relatedBy: .equal, toItem: sixButton, attribute: .height, multiplier: 1, constant: 0)
        let sixNineHeights = NSLayoutConstraint(item: sixButton, attribute: .height, relatedBy: .equal, toItem: nineButton, attribute: .height, multiplier: 1, constant: 0)
        let nineBackspaceHeights = NSLayoutConstraint(item: nineButton, attribute: .height, relatedBy: .equal, toItem: backspaceButton, attribute: .height, multiplier: 1, constant: 0)
        let clearButtonHeights = NSLayoutConstraint(item: clearButton, attribute: .height, relatedBy: .equal, toItem: zeroButton, attribute: .height, multiplier: 1, constant: 0)
        
        view.addConstraints([inputOutputHeights, equalLabelHeights, oneFourHeights, fourSevenHeights, sevenDecimalHeights, twoFiveHeights, fiveEightHeights, eightZeroHeights, threeSixHeights, sixNineHeights, nineBackspaceHeights, clearButtonHeights])
        
        // Input Label constraints
        let inputLabelLeading =  NSLayoutConstraint(item: inputLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let inputLabelTrailing = NSLayoutConstraint(item: inputLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let inputLabelTop = NSLayoutConstraint(item: inputLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 70)
        let inputLabelBottom = NSLayoutConstraint(item: inputLabel, attribute: .bottom, relatedBy: .equal, toItem: equalLabel, attribute: .top, multiplier: 1, constant: 5)
        
        view.addConstraints([inputLabelLeading, inputLabelTrailing, inputLabelTop, inputLabelBottom])
        
        // Equal Label constraints
        let equalLabelLeading =  NSLayoutConstraint(item: equalLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let equalLabelTrailing = NSLayoutConstraint(item: equalLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        
        view.addConstraints([equalLabelLeading, equalLabelTrailing])
        
        // Output Label constraints
        let outputLabelLeading = NSLayoutConstraint(item: outputLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let outputLabelTrailing = NSLayoutConstraint(item: outputLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let outputLabelTop = NSLayoutConstraint(item: outputLabel, attribute: .top, relatedBy: .equal, toItem: equalLabel, attribute: .bottom, multiplier: 1, constant: 5)
        
        view.addConstraints([outputLabelLeading, outputLabelTrailing, outputLabelTop])
        
        // One constraints
        let oneLeading = NSLayoutConstraint(item: oneButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 60)
        let oneTrailing = NSLayoutConstraint(item: oneButton, attribute: .trailing, relatedBy: .equal, toItem: twoButton, attribute: .leading, multiplier: 1, constant: 0)
        let oneTop = NSLayoutConstraint(item: oneButton, attribute: .top, relatedBy: .equal, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 100)
        let oneBottom = NSLayoutConstraint(item: oneButton, attribute: .bottom, relatedBy: .equal, toItem: fourButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([oneLeading, oneTrailing, oneTop, oneBottom])
        
        // Two constraints
        let twoTrailing = NSLayoutConstraint(item: twoButton, attribute: .trailing, relatedBy: .equal, toItem: threeButton, attribute: .leading, multiplier: 1, constant: 0)
        let twoTop = NSLayoutConstraint(item: twoButton, attribute: .top, relatedBy: .equal, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 100)
        let twoBottom = NSLayoutConstraint(item: twoButton, attribute: .bottom, relatedBy: .equal, toItem: fiveButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([twoTrailing, twoTop, twoBottom])
        
        // Three constraints
        let threeTrailing = NSLayoutConstraint(item: threeButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -60)
        let threeTop = NSLayoutConstraint(item: threeButton, attribute: .top, relatedBy: .equal, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 100)
        let threeBottom = NSLayoutConstraint(item: threeButton, attribute: .bottom, relatedBy: .equal, toItem: sixButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([threeTrailing, threeTop, threeBottom])
        
        // Four constraints
        let fourLeading = NSLayoutConstraint(item: fourButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 60)
        let fourTrailing = NSLayoutConstraint(item: fourButton, attribute: .trailing, relatedBy: .equal, toItem: fiveButton, attribute: .leading, multiplier: 1, constant: 0)
        let fourBottom = NSLayoutConstraint(item: fourButton, attribute: .bottom, relatedBy: .equal, toItem: sevenButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([fourLeading, fourTrailing, fourBottom])
        
        // Five constraints
        let fiveTrailing = NSLayoutConstraint(item: fiveButton, attribute: .trailing, relatedBy: .equal, toItem: sixButton, attribute: .leading, multiplier: 1, constant: 0)
        let fiveBottom = NSLayoutConstraint(item: fiveButton, attribute: .bottom, relatedBy: .equal, toItem: eightButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([fiveTrailing, fiveBottom])
        
        // Six constraints
        let sixTrailing = NSLayoutConstraint(item: sixButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -60)
        let sixBottom = NSLayoutConstraint(item: sixButton, attribute: .bottom, relatedBy: .equal, toItem: nineButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([sixTrailing, sixBottom])
        
        // Seven constraints
        let sevenLeading = NSLayoutConstraint(item: sevenButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 60)
        let sevenTrailing = NSLayoutConstraint(item: sevenButton, attribute: .trailing, relatedBy: .equal, toItem: eightButton, attribute: .leading, multiplier: 1, constant: 0)
        let sevenBottom = NSLayoutConstraint(item: sevenButton, attribute: .bottom, relatedBy: .equal, toItem: decimalButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([sevenLeading, sevenTrailing, sevenBottom])
        
        // Eight constraints
        let eightTrailing = NSLayoutConstraint(item: eightButton, attribute: .trailing, relatedBy: .equal, toItem: nineButton, attribute: .leading, multiplier: 1, constant: 0)
        let eightBottom = NSLayoutConstraint(item: eightButton, attribute: .bottom, relatedBy: .equal, toItem: zeroButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([eightTrailing, eightBottom])
        
        // Nine constraints
        let nineTrailing = NSLayoutConstraint(item: nineButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -60)
        let nineBottom = NSLayoutConstraint(item: nineButton, attribute: .bottom, relatedBy: .equal, toItem: backspaceButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([nineTrailing, nineBottom])
        
        // Decimal constraints
        let decimalLeading = NSLayoutConstraint(item: decimalButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 60)
        let decimalTrailing = NSLayoutConstraint(item: decimalButton, attribute: .trailing, relatedBy: .equal, toItem: zeroButton, attribute: .leading, multiplier: 1, constant: 0)
        let decimalBottom = NSLayoutConstraint(item: decimalButton, attribute: .bottom, relatedBy: .equal, toItem: clearButton, attribute: .top, multiplier: 1, constant: -10)
        
        view.addConstraints([decimalLeading, decimalTrailing, decimalBottom])
        
        // Zero constraints
        let zeroTrailing = NSLayoutConstraint(item: zeroButton, attribute: .trailing, relatedBy: .equal, toItem: backspaceButton, attribute: .leading, multiplier: 1, constant: 0)
        let zeroBottom = NSLayoutConstraint(item: zeroButton, attribute: .bottom, relatedBy: .equal, toItem: clearButton, attribute: .top, multiplier: 1, constant: -10)
        
        view.addConstraints([zeroTrailing, zeroBottom])
        
        // Backspace constraints
        let backspaceTrailing = NSLayoutConstraint(item: backspaceButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -60)
        let backspaceBottom = NSLayoutConstraint(item: backspaceButton, attribute: .bottom, relatedBy: .equal, toItem: clearButton, attribute: .top, multiplier: 1, constant: -10)
        
        view.addConstraints([backspaceTrailing, backspaceBottom])
        
        // Clear button constraints
        let clearLeading = NSLayoutConstraint(item: clearButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 115)
        let clearTrailing = NSLayoutConstraint(item: clearButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -115)
        let clearBottom = NSLayoutConstraint(item: clearButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -70)
        
        view.addConstraints([clearLeading, clearTrailing, clearBottom])
    }
    
    // MARK: Properties
    var oneButton = UIButton()
    var twoButton = UIButton()
    var threeButton = UIButton()
    var fourButton = UIButton()
    var fiveButton = UIButton()
    var sixButton = UIButton()
    var sevenButton = UIButton()
    var eightButton = UIButton()
    var nineButton = UIButton()
    var decimalButton = UIButton()
    var zeroButton = UIButton()
    var backspaceButton = UIButton()
    var clearButton = UIButton()
    var temperatureSegmentedControl = UISegmentedControl()
    var inputLabel = UILabel()
    var outputLabel = UILabel()
    var equalLabel = UILabel()
}
