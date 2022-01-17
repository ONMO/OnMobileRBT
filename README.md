![Onmobile: Logo](http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg)

# OnMobile RBT SDK

#### Prior Note: `For the versions earlier to 3.0.16 please refer the document` [here](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.15.md)

- [Introduction](#introduction)
  - [Purpose](#purpose)
- [SDK Integration Steps](#sdk-integration-steps)
  - [CocoaPods](#cocoapods)
  - [Update Project Settings](#update-project-settings)
  - [Import OnMobile RBT SDK](#import-onmobile-rbt-sdk)
  - [Initialize OnMobile RBT SDK](#initialize-onmobile-rbt-sdk)
  - [Check content availability](#check-content-availability)
  - [Setup for Transactions](#setup-for-transactions)
  - [Preview and Set RBT](#preview-and-set-rbt)
- [Dependencies](#dependencies)
- [Copyright](#copyright)

## Introduction

  ### Purpose

  This document describes systematic guidelines in integrating OnMobile RBT SDK framework along with its dependent libraries/frameworks.This document provides complete guidelines tointegrate OnMobile RBT Framework in iOS project.

## SDK Integration Steps

  ### CocoaPods

  OnMobile SDK can be integrated to any iOS project through CocoaPods. You can refer [Cocoapods](https://guides.cocoapods.org/using/getting-started.html#getting-started) for more details.

  Command to install CocoaPods (If it is not already installed on your OS X)

```bash
$ sudo gem install cocoapods
```

  To integrate OnMobile RBT SDK into your Xcode project using CocoaPods(Use the version number provided to you), specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
pod 'OnMobileRBTSDK', '<x.x.x>'
end
```

  Then, run the following command on your project path:

```bash
$ pod install
```
   or
```bash
$ pod install --repo-update
```

If, you see the below error :
```bash
[!] CocoaPods could not find compatible versions for pod "OnMobileRBTSDK":
  In Podfile:
    OnMobileRBTSDK (<x.x.x>)

None of your spec sources contain a spec satisfying the dependency: `OnMobileRBTSDK (<x.x.x>)`.
```

Please, do run the below commands:
```bash
$ pod repo update
$ pod install
```

  ### Update Project Settings

  Post installing OnMobile RBT SDK to your project, please update the project settings by following below steps

  #### 1. Navigate to Project Target Info Tab

  #### 2. Add following Properties in Custom iOS Target Properties list
  
  ##### a. `App Transport Security Settings` - `Dictionary` - Add below item a1
  ##### a1. `Allow Arbitrary Loads` - `Boolean` - `Yes`
      
  ##### b. `Privacy - Contacts Usage Description` - `String` - Your preffered message to alert user about accessing contacts in app on the supported localization
  
  ##### c. `Privacy - Microphone Usage Description` - `String` - Your preffered message to alert user about accessing microphone in app on the supported localization
  
  ##### d. `Privacy - Speech Recognition Usage Description` - `String` - Your preffered message to alert user about determing the voice of microphone in app on the supported localization

  ### Import OnMobile RBT SDK
  
  ```swift
import OnMobileRBTSDK
```

  ### Initialize OnMobile RBT SDK
  
  #### Summary
  
    Initializes `OnMobileRBTSDK`
  
  #### Declaration
    @objc static func initialize(
                      withAuthenticationKey authKey: String, 
                      andClientKey clientKey: String, 
                      succedded success: @escaping (() -> ()), 
                      failed fail: @escaping ((OnMobileRBTError) -> ())
                      )

 #### Parameters

```
- authKey : Provide the OnMobileRBTSDK authentication key shared by organization to intialize
- clientKey : Provide the Client key shared by organization to intialize
- success : Povides a successfull callback after initializtion
- fail : Provides the error callback with OnMobileRBTError object to handle the errors
  ```
  
  ### Check content availability
  
  #### Summary
  
    Checks whether the content is available or not for the provided ISRC codes
  
  #### Declaration
    
    @objc static func contentAvailability(
                    for isrcs: [String], 
                    succedded success: @escaping (([IsrcItem]) -> ()), 
                    failed fail: @escaping ((OnMobileRBTError) -> ())
                    )
                    
  #### Parameters
  
  ```
  - isrcs : Provide the list of ISRC codes to check the availability
  - success : Provides the successfull callback with list of IsrcItem object
  - fail : Provides the error callback with OnMobileRBTError object to handle the errors
  ```
  
  ### Setup for Transactions
  
  #### Summary
  
    Setup the user to forward with the transactions.
  
  #### Declaration
    
    @objc static func setup(
                    forPhoneNumber number: String, 
                    andPhoneNumbers phoneNumbers: [String]? = nil, 
                    withLanguageCode languageCode: String? = nil, 
                    controller: UIViewController, 
                    listener selector: Selector? = nil, 
                    eventListener eventSelector: Selector? = nil, 
                    succedded success: @escaping ((OnMobileRBTConnectorResponse) -> ()), 
                    failed fail: @escaping ((OnMobileRBTError) -> ())
                    )


  #### Parameters

```
- number : Provide appropriate number to setup user to use the OnMobileRBTSDK
- phoneNumbers : Provide array of numbers to support multiple numbers in OnMobileRBTSDK (check with organization wheter it supports to you or not)
- languageCode : Provide the language code to dispay the content in appropriate language (Take the code from organization)
- controller : Provide the controller, on which the OnMobileRBTSDK listeners needs to be handled
- selector : Provide the selector to handle the listeners
- eventSelector : Provide the selector to handle the event listeners
- success : Provides the successfull callback with  OnMobileRBTConnectorResponse   object to use for further transactions
- fail : Provides the error callback with OnMobileRBTError object to handle the errors
```

  #### Note
  
    Save the response object `OnMobileRBTConnectorResponse` for further transactions, pl ease call the below methods on this object
    
  ### Preview and Set RBT
  
  #### Summary
  
    Launches the OnMobileRBTSDK Preview UI for the provided ISRC code to set it as RBT (Use the saved instance object `OnMobileRBTConnectorResponse` to call this method
  
  #### Declaration
  
    @objc func previewAndSetRBT(
                for isrc: String, 
                on controller: UIViewController, 
                animated: Bool, 
                failed fail: @escaping ((OnMobileRBTError) -> ())
                )

  #### Parameters

 ```
  - isrc : Provde theISRC code to preview and set
  - controller : Provide the controller, on which the OnMobileRBTSDK preview UI to be shown
  - animated : true / false
  - fail : Provides the error callback OnMobileRBTError object to handle the errors
 ```

## Dependencies
  
  ##### Other frameworks or libraries used and version details
  ```
  'Alamofire', '4.9.0'
  'CryptoSwift', '1.4.0'
  'ISPageControl', '0.1.0'
  'SDWebImage', '5.1.1'
  'TrustKit', '1.5.3'
  'youtube-ios-player-helper', '0.1.6'
  ```

## Copyright

### ©2022 OnMobile Global Limited All Rights Reserved.
