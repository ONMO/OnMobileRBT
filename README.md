![Onmobile: Logo](http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg)

# OnMobile RBT SDK

- [Introduction](#introduction)
  - [Purpose](#purpose)
- [SDK Integration Steps](#sdk-integration-steps)
  - [CocoaPods](#cocoapods)
  - [Update Project Settings](#update-project-settings)
  - [Import OnMobile RBT SDK](#import-onmobile-rbt-sdk)
  - [Initialize OnMobile RBT SDK](#initialize-onmobile-rbt-sdk)
  - [Supported methods](#supported-methods)
    - [Launch the SDK UI](#1-launch-the-sdk-ui)
    - [Fetch the Content List or launch the content list view](#2-fetch-the-content-list-or-launch-the-content-list-view)
    - [Launch the Preview UI](#3-launch-the-preview-ui)
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

  To integrate OnMobile RBT SDK into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '8.0'
use_frameworks!

target '<Your Target Name>' do
pod 'OnMobileRBTSDK', '~> 2.1.0'
end
```

  Then, run the following command on your project path:

```bash
$ pod install
```

  ### Update Project Settings

  Post installing OnMobile RBT SDK to your project, please update the project settings by following below steps

  #### 1. Navigate to Project Target Info Tab

![Step1](https://github.com/ONMO/VodafoneCallerTunes/blob/master/Navigate%20to%20Project%20Target%20Info%20Tab.png)

  #### 2. Add following Properties in Custom iOS Target Properties list

![Step2](https://github.com/ONMO/VodafoneCallerTunes/blob/master/Add%20following%20Properties%20in%20Custom%20iOS%20Target%20Properties%20list.png)

  ### Import OnMobile RBT SDK
  
  ```swift
import OnMobileRBTSDK
```

  ### Initialize OnMobile RBT SDK

  Use the following code to initialize by passing the valid `MSISDN` number and valid `Key` and to call the methods please do save the response object received in `completedSuccessfully` block

```swift
OnMobileRBTConnector.initialize(withAuthenticationKey: <key>, forPhoneNumber: <phoneNumber>, completedSuccessfully: { (OnMobileRBTConnectorResponse) in
            //Save the OnMobileRBTConnectorResponse to use it for futher calls
        }, failed: { (OnMobileRBTConnectorError) in
            //Handle error
        })
```

  ### Supported methods

  #### 1. Launch the SDK UI
  
  ##### Summary
  Launches the SDK UI
  
  ##### Declaration
 ```swift
 public func launchSDK(on controller: UIViewController, animated: Bool, success: (() -> ())? = nil, failed fail: ((OnMobileRBTConnectorError) -> ())? = nil)
 ```
 
 ##### Parameters
 ```
 controller	: self
 animated	: true/false
 success	: Returns success block - default is nil
 fail	: Returns OnMobileRBTConnectorError type
 ```

 #### 2. Fetch the Content List or launch the content list view
 
 ##### Summary
 Fetches the list of contents or launches the content list view if `isShowAll` is `true`
  
 ##### Declaration
 ```swift
 public func contentList(forContentId contentId: String, withShowAll isShowAll: Bool, controller: UIViewController? = nil, animated: Bool? = false, completedSuccessfully success: (([OnMobileRBTTrackItem]) -> ())? = nil, failed fail: ((OnMobileRBTConnectorError) -> ())? = nil)
 ```
 
 ##### Parameters
 ```
 contentId  : Provide the appropriate content name to fetch the data
 isShowAll  : Provide true to show all contents, false to show limited content
 controller : Provide self is isShowAll is true & for false default value is nil
 animated : true/false
 success  : Returns list of OnMobileRBTTrackItem items
 fail : Returns OnMobileRBTConnectorError type
 ```

 #### 3. Launch the Preview UI
  
 ##### Summary
Launches the preview view for the provided `OnMobileRBTTrackItem`
  
 ##### Declaration
 ```swift
 public func showPreview(for item: OnMobileRBTTrackItem, controller: UIViewController, animated: Bool, success: (() -> ())? = nil, failed fail: ((OnMobileRBTConnectorError) -> ())? = nil)
 ```
 
 ##### Parameters
 ```
  item	: Provide the OnMobileRBTTrackItem
  controller	: self
  animated	: true/false
  success	: Returns success block - default is nil
  fail	: Returns OnMobileRBTConnectorError type
 ```

## Copyright

### ©2020 OnMobile Global Limited All Rights Reserved.
