![Onmobile: Logo](http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg)

# OnMobile RBT SDK

#### Prior Note: Please refer earlier documents at [3.0.19](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.19.md), [3.0.17](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.17.md), [3.0.16](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.16.md) & [3.0.15](https://github.com/ONMO/OnMobileRBT/blob/master/README-v3.0.15.md)

- [Introduction](#introduction)
  - [Purpose](#purpose)
- [SDK Integration Steps](#sdk-integration-steps)
  - [CocoaPods](#cocoapods)
  - [Swift Package Manager](#swift-package-manager)
  - [Update Project Settings](#update-project-settings)
  - [Import OnMobile RBT SDK](#import-onmobile-rbt-sdk)
- [SDK Method implementations](#sdk-method-implementations)
  - [Initialize OnMobile RBT SDK](#initialize-onmobile-rbt-sdk)
  - [Check content availability](#check-content-availability)
  - [Fetch content](#fetch-content)
  - [Setup for Transactions](#setup-for-transactions)
  - [Launch UI](#launch-ui)
  - [Preview and Set RBT](#preview-and-set-rbt)
- [Models](#models)
  - [OnMobileRBTConnectorContent](#onmobilerbtconnectorcontent)
  - [ContentType](#contenttype)
- [Changes in version](#changes-in-version)
- [Copyright](#copyright)

## Introduction

  ### Purpose

  This document describes systematic guidelines in integrating OnMobile RBT SDK framework.This document provides complete guidelines to integrate OnMobile RBT Framework in iOS project.

## SDK Integration Steps

  ### CocoaPods

  OnMobile SDK can be integrated to any iOS project through CocoaPods. You can refer [Cocoapods](https://guides.cocoapods.org/using/getting-started.html#getting-started) for more details.

  Command to install CocoaPods (If it is not installed on your OS X)

```bash
$ sudo gem install cocoapods
```

  To integrate OnMobile RBT SDK into your Xcode project using CocoaPods(Use the version number provided to you), specify it in your `Podfile`:

```ruby
pod 'OnMobileRBTSDK/<module_extension_name_shared_by_organization>', 'x.x.x'
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

  ### Swift Package Manager
  
  OnMobile SDK can be integrated to any iOS project through Swift Package Manger. You can refer [Swift Package Manger](https://swift.org/package-manager/) for more details.

  Once you have your Swift package set up, adding OnMobileRBTSDK as a dependency is as easy as adding it to the dependencies value of your Package.swift.
  
  ```bash
  dependencies: [
         .package(url: "https://github.com/ONMO/OnMobileRBT.git", exact: "x.x.x"),
    ]
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

  ### Fetch content
  
  #### Summary
  
    Fetches and provides the requested type of content
    - For Music Content it is mandatory to provide the id information in request
    - For Name Content it is mandatoru to provide the name as id in request
  
  #### Declaration
    
    @objc public static func content(for type: ContentType,
                                     with id: String? = nil,
                                     fromOffset offset: Int = 0,
                                     withMaxResult max: Int = 16,
                                     succedded success: @escaping (([OnMobileRBTConnectorContent]) -> ()),
                                     failed fail: @escaping ((OnMobileRBTError) -> ()))
                    
  #### Parameters
  
  ```
    - type: Provide appropriate `ContentType` for which the content data is required
    - id: Provide the `ID` for music `ContentType` or `Name` for name `ContentType` for other type it can be null
    - offset: Provide the offset value from which the content is required if there is pagination
    - max: Provide the max value for which the content length required for each request
    - success: Provides the successfull  callback with array of`OnMobileRBTConnectorContent` objects
    - fail: Provides the error callback with `OnMobileRBTError` object to handle the errors
  ```
  
  #### Implementation

  OnMobileRBTConnector.content(
          for: contentType, 
          with: multipleIsrcsTextField.text, 
          fromOffset: 0, 
          withMaxResult: 8) { (response) in
                /*Success call back code*/
            } failed: { (error) in
                /*Failure call back code*/
            }
  
  ### Setup for Transactions
  
  #### Preparation of `OnMobileRBTMSISDNDetail` object to pass in the `OnMobileRBTClientDetail` Object
  
  Declaration
    
    @objc public static func create(msisdn: String,
                              customerId: String? = "") -> OnMobileRBTMSISDNDetail
    
   Parameters
    
    - msisdn: Provide appropriate msisdn
    - customerId: Provide appropriate customerId if any

  Implementation
  
    let onMobileRBTMSISDNDetail = OnMobileRBTMSISDNDetail.create(msisdn:<phonenumber>, customerId: <customer id if any>")
  
  
  #### Preparation of `OnMobileRBTClientDetail` object to pass in the `setup` method
  
  Declaration
    
    @objc public static func create(msisdn: OnMobileRBTMSISDNDetail,
                              otherMsisdns msisdns: [OnMobileRBTMSISDNDetail] = [],
                              languageCode language: String? = nil,
                              accountCode account: String? = nil,
                              customerType customer: String? = nil,
                              segment: String? = nil,
                              type: ClientType = .normal) -> OnMobileRBTClientDetail
    
   Parameters
    
    - msisdn: Provide appropriate `OnMobileRBTMSISDNDetail` object to setup user to use the `OnMobileRBTSDK` with the msisdn & customerId if any
    - msisdns: Provide array of numbers along with customerId's if any to support multiple numbers in `OnMobileRBTSDK` (check with organization wheter it supports not)
    - language: Provide the language code to dispay the content in appropriate language (Take the code from organization)
    - account: Provide the account code if any
    - customer: Provide the customer type if any
    - segment: Provide the segment if any
    - type: Provide the client type if any

  Implementation
  
    let onMobileRBTClientDetail = OnMobileRBTClientDetail.create(
                                                       msisdn: <`OnMobileRBTMSISDNDetail` object>,
                                                       otherMsisdns: <Array of `OnMobileRBTMSISDNDetail` objects>,
                                                       languageCode: languageCode,
                                                       accountCode: accountCode,
                                                       customerType: customerType,
                                                       segment: segment,
                                                       type: type)

  
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
  
    Launches the OnMobileRBTSDK (optionally you can provide the deeplink url to launch particular UI)
    (Use the saved instance object `OnMobileRBTConnectorResponse` to call this method)
  
  #### Declaration
  
    @objc func launch(
                  with url: String? = nil,
                  on controller: UIViewController,
                  animated: Bool,
                  failed fail: @escaping ((OnMobileRBTError) -> ()))

  #### Parameters

 ```
  - url: Provide the deeplink url, so the sdk will directly launch on to that particular content view
  - controller: Provide the controller, on which the `OnMobileRBTSDK` app to be launched
  - animated: `true / false`
  - fail: Provides the error callback `OnMobileRBTError` object to handle the errors
 ```
 
  #### Implementation
  
    self.onMobileRBTConnectorResponse?.launch(
            with: <deeplink url>,
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
               
  
  ##### iOS Support is form 10.0+

## Models

### OnMobileRBTConnectorContent

Provides the response object with the required parameters

#### Parameters

    - Provides the RBT track title name
    public var title : String?
    
    - Provides the RBT track album name
    public var album : String?
    
    - Provides the RBT track artist name
    public var artist : String?
    
    - Provides the RBT identifier
    public var contentID : String?
    
    - Provides  the RBT content language
    public var contentLanguage : String?
    
    - Provides the RBT content type
    public var contentType : ContentType?
    
    - Provides the RBT track artwork image URL
    public var imageURL : String?
    
    - Provides the RBT track preview URL
    public var previewStreamURL : String?
    
    - Provides the RBT track downloads count
    public var displayDownloadCount : String?
    
    - Provides the RBT track name
    public var name : String?

### ContentType

Provides all the content types available

#### Cases

    - music
    - trending
    - name
    - profile
  
## Changes in version
`3.1.1`  
- Direct denpendency removed
- OnMobileRBTMSISDNDetail & OnMobileRBTClientDetail object creation changed to static method

## Copyright

### ©2023 OnMobile Global Limited All Rights Reserved.
