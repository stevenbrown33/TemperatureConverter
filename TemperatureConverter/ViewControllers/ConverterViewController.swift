//
//  ConverterViewController.swift
//  TemperatureConverter
//
//  Created by Steven Brown on 3/13/18.
//  Copyright © 2018 Steven Brown. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .primaryColor
        setupButtons()
        setupSegmentedControl()
        setupButtonConstraints()
        setupSegmentedControlConstraints()
        temperatureSegmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
    }
    
    func colorChanging() {
        guard let inputText = inputLabel.text else { return }
        let inputDouble = Double(inputText.dropLast()) ?? 0.0
        if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble <= -10.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble <= -23.33 {
            view.backgroundColor = .tempOne
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > -10.0 && inputDouble <= 0.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > -23.33 && inputDouble <= -17.78 {
            view.backgroundColor = .tempTwo
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 0.0 && inputDouble <= 10.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > -17.78 && inputDouble <= -12.22 {
            view.backgroundColor = .tempThree
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 10.0 && inputDouble <= 20.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > -12.22 && inputDouble <= -6.67 {
            view.backgroundColor = .tempFour
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 20.0 && inputDouble <= 30.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > -6.67 && inputDouble <= -1.11 {
            view.backgroundColor = .tempFour
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 30.0 && inputDouble <= 40.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > -1.11 && inputDouble <= 4.44 {
            view.backgroundColor = .tempFive
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 40.0 && inputDouble <= 50.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > 4.44 && inputDouble <= 10.00 {
            view.backgroundColor = .tempSix
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 50.0 && inputDouble <= 60.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > 10.00 && inputDouble <= 15.56 {
            view.backgroundColor = .tempSeven
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 60.0 && inputDouble <= 70.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > 15.56 && inputDouble <= 21.11 {
            view.backgroundColor = .tempEight
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 70.0 && inputDouble <= 80.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > 21.11 && inputDouble <= 26.67 {
            view.backgroundColor = .tempNine
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 80.0 && inputDouble <= 90.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > 26.67 && inputDouble <= 32.22 {
            view.backgroundColor = .tempTen
        } else if temperatureSegmentedControl.selectedSegmentIndex == 0 && inputDouble > 90.0 && inputDouble <= 100.0 || temperatureSegmentedControl.selectedSegmentIndex == 1 && inputDouble > 32.22 && inputDouble <= 37.78 {
            view.backgroundColor = .tempEleven
        } else {
            view.backgroundColor = .tempTwelve
        }
    }
    
    func updateViews() {
        if temperatureSegmentedControl.selectedSegmentIndex == 0 {
            guard let inputText = inputLabel.text else { return }
            let inputDouble = Double(inputText.dropLast()) ?? 0
            let celciusString = "\((inputDouble -  32) * (5/9))"
            let celcius = Double(celciusString) ?? 0.00
            outputLabel.text = "\(celcius.rounded(toPlaces: 2))℃"
        } else {
            guard let inputText = inputLabel.text else { return }
            let inputDouble = Double(inputText.dropLast()) ?? 0
            let fahrenheitString = "\(inputDouble * (9/5) + 32)"
            let fahrenheit = Double(fahrenheitString) ?? 0.00
            outputLabel.text = "\(fahrenheit.rounded(toPlaces: 2))℉"
        }
    }
    
    // MARK: Format Buttons
    func setupButtons() {
        // set background colors
        oneButton.backgroundColor = .clear
        twoButton.backgroundColor = .clear
        threeButton.backgroundColor = .clear
        fourButton.backgroundColor = .clear
        fiveButton.backgroundColor = .clear
        sixButton.backgroundColor = .clear
        sevenButton.backgroundColor = .clear
        eightButton.backgroundColor = .clear
        nineButton.backgroundColor = .clear
        decimalButton.backgroundColor = .clear
        zeroButton.backgroundColor = .clear
        negativeButton.backgroundColor = .clear
        clearButton.backgroundColor = .clear
        
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
        negativeButton.titleLabel?.textColor = .white
        clearButton.titleLabel?.textColor = .white
        inputLabel.textColor = .white
        equalLabel.textColor = .white
        outputLabel.textColor = .white
        
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
        negativeButton.setTitle("+/-", for: .normal)
        clearButton.setTitle("Clear", for: .normal)
        inputLabel.text = "℉"
        equalLabel.text = "="
        outputLabel.text = "℃"
        inputLabel.textAlignment = .center
        equalLabel.textAlignment = .center
        outputLabel.textAlignment = .center
        
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
        negativeButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        clearButton.titleLabel?.font = UIFont(name: "Futura", size: 30)
        inputLabel.font = UIFont(name: "Futura", size: 50)
        outputLabel.font = UIFont(name: "Futura", size: 50)
        equalLabel.font = UIFont(name: "Futura", size: 50)
        
        // add targets/actions
        oneButton.addTarget(self, action: #selector(oneButtonTouchDown), for: .touchDown)
        oneButton.addTarget(self, action: #selector(oneButtonTouchUp), for: .touchUpInside)
        oneButton.addTarget(self, action: #selector(oneButtonDragOut), for: .touchUpOutside)
        twoButton.addTarget(self, action: #selector(twoButtonTouchDown), for: .touchDown)
        twoButton.addTarget(self, action: #selector(twoButtonTouchUp), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(twoButtonDragOut), for: .touchUpOutside)
        threeButton.addTarget(self, action: #selector(threeButtonTouchDown), for: .touchDown)
        threeButton.addTarget(self, action: #selector(threeButtonTouchUp), for: .touchUpInside)
        threeButton.addTarget(self, action: #selector(threeButtonDragOut), for: .touchUpOutside)
        fourButton.addTarget(self, action: #selector(fourButtonTouchDown), for: .touchDown)
        fourButton.addTarget(self, action: #selector(fourButtonTouchUp), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(fourButtonDragOut), for: .touchUpOutside)
        fiveButton.addTarget(self, action: #selector(fiveButtonTouchDown), for: .touchDown)
        fiveButton.addTarget(self, action: #selector(fiveButtonTouchUp), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(fiveButtonDragOut), for: .touchUpOutside)
        sixButton.addTarget(self, action: #selector(sixButtonTouchDown), for: .touchDown)
        sixButton.addTarget(self, action: #selector(sixButtonTouchUp), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(sixButtonDragOut), for: .touchUpOutside)
        sevenButton.addTarget(self, action: #selector(sevenButtonTouchDown), for: .touchDown)
        sevenButton.addTarget(self, action: #selector(sevenButtonTouchUp), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(sevenButtonDragOut), for: .touchUpOutside)
        eightButton.addTarget(self, action: #selector(eightButtonTouchDown), for: .touchDown)
        eightButton.addTarget(self, action: #selector(eightButtonTouchUp), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(eightButtonDragOut), for: .touchUpOutside)
        nineButton.addTarget(self, action: #selector(nineButtonTouchDown), for: .touchDown)
        nineButton.addTarget(self, action: #selector(nineButtonTouchUp), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(nineButtonDragOut), for: .touchUpOutside)
        decimalButton.addTarget(self, action: #selector(decimalButtonTouchDown), for: .touchDown)
        decimalButton.addTarget(self, action: #selector(decimalButtonTouchUp), for: .touchUpInside)
        decimalButton.addTarget(self, action: #selector(decimalButtonDragOut), for: .touchUpOutside)
        zeroButton.addTarget(self, action: #selector(zeroButtonTouchDown), for: .touchDown)
        zeroButton.addTarget(self, action: #selector(zeroButtonTouchUp), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(zeroButtonDragOut), for: .touchUpOutside)
        negativeButton.addTarget(self, action: #selector(negativeButtonTouchDown), for: .touchDown)
        negativeButton.addTarget(self, action: #selector(negativeButtonTouchUp), for: .touchUpInside)
        negativeButton.addTarget(self, action: #selector(negativeButtonDragOut), for: .touchUpOutside)
        clearButton.addTarget(self, action: #selector(clearButtonTouchDown), for: .touchDown)
        clearButton.addTarget(self, action: #selector(clearButtonTouchUp), for: .touchUpInside)
        clearButton.addTarget(self, action: #selector(clearButtonDragOut), for: .touchUpOutside)
        
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
        view.addSubview(negativeButton)
        view.addSubview(clearButton)
        view.addSubview(inputLabel)
        view.addSubview(outputLabel)
        view.addSubview(equalLabel)
    }
    
    //MARK: Format SegmentedControl
    func setupSegmentedControl() {
        temperatureSegmentedControl = UISegmentedControl(items: items)
        temperatureSegmentedControl.backgroundColor = .clear
        temperatureSegmentedControl.tintColor = .white
        temperatureSegmentedControl.selectedSegmentIndex = 0
        temperatureSegmentedControl.setTitleTextAttributes([
            NSAttributedStringKey.font : UIFont(name: "Futura", size: 16) as Any,
            NSAttributedStringKey.foregroundColor: UIColor.white,
            NSAttributedStringKey.backgroundColor: UIColor.clear
            ], for: .normal)
        temperatureSegmentedControl.setTitleTextAttributes([
            NSAttributedStringKey.font : UIFont(name: "Futura", size: 16) as Any,
            NSAttributedStringKey.foregroundColor: UIColor.primaryColor,
            NSAttributedStringKey.backgroundColor: UIColor.white
            ], for: .selected)
        temperatureSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(temperatureSegmentedControl)
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
        negativeButton.translatesAutoresizingMaskIntoConstraints = false
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
        let zeroNegativeWidths = NSLayoutConstraint(item: zeroButton, attribute: .width, relatedBy: .equal, toItem: negativeButton, attribute: .width, multiplier: 1, constant: 0)
        let clearButtonSegmentedControlWidths = NSLayoutConstraint(item: clearButton, attribute: .width, relatedBy: .equal, toItem: temperatureSegmentedControl, attribute: .width, multiplier: 1, constant: 0)
        
        view.addConstraints([inputEqualWidths, equalOutputWidths, oneTwoWidths, twoThreeWidths, fourFiveWidths, fiveSixWidths, sevenEightWidths, eightNineWidths, decimalZeroWidths, zeroNegativeWidths, clearButtonSegmentedControlWidths])
        
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
        let nineNegativeHeights = NSLayoutConstraint(item: nineButton, attribute: .height, relatedBy: .equal, toItem: negativeButton, attribute: .height, multiplier: 1, constant: 0)
        let clearButtonHeights = NSLayoutConstraint(item: clearButton, attribute: .height, relatedBy: .equal, toItem: zeroButton, attribute: .height, multiplier: 1, constant: 0)
        
        view.addConstraints([inputOutputHeights, equalLabelHeights, oneFourHeights, fourSevenHeights, sevenDecimalHeights, twoFiveHeights, fiveEightHeights, eightZeroHeights, threeSixHeights, sixNineHeights, nineNegativeHeights, clearButtonHeights])
        
        // Input Label constraints
        let inputLabelLeading =  NSLayoutConstraint(item: inputLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let inputLabelTrailing = NSLayoutConstraint(item: inputLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let inputLabelTop = NSLayoutConstraint(item: inputLabel, attribute: .top, relatedBy: .equal, toItem: temperatureSegmentedControl, attribute: .bottom, multiplier: 1, constant: 25)
        let inputLabelBottom = NSLayoutConstraint(item: inputLabel, attribute: .bottom, relatedBy: .equal, toItem: equalLabel, attribute: .top, multiplier: 1, constant: 3)
        
        view.addConstraints([inputLabelLeading, inputLabelTrailing, inputLabelTop, inputLabelBottom])
        
        // Equal Label constraints
        let equalLabelLeading =  NSLayoutConstraint(item: equalLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let equalLabelTrailing = NSLayoutConstraint(item: equalLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        
        view.addConstraints([equalLabelLeading, equalLabelTrailing])
        
        // Output Label constraints
        let outputLabelLeading = NSLayoutConstraint(item: outputLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 0)
        let outputLabelTrailing = NSLayoutConstraint(item: outputLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 0)
        let outputLabelTop = NSLayoutConstraint(item: outputLabel, attribute: .top, relatedBy: .equal, toItem: equalLabel, attribute: .bottom, multiplier: 1, constant: 3)
        
        view.addConstraints([outputLabelLeading, outputLabelTrailing, outputLabelTop])
        
        // One constraints
        let oneLeading = NSLayoutConstraint(item: oneButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 30)
        let oneTrailing = NSLayoutConstraint(item: oneButton, attribute: .trailing, relatedBy: .equal, toItem: twoButton, attribute: .leading, multiplier: 1, constant: 0)
        let oneTop = NSLayoutConstraint(item: oneButton, attribute: .top, relatedBy: .equal, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 35)
        let oneBottom = NSLayoutConstraint(item: oneButton, attribute: .bottom, relatedBy: .equal, toItem: fourButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([oneLeading, oneTrailing, oneTop, oneBottom])
        
        // Two constraints
        let twoTrailing = NSLayoutConstraint(item: twoButton, attribute: .trailing, relatedBy: .equal, toItem: threeButton, attribute: .leading, multiplier: 1, constant: 0)
        let twoTop = NSLayoutConstraint(item: twoButton, attribute: .top, relatedBy: .equal, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 35)
        let twoBottom = NSLayoutConstraint(item: twoButton, attribute: .bottom, relatedBy: .equal, toItem: fiveButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([twoTrailing, twoTop, twoBottom])
        
        // Three constraints
        let threeTrailing = NSLayoutConstraint(item: threeButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -30)
        let threeTop = NSLayoutConstraint(item: threeButton, attribute: .top, relatedBy: .equal, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 35)
        let threeBottom = NSLayoutConstraint(item: threeButton, attribute: .bottom, relatedBy: .equal, toItem: sixButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([threeTrailing, threeTop, threeBottom])
        
        // Four constraints
        let fourLeading = NSLayoutConstraint(item: fourButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 30)
        let fourTrailing = NSLayoutConstraint(item: fourButton, attribute: .trailing, relatedBy: .equal, toItem: fiveButton, attribute: .leading, multiplier: 1, constant: 0)
        let fourBottom = NSLayoutConstraint(item: fourButton, attribute: .bottom, relatedBy: .equal, toItem: sevenButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([fourLeading, fourTrailing, fourBottom])
        
        // Five constraints
        let fiveTrailing = NSLayoutConstraint(item: fiveButton, attribute: .trailing, relatedBy: .equal, toItem: sixButton, attribute: .leading, multiplier: 1, constant: 0)
        let fiveBottom = NSLayoutConstraint(item: fiveButton, attribute: .bottom, relatedBy: .equal, toItem: eightButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([fiveTrailing, fiveBottom])
        
        // Six constraints
        let sixTrailing = NSLayoutConstraint(item: sixButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -30)
        let sixBottom = NSLayoutConstraint(item: sixButton, attribute: .bottom, relatedBy: .equal, toItem: nineButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([sixTrailing, sixBottom])
        
        // Seven constraints
        let sevenLeading = NSLayoutConstraint(item: sevenButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 30)
        let sevenTrailing = NSLayoutConstraint(item: sevenButton, attribute: .trailing, relatedBy: .equal, toItem: eightButton, attribute: .leading, multiplier: 1, constant: 0)
        let sevenBottom = NSLayoutConstraint(item: sevenButton, attribute: .bottom, relatedBy: .equal, toItem: decimalButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([sevenLeading, sevenTrailing, sevenBottom])
        
        // Eight constraints
        let eightTrailing = NSLayoutConstraint(item: eightButton, attribute: .trailing, relatedBy: .equal, toItem: nineButton, attribute: .leading, multiplier: 1, constant: 0)
        let eightBottom = NSLayoutConstraint(item: eightButton, attribute: .bottom, relatedBy: .equal, toItem: zeroButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([eightTrailing, eightBottom])
        
        // Nine constraints
        let nineTrailing = NSLayoutConstraint(item: nineButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -30)
        let nineBottom = NSLayoutConstraint(item: nineButton, attribute: .bottom, relatedBy: .equal, toItem: negativeButton, attribute: .top, multiplier: 1, constant: 0)
        
        view.addConstraints([nineTrailing, nineBottom])
        
        // Decimal constraints
        let decimalLeading = NSLayoutConstraint(item: decimalButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 30)
        let decimalTrailing = NSLayoutConstraint(item: decimalButton, attribute: .trailing, relatedBy: .equal, toItem: zeroButton, attribute: .leading, multiplier: 1, constant: 0)
        let decimalBottom = NSLayoutConstraint(item: decimalButton, attribute: .bottom, relatedBy: .equal, toItem: clearButton, attribute: .top, multiplier: 1, constant: -10)
        
        view.addConstraints([decimalLeading, decimalTrailing, decimalBottom])
        
        // Zero constraints
        let zeroTrailing = NSLayoutConstraint(item: zeroButton, attribute: .trailing, relatedBy: .equal, toItem: negativeButton, attribute: .leading, multiplier: 1, constant: 0)
        let zeroBottom = NSLayoutConstraint(item: zeroButton, attribute: .bottom, relatedBy: .equal, toItem: clearButton, attribute: .top, multiplier: 1, constant: -10)
        
        view.addConstraints([zeroTrailing, zeroBottom])
        
        // Negatice constraints
        let negativeTrailing = NSLayoutConstraint(item: negativeButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -30)
        let negativeBottom = NSLayoutConstraint(item: negativeButton, attribute: .bottom, relatedBy: .equal, toItem: clearButton, attribute: .top, multiplier: 1, constant: -10)
        
        view.addConstraints([negativeTrailing, negativeBottom])
        
        // Clear button constraints
        let clearLeading = NSLayoutConstraint(item: clearButton, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 115)
        let clearTrailing = NSLayoutConstraint(item: clearButton, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -115)
        let clearBottom = NSLayoutConstraint(item: clearButton, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -65)
        
        view.addConstraints([clearLeading, clearTrailing, clearBottom])
    }
    
    //MARK: Constrain SegmentedControl
    func setupSegmentedControlConstraints() {
        let segmentedControlHeights = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .height, relatedBy: .equal, toItem: temperatureSegmentedControl, attribute: .height, multiplier: 1, constant: 30)
        let segmentedControlLeading = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 115)
        let segmentedControlTrailing = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -115)
        let segmentedControlTop = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 85)
        view.addConstraints([segmentedControlHeights, segmentedControlLeading, segmentedControlTrailing, segmentedControlTop])
    }
    
    var textHasBeenCleared = false
    
    func clearText() {
        if !textHasBeenCleared {
            if temperatureSegmentedControl.selectedSegmentIndex == 0 {
                inputLabel.text = "℉"
                outputLabel.text = "℃"
                textHasBeenCleared = true
            } else {
                inputLabel.text = "℃"
                outputLabel.text = "℉"
                textHasBeenCleared = true
            }
        }
    }
    
    // MARK: Actions
    @objc func oneButtonTouchDown() {
        self.oneButton.backgroundColor = .pressedColor
    }
    @objc func twoButtonTouchDown() {
        self.twoButton.backgroundColor = .pressedColor
    }
    @objc func threeButtonTouchDown() {
        self.threeButton.backgroundColor = .pressedColor
    }
    @objc func fourButtonTouchDown() {
        self.fourButton.backgroundColor = .pressedColor
    }
    @objc func fiveButtonTouchDown() {
        self.fiveButton.backgroundColor = .pressedColor
    }
    @objc func sixButtonTouchDown() {
        self.sixButton.backgroundColor = .pressedColor
    }
    @objc func sevenButtonTouchDown() {
        self.sevenButton.backgroundColor = .pressedColor
    }
    @objc func eightButtonTouchDown() {
        self.eightButton.backgroundColor = .pressedColor
    }
    @objc func nineButtonTouchDown() {
        self.nineButton.backgroundColor = .pressedColor
    }
    @objc func decimalButtonTouchDown() {
        self.decimalButton.backgroundColor = .pressedColor
    }
    @objc func zeroButtonTouchDown() {
        self.zeroButton.backgroundColor = .pressedColor
    }
    @objc func negativeButtonTouchDown() {
        self.negativeButton.backgroundColor = .pressedColor
    }
    @objc func clearButtonTouchDown() {
        self.clearButton.backgroundColor = .pressedColor
    }
    @objc func oneButtonTouchUp() {
        self.oneButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("1", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func twoButtonTouchUp() {
        self.twoButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("2", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func threeButtonTouchUp() {
        self.threeButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("3", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func fourButtonTouchUp() {
        self.fourButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("4", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func fiveButtonTouchUp() {
        self.fiveButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("5", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func sixButtonTouchUp() {
        self.sixButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("6", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func sevenButtonTouchUp() {
        self.sevenButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("7", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func eightButtonTouchUp() {
        self.eightButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("8", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func nineButtonTouchUp() {
        self.nineButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("9", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func decimalButtonTouchUp() {
        self.decimalButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert(".", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func zeroButtonTouchUp() {
        self.zeroButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        inputLabel.text?.insert("0", at: (labelText.index(before: labelText.endIndex)))
        updateViews()
    }
    @objc func negativeButtonTouchUp() {
        self.negativeButton.backgroundColor = .clear
        clearText()
        let labelText = inputLabel.text ?? ""
        let inputDouble = Double(labelText.dropLast()) ?? 0
        if temperatureSegmentedControl.selectedSegmentIndex == 0 {
            inputLabel.text = "\(inputDouble * -1)℉"
            updateViews()
        } else {
            inputLabel.text = "\(inputDouble * -1)℃"
            updateViews()
        }
    }
//    @objc func backspaceButtonTouchUp() {
//        self.backspaceButton.backgroundColor = .primaryColor
//        clearText()
//        guard  let labelText = inputLabel.text else { return }
//        var index: String.Index?
//        if let symbolIndex = labelText.index(of: "℉") {
//            index = symbolIndex
//        } else if let symbolIndex = labelText.index(of: "℃") {
//            index = symbolIndex
//        }
//        guard let unwrappedIndex = index, labelText.count > 1 else { return }
//        inputLabel.text?.remove(at: labelText.index(before: unwrappedIndex))
//        updateViews()
//    }
    
    @objc func clearButtonTouchUp() {
        self.clearButton.backgroundColor = .clear
        if temperatureSegmentedControl.selectedSegmentIndex == 0 {
            inputLabel.text = "℉"
            updateViews()
            outputLabel.text = "℃"
        } else {
            inputLabel.text = "℃"
            updateViews()
            outputLabel.text = "℉"
        }
    }
    
    @objc func segmentedControlValueChanged() {
        if temperatureSegmentedControl.selectedSegmentIndex == 0 {
            inputLabel.text = "℉"
            updateViews()
            outputLabel.text = "℃"
        } else {
            inputLabel.text = "℃"
            updateViews()
            outputLabel.text = "℉"
        }
    }
    
    @objc func oneButtonDragOut() {
        self.oneButton.backgroundColor = .clear
    }
    @objc func twoButtonDragOut() {
        self.twoButton.backgroundColor = .clear
    }
    @objc func threeButtonDragOut() {
        self.threeButton.backgroundColor = .clear
    }
    @objc func fourButtonDragOut() {
        self.fourButton.backgroundColor = .clear
    }
    @objc func fiveButtonDragOut() {
        self.fiveButton.backgroundColor = .clear
    }
    @objc func sixButtonDragOut() {
        self.sixButton.backgroundColor = .clear
    }
    @objc func sevenButtonDragOut() {
        self.sevenButton.backgroundColor = .clear
    }
    @objc func eightButtonDragOut() {
        self.eightButton.backgroundColor = .clear
    }
    @objc func nineButtonDragOut() {
        self.nineButton.backgroundColor = .clear
    }
    @objc func decimalButtonDragOut() {
        self.decimalButton.backgroundColor = .clear
    }
    @objc func zeroButtonDragOut() {
        self.zeroButton.backgroundColor = .clear
    }
    @objc func negativeButtonDragOut() {
        self.negativeButton.backgroundColor = .clear
    }
    @objc func clearButtonDragOut() {
        self.clearButton.backgroundColor = .clear
    }
    
    // MARK: Properties
    var inputLabel = UILabel()
    var equalLabel = UILabel()
    var outputLabel = UILabel()
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
    var negativeButton = UIButton()
    var clearButton = UIButton()
    
    // Segmented Control
    let items = ["℉ ▻ ℃", "℃ ▻ ℉"]
    var temperatureSegmentedControl: UISegmentedControl!
}

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
