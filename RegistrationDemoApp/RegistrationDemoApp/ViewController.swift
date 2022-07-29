//
//  ViewController.swift
//  RegistrationDemoApp
//
//  Created by Aennam, Nithisha Reddy on 7/27/22.
//
import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    var titleForScreen: UILabel!
    var purposeButton1: UIButton!
    var purposeLabel1: UILabel!
    var purposeButton2: UIButton!
    var purposeLabel2: UILabel!
    var emailImage: UIImageView!
    var nameImage: UIImageView!
    var phoneNumberImage: UIImageView!
    var emailtext: UITextField!
    var nametext: UITextField!
    var phoneNumberText: UITextField!
    var genderButtonMale: UIButton!
    var genderLabelMale: UILabel!
    var genderButtonFemale: UIButton!
    var genderLabelFemale: UILabel!
    var disclaimer: UITextView!
    var submitButton: UIButton!
      override func viewDidLoad() {
        super.viewDidLoad()
          //view.backgroundColor = .systemMint
          setTitleForScreen()
          setPurposeButton1()
          setupPurposeLabel1()
          setPurposeButton2()
          setupPurposeLabel2()
          setupEmailImage()
          setupNameImage()
          setupPhoneNumberImage()
          setupEmailTextField()
          setupNameTextField()
          setupPhoneNumberTextField()
          setupGenderButtonMale()
          setupGenderLabelMale()
          setupGenderButtonFemale()
          setupGenderLabelFemale()
          setupDisclaimerText()
          setupSubmitButton()
    }
    func setTitleForScreen(){
        titleForScreen = UILabel.init(frame: CGRect.init(x: 100, y: 20, width: 120, height: 30))
        titleForScreen.text = "REGISTRATION"
        titleForScreen.backgroundColor = .cyan
        titleForScreen.textColor = .magenta
        self.view.addSubview(titleForScreen)
    }
    func setPurposeButton1(){
        purposeButton1 = UIButton.init(frame: CGRect.init(x: 30, y: 80, width: 20, height: 20))
       // purposeButton1.setTitle("personal Button", for: .normal)
        purposeButton1.backgroundColor = .green
        purposeButton1.addTarget(self, action: #selector(buttonOneChanged), for: .touchUpInside)
        self.view.addSubview(purposeButton1)
    }
    func setupPurposeLabel1(){
        purposeLabel1 = UILabel.init(frame: CGRect.init(x: 55, y: 70, width: 80, height: 40))
        purposeLabel1.text = "Personal"
        purposeLabel1.textColor = .blue
        self.view.addSubview(purposeLabel1)
    }
    func setPurposeButton2(){
        purposeButton2 = UIButton.init(frame: CGRect.init(x: 130, y: 80, width: 20, height: 20))
       // purposeButton1.setTitle("personal Button", for: .normal)
        purposeButton2.addTarget(self, action: #selector(buttonTwoChanged), for: .touchUpInside)
        purposeButton2.backgroundColor = .green
        self.view.addSubview(purposeButton2)
    }
    func setupPurposeLabel2(){
        purposeLabel2 = UILabel.init(frame: CGRect.init(x: 155, y: 70, width: 80, height: 40))
        purposeLabel2.text = "Company"
        purposeLabel2.textColor = .blue
        self.view.addSubview(purposeLabel2)
    }
    func setupEmailImage(){
        emailImage = UIImageView.init(frame: CGRect.init(x: 30, y: 130, width: 50, height: 50))
        emailImage.image = UIImage(named: "email")
        self.view.addSubview(emailImage)
    }
    func setupNameImage() {
        nameImage = UIImageView.init(frame: CGRect.init(x: 30, y: 185, width: 50, height: 50))
        nameImage.image = UIImage(named: "name")
        self.view.addSubview(nameImage)
    }
    func setupPhoneNumberImage() {
        phoneNumberImage = UIImageView.init(frame: CGRect.init(x: 30, y: 235, width: 50, height: 50))
        phoneNumberImage.image = UIImage(named: "phonenumber")
        self.view.addSubview(phoneNumberImage)
    }
    func setupEmailTextField() {
        emailtext = UITextField.init(frame: CGRect.init(x: 80, y: 130, width: 170, height: 40))
        emailtext.backgroundColor = .lightGray
        emailtext.textColor = .blue
        emailtext.keyboardType = .emailAddress
        emailtext.delegate = self
        emailtext.text = "Enter Email"
        self.view.addSubview(emailtext)
    }
    func setupNameTextField() {
        nametext = UITextField.init(frame: CGRect.init(x: 80, y: 185, width: 170, height: 40))
        nametext.keyboardType = .default
        nametext.backgroundColor = .lightGray
        nametext.textColor = .blue
        nametext.text = "Enter Name"
        nametext.delegate = self
        self.view.addSubview(nametext)
    }
    func setupPhoneNumberTextField(){
        phoneNumberText = UITextField.init(frame: CGRect.init(x: 80, y: 235, width: 170, height: 40))
        phoneNumberText.text = "Enter PhoneNumber"
        phoneNumberText.backgroundColor = .lightGray
        phoneNumberText.keyboardType = .phonePad
        phoneNumberText.delegate = self
        phoneNumberText.textColor = .blue
        self.view.addSubview(phoneNumberText)
    }
    func setupGenderButtonMale(){
        genderButtonMale = UIButton.init(frame: CGRect.init(x: 30, y: 320, width: 20, height: 20))
        genderButtonMale.backgroundColor = .green
        genderButtonMale.addTarget(self, action: #selector(maleButtonChanged), for: .touchUpInside)
        self.view.addSubview(genderButtonMale)
    }
    func setupGenderLabelMale(){
        genderLabelMale = UILabel.init(frame: CGRect.init(x: 55, y: 310, width: 80, height: 40))
        genderLabelMale.text = "Male"
        genderLabelMale.textColor = .blue
        self.view.addSubview(genderLabelMale)
    }
    func setupGenderButtonFemale(){
        genderButtonFemale = UIButton.init(frame: CGRect.init(x:130, y: 320, width: 20, height: 20))
        genderButtonFemale.backgroundColor = .green
        genderButtonFemale.addTarget(self, action: #selector(femaleButtonChanged), for: .touchUpInside)
        self.view.addSubview(genderButtonFemale)
    }
    func setupGenderLabelFemale(){
        genderLabelFemale = UILabel.init(frame: CGRect.init(x: 155, y: 310, width: 80, height: 40))
        genderLabelFemale.textColor = .blue
        genderLabelFemale.text = "Female"
        self.view.addSubview(genderLabelFemale)
    }
    func setupDisclaimerText(){
        disclaimer = UITextView.init(frame: CGRect.init(x: 30, y: 350, width: 300, height: 30))
        disclaimer.text = "By Clicking register you agree on our privacy policy"
        disclaimer.textColor = .magenta
        self.view.addSubview(disclaimer)
    }
    func setupSubmitButton(){
        submitButton = UIButton.init(frame: CGRect.init(x: 110, y: 420, width: 100, height: 50))
        submitButton.setTitle("Submit", for: .normal)
        submitButton.backgroundColor = .systemIndigo
        self.view.addSubview(submitButton)
        
    }
    @objc func buttonOneChanged(){
        purposeButton1.setBackgroundImage(UIImage.init(named: "check"), for: .normal)
    }
    @objc func buttonTwoChanged(){
        purposeButton2.setBackgroundImage(UIImage.init(named: "check"), for: .normal)
    }
    @objc func maleButtonChanged(){
        genderButtonMale.setBackgroundImage(UIImage.init(named: "check"), for: .normal)
    }
    @objc func femaleButtonChanged(){
        genderButtonFemale.setBackgroundImage(UIImage.init(named: "check"), for: .normal)
    }
}

