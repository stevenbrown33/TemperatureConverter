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
        setupConstraints()
        temperatureSegmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
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
    func setupConstraints() {
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
        let segmentedControlWidth = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.45, constant: 0)
        let inputWidth = NSLayoutConstraint(item: inputLabel, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.95, constant: 0)
        let equalWidth = NSLayoutConstraint(item: equalLabel, attribute: .width, relatedBy: .equal, toItem: inputLabel, attribute: .width, multiplier: 1, constant: 0)
        let outputWidth = NSLayoutConstraint(item: outputLabel, attribute: .width, relatedBy: .equal, toItem: equalLabel, attribute: .width, multiplier: 1, constant: 0)
        let oneWidth = NSLayoutConstraint(item: oneButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.25, constant: 0)
        let twoWidth = NSLayoutConstraint(item: twoButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let threeWidth = NSLayoutConstraint(item: threeButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let fourWidth = NSLayoutConstraint(item: fourButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let fiveWidth = NSLayoutConstraint(item: fiveButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let sixWidth = NSLayoutConstraint(item: sixButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let sevenWidth = NSLayoutConstraint(item: sevenButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let eightWidth = NSLayoutConstraint(item: eightButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let nineWidth = NSLayoutConstraint(item: nineButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let zeroWidth = NSLayoutConstraint(item: zeroButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let decimalWidth = NSLayoutConstraint(item: decimalButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let negativeWidth = NSLayoutConstraint(item: negativeButton, attribute: .width, relatedBy: .equal, toItem: oneButton, attribute: .width, multiplier: 1, constant: 0)
        let clearButtonWidth = NSLayoutConstraint(item: clearButton, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 0.5, constant: 0)
        
        view.addConstraints([segmentedControlWidth ,inputWidth, equalWidth, outputWidth, oneWidth, twoWidth, threeWidth, fourWidth, fiveWidth, sixWidth, sevenWidth, eightWidth, nineWidth, zeroWidth, decimalWidth, negativeWidth, clearButtonWidth])
        
        // Height constraints
        let segmentedControlHeight = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 30)
        let inputHeight = NSLayoutConstraint(item: inputLabel, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.12, constant: 0)
        let equalHeight = NSLayoutConstraint(item: equalLabel, attribute: .height, relatedBy: .equal, toItem: temperatureSegmentedControl, attribute: .height, multiplier: 1, constant: 0)
        let outputHeight = NSLayoutConstraint(item: outputLabel, attribute: .height, relatedBy: .equal, toItem: inputLabel, attribute: .height, multiplier: 1, constant: 0)
        let oneHeight = NSLayoutConstraint(item: oneButton, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 0.08, constant: 0)
        let twoHeight = NSLayoutConstraint(item: twoButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let threeHeight = NSLayoutConstraint(item: threeButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let fourHeight = NSLayoutConstraint(item: fourButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let fiveHeight = NSLayoutConstraint(item: fiveButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let sixHeight = NSLayoutConstraint(item: sixButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let sevenHeight = NSLayoutConstraint(item: sevenButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let eightHeight = NSLayoutConstraint(item: eightButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let nineHeight = NSLayoutConstraint(item: nineButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let zeroHeight = NSLayoutConstraint(item: zeroButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let decimalHeight = NSLayoutConstraint(item: decimalButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let negativeHeight = NSLayoutConstraint(item: negativeButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        let clearHeight = NSLayoutConstraint(item: clearButton, attribute: .height, relatedBy: .equal, toItem: oneButton, attribute: .height, multiplier: 1, constant: 0)
        
        view.addConstraints([segmentedControlHeight, inputHeight, equalHeight, outputHeight, oneHeight, twoHeight, threeHeight, fourHeight, fiveHeight, sixHeight, sevenHeight, eightHeight, nineHeight, zeroHeight, decimalHeight, negativeHeight, clearHeight])
        
        // Segmented Control constraints
        let segmentedControlCenter = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let segmentedControlTop = NSLayoutConstraint(item: temperatureSegmentedControl, attribute: .top, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .top, multiplier: 1, constant: 75)
        
        view.addConstraints([segmentedControlCenter, segmentedControlTop])
        
        // Input Label constraints
        let inputLabelCenter =  NSLayoutConstraint(item: inputLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let inputLabelTop = NSLayoutConstraint(item: inputLabel, attribute: .top, relatedBy: .lessThanOrEqual, toItem: temperatureSegmentedControl, attribute: .bottom, multiplier: 1, constant: 20)
        
        view.addConstraints([inputLabelCenter, inputLabelTop])
        
        // Equal Label constraints
        let equalLabelCenter =  NSLayoutConstraint(item: equalLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let equalLabelTop = NSLayoutConstraint(item: equalLabel, attribute: .top, relatedBy: .equal, toItem: inputLabel, attribute: .bottom, multiplier: 1, constant: 3)

        view.addConstraints([equalLabelCenter, equalLabelTop])
        
        // Output Label constraints
        let outputLabelCenter = NSLayoutConstraint(item: outputLabel, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let outputLabelTop = NSLayoutConstraint(item: outputLabel, attribute: .top, relatedBy: .equal, toItem: equalLabel, attribute: .bottom, multiplier: 1, constant: 3)
        
        view.addConstraints([outputLabelCenter, outputLabelTop])
        
        // One constraints
        let oneTrailing = NSLayoutConstraint(item: oneButton, attribute: .trailing, relatedBy: .equal, toItem: twoButton, attribute: .leading, multiplier: 1, constant: 0)
        let oneY = NSLayoutConstraint(item: oneButton, attribute: .centerY, relatedBy: .equal, toItem: twoButton, attribute: .centerY, multiplier: 1, constant: 0)
        
        view.addConstraints([oneTrailing, oneY])
        
        // Two constraints
        let twoCenter = NSLayoutConstraint(item: twoButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let twoTop = NSLayoutConstraint(item: twoButton, attribute: .top, relatedBy: .lessThanOrEqual, toItem: outputLabel, attribute: .bottom, multiplier: 1, constant: 20)
        
        view.addConstraints([twoCenter, twoTop])
        
        // Three constraints
        let threeLeading = NSLayoutConstraint(item: threeButton, attribute: .leading, relatedBy: .equal, toItem: twoButton, attribute: .trailing, multiplier: 1, constant: 0)
        let threeY = NSLayoutConstraint(item: threeButton, attribute: .centerY, relatedBy: .equal, toItem: twoButton, attribute: .centerY, multiplier: 1, constant: 0)
        
        view.addConstraints([threeLeading, threeY])
        
        // Four constraints
        let fourTrailing = NSLayoutConstraint(item: fourButton, attribute: .trailing, relatedBy: .equal, toItem: fiveButton, attribute: .leading, multiplier: 1, constant: 0)
        let fourY = NSLayoutConstraint(item: fourButton, attribute: .centerY, relatedBy: .equal, toItem: fiveButton, attribute: .centerY, multiplier: 1, constant: 0)

        view.addConstraints([fourTrailing, fourY])
        
        // Five constraints
        let fiveCenter = NSLayoutConstraint(item: fiveButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let fiveTop = NSLayoutConstraint(item: fiveButton, attribute: .top, relatedBy: .equal, toItem: twoButton, attribute: .bottom, multiplier: 1, constant: 0)
        
        view.addConstraints([fiveCenter, fiveTop])
       
        // Six constraints
        let sixLeading = NSLayoutConstraint(item: sixButton, attribute: .leading, relatedBy: .equal, toItem: fiveButton, attribute: .trailing, multiplier: 1, constant: 0)
        let sixY = NSLayoutConstraint(item: sixButton, attribute: .centerY, relatedBy: .equal, toItem: fiveButton, attribute: .centerY, multiplier: 1, constant: 0)

        view.addConstraints([sixLeading, sixY])
        
        // Seven constraints
        let sevenTrailing = NSLayoutConstraint(item: sevenButton, attribute: .trailing, relatedBy: .equal, toItem: eightButton, attribute: .leading, multiplier: 1, constant: 0)
        let sevenY = NSLayoutConstraint(item: sevenButton, attribute: .centerY, relatedBy: .equal, toItem: eightButton, attribute: .centerY, multiplier: 1, constant: 0)

        view.addConstraints([sevenTrailing, sevenY])
        
        // Eight constraints
        let eightCenter = NSLayoutConstraint(item: eightButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let eightTop = NSLayoutConstraint(item: eightButton, attribute: .top, relatedBy: .equal, toItem: fiveButton, attribute: .bottom, multiplier: 1, constant: 0)
        
        view.addConstraints([eightCenter, eightTop])
        
        // Nine constraints
        let nineLeading = NSLayoutConstraint(item: nineButton, attribute: .leading, relatedBy: .equal, toItem: eightButton, attribute: .trailing, multiplier: 1, constant: 0)
        let nineY = NSLayoutConstraint(item: nineButton, attribute: .centerY, relatedBy: .equal, toItem: eightButton, attribute: .centerY, multiplier: 1, constant: 0)

        view.addConstraints([nineLeading, nineY])
        
        // Decimal constraints
        let decimalTrailing = NSLayoutConstraint(item: decimalButton, attribute: .trailing, relatedBy: .equal, toItem: zeroButton, attribute: .leading, multiplier: 1, constant: 0)
        let decimalY = NSLayoutConstraint(item: decimalButton, attribute: .centerY, relatedBy: .equal, toItem: zeroButton, attribute: .centerY, multiplier: 1, constant: 0)

        view.addConstraints([decimalTrailing, decimalY])
        
        // Zero constraints
        let zeroCenter = NSLayoutConstraint(item: zeroButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let zeroTop = NSLayoutConstraint(item: zeroButton, attribute: .top, relatedBy: .equal, toItem: eightButton, attribute: .bottom, multiplier: 1, constant: 0)
        
        view.addConstraints([zeroCenter, zeroTop])
        
        // Negative constraints
        let negativeLeading = NSLayoutConstraint(item: negativeButton, attribute: .leading, relatedBy: .equal, toItem: zeroButton, attribute: .trailing, multiplier: 1, constant: 0)
        let negativeY = NSLayoutConstraint(item: negativeButton, attribute: .centerY, relatedBy: .equal, toItem: zeroButton, attribute: .centerY, multiplier: 1, constant: 0)

        view.addConstraints([negativeLeading, negativeY])
        
        // Clear button constraints
        let clearCenter = NSLayoutConstraint(item: clearButton, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1, constant: 0)
        let clearTop = NSLayoutConstraint(item: clearButton, attribute: .top, relatedBy: .equal, toItem: zeroButton, attribute: .bottom, multiplier: 1, constant: 10)
        //let clearBottom = NSLayoutConstraint(item: clearButton, attribute: .bottom, relatedBy: .greaterThanOrEqual, toItem: view, attribute: .bottom, multiplier: 1, constant: -50)
        
        view.addConstraints([clearCenter, clearTop])
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
