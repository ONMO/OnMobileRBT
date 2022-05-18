![Onmobile: Logo](http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg)

# OnMobile RBT SDK

#### Prior Note: Please refer earlier documents at [3.0.19](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.19.md), [3.0.17](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.17.md), [3.0.16](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.16.md) & [3.0.15](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.15.md)

- [Introduction](#introduction)
  - [Purpose](#purpose)
- [SDK Integration Steps](#sdk-integration-steps)
  - [CocoaPods](#cocoapods)
  - [Update Project Settings](#update-project-settings)
  - [Import OnMobile RBT SDK](#import-onmobile-rbt-sdk)
- [SDK Method implementations](#sdk-method-implementations)
  - [Initialize OnMobile RBT SDK](#initialize-onmobile-rbt-sdk)
  - [Check content availability](#check-content-availability)
  - [Setup for Transactions](#setup-for-transactions)
  - [Launch UI](#launch-ui)
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
pod 'OnMobileRBTSDK/<module_extension_name_shared_by_organization>', '3.1.0'
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
import OnMobileRBTSDK_<module_extension_name_shared_by_organization>
```

  ## SDK Method implementations
  
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
  
  #### Implementation
  
    OnMobileRBTConnector.initialize(
                withAuthenticationKey: "<Authentication Key>",
                andClientKey: "<Client Key>",
                succedded: {
                    /*Success call back code*/
                },
                failed: { (error) in
                    /*Failure call back code*/
                }
            )
  
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
  
  #### Implementation
  
    OnMobileRBTConnector.contentAvailability(
                for: ["<isrcid1>", "<isrcid2>"],
                   succedded: { (isrcItems) in
                       /*Success call back code*/
                   },
                   failed: { (error) in
                       /*Failure call back code*/
                   }
            )
  
  ### Setup for Transactions
  
  #### Preparation of `OnMobileRBTClientDetail` object to pass in the `setup` method
  
  Declaration
    
    init(_ msisdn: OnMobileRBTMSISDNDetail,
        otherMsisdns msisdns: [OnMobileRBTMSISDNDetail] = [],
        languageCode language: String? = nil,
        accountCode account: String? = nil,
        customerType customer: String? = nil,
        segment: String? = nil)
    
   Parameters
    
    - msisdn: Provide appropriate `OnMobileRBTMSISDNDetail` object to setup user to use the `OnMobileRBTSDK` with the msisdn & customerId if any
    - msisdns: Provide array of numbers along with customerId's if any to support multiple numbers in `OnMobileRBTSDK` (check with organization wheter it supports not)
    - language: Provide the language code to dispay the content in appropriate language (Take the code from organization)
    - account: Provide the account code if any
    - customer: Provide the customer type if any
    - segment: Provide the segment if any

  Implementation
  
    let onMobileRBTClientDetail = OnMobileRBTClientDetail(<`OnMobileRBTMSISDNDetail` object>,
                                                       otherMsisdns: <Array of `OnMobileRBTMSISDNDetail` objects>,
                                                       languageCode: languageCode,
                                                       accountCode: accountCode,
                                                       customerType: customerType,
                                                       segment: segment)

  
  #### Summary
  
    Setup the user to forward with the transactions.
  
  #### Declaration
    
    @objc public static func setup(
        withOnMobileRBTClientDetail client: OnMobileRBTClientDetail,
        controller: UIViewController,
        listener selector: Selector? = nil,
        eventListener eventSelector: Selector? = nil,
        playerListener playerSelector: Selector? = nil,
        succedded success: @escaping ((OnMobileRBTConnectorResponse) -> ()),
        failed fail: @escaping ((OnMobileRBTError) -> ()))

  #### Parameters

```
  - client: Provide appropriate `OnMobileRBTMSISDNDetail` object to setup user to use the `OnMobileRBTSDK` with the msisdn & customerId if any
  - controller: Provide the controller, on which the `OnMobileRBTSDK` listeners needs to be handled
  - selector: Provide the selector to handle the listeners
  - eventSelector: Provide the selector to handle the event listeners
  - playerSelector:Provide the selector to handle the player listeners
  - success: Provides the successfull  callback with `OnMobileRBTConnectorResponse` object to use for further transactions
  - fail: Provides the error callback with `OnMobileRBTError` object to handle the errors
```

  #### Implementation
  
    OnMobileRBTConnector.setup(
                withOnMobileRBTClientDetail: <onMobileRBTClientDetail of type `OnMobileRBTClientDetail`>,
                controller: self,
                listener: nil,
                eventListener: nil,
                playerListener: nil,
                succedded: { (response) in
                    /*
                     Success call back code
                     self.onMobileRBTConnectorResponse = response
                     */
                },
                failed: { (error) in
                    /*Failure call back code*/
                }
            )

  #### Note
  
    Save the response object `OnMobileRBTConnectorResponse` for further transactions, 
    please call the below methods on this object
    
  ### Launch UI
  
  #### Summary
  
    Launches the OnMobileRBTSDK UI
    (Use the saved instance object `OnMobileRBTConnectorResponse` to call this method)
  
  #### Declaration
  
    @objc func launch(
                  on controller: UIViewController, 
                  animated: Bool, 
                  failed fail: @escaping ((OnMobileRBTError) -> ()))

  #### Parameters

 ```
  - controller: Provide the controller, on which the `OnMobileRBTSDK` app to be launched
  - animated: `true / false`
  - fail: Provides the error callback `OnMobileRBTError` object to handle the errors
 ```
 
  #### Implementation
  
    self.onMobileRBTConnectorResponse?.launch(
            on: self, 
            animated: true, 
            failed: { (error) in
                /*Failure call back code*/
        })

 ### Preview and Set RBT
  
  #### Summary
  
    Launches the OnMobileRBTSDK Preview UI for the provided ISRC code to set it as RBT 
    (Use the saved instance object `OnMobileRBTConnectorResponse` to call this method)
  
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
 
  #### Implementation
  
    self.onMobileRBTConnectorResponse?.previewAndSetRBT(
            for: "<isrcid>",
               on: self,
               animated: true,
               failed: { (error) in
                   /*Failure call back code*/
               })
               
## Dependencies
  
  ##### Other frameworks or libraries used and version details
  ```
    'Alamofire', '5.5.0'
    'CryptoSwift', '1.4.3'
    'ISPageControl', '0.1.0'
    'SDWebImage', '5.12.5'
    'TrustKit', '1.6.5'
    'youtube-ios-player-helper', '1.0.4'
  ```
  
  ##### iOS Support is form 10.0+

## Copyright

### ©2022 OnMobile Global Limited All Rights Reserved.
