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
    - [Launch the `OnMobileRBTSDK` app](#1-launch-the-onmobilerbtsdk-app)
    - [Provides the list of `OnMobileRBTTrackItem` items](#2-provides-the-list-of-onmobilerbttrackitem-items)
    - [Launches the content view for the provide content](#3-launches-the-content-view-for-the-provide-content)
    - [Launch preview view for specific `OnMobileRBTTrackItem` item](#4-launch-preview-view-for-specific-onmobilerbttrackitem-item)
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
pod 'OnMobileRBTSDK', '~> 2.1.3'
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
    OnMobileRBTSDK (~> 2.2.0)

None of your spec sources contain a spec satisfying the dependency: `OnMobileRBTSDK (~> 2.1.3)`.
```

Please, do run the below commands:
```bash
$ pod repo update
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

  ##### Summary
  Use the following code to initialize by passing the valid `Authentication Key` & `Client Key` along with valid `Phone Number`. And to call the methods please do save the response object received in `completedSuccessfully` block

  ##### Implementation
  ```swift
  OnMobileRBTConnector.initialize(withAuthenticationKey: "<Authentication key>", andClientKey: "<Client Key>", forPhoneNumber: <Phone Number>, controller: self, succeeded: { (response) in
            //Save the OnMobileRBTConnectorResponse to use it for futher calls (shared instance preffered)
            //Ex: onMobileRBTConnectorResponse = response --> Use this for the below supported methods
            }, failed: { (error) in
            //Handle your error
            })
  ```
  
  ##### Declaration
  ```swift
  func initialize(withAuthenticationKey key: String, andClientKey clientKey: String, forPhoneNumber number: Int64, controller: UIViewController, completedSuccessfully success: @escaping ((OnMobileRBTConnectorResponse) -> ()))
 ```
 
  ##### Parameters
  ```
  key: Provide the `OnMobileRBTSDK` key to intialize
  clientKey: Provide the `Client(Operator)` key to intialize
  number: Provide appropriate number to intialize `OnMobileRBTSDK`
  controller: Provide the controller, on which the `OnMobileRBTSDK` app to be launched or to through the error alerts
  success: Provides the successfull `OnMobileRBTConnectorResponse` object to use for further requests
  ```
 
  ### Supported methods

  #### 1. Launch the `OnMobileRBTSDK` app
  
  ##### Summary
  Launches the `OnMobileRBTSDK` app
  
  ##### Implementation
 ```swift
 onMobileRBTConnectorResponse?.launch(on: self, animated: true, failed:  { (error) in
            //Handle your error
        })
 ```
 
   ##### Declaration
 ```swift
 func launch(on controller: UIViewController, animated: Bool)
 ```
 
 ##### Parameters
 ```
controller: Provide the controller, on which the `OnMobileRBTSDK` app to be launched
animated: `true / false`
 ```

 #### 2. Provides the list of `OnMobileRBTTrackItem` items 
 
 ##### Summary
 Provides the list of `OnMobileRBTTrackItem` items for the provide `content`
  
 ##### Implementation
 ```swift
 onMobileRBTConnectorResponse?.fetchContent(on: self, for: <Content ID/Name>, onMobileRBTTrackItems: { (items) in
            //Save (or) use the items
        }, failed:  { (error) in
            //Handle your error
        })
 ```
 
 ##### Declaration
 ```swift
 func fetchContent(on controller: UIViewController, for contentId: String, onMobileRBTTrackItems items: (([OnMobileRBTTrackItem]) -> ())? = nil)
 ```
 
 ##### Parameters
 ```
controller: Provide the controller, on which the list of content details required, default acceptable value is `self`
contentId: Provide the content detail for which the all the contents are required
items: Retuns the list of `OnMobileRBTTrackItem` items
 ```
 
 #### 3. Launches the content view for the provide content 
 
 ##### Summary
Launches the content view for the provide `content` with all the contents on provided `controller`
  
 ##### Implementation
 ```swift
 onMobileRBTConnectorResponse?.fetchAllContent(on: self, for: <Content ID/Name>, animated: true, failed:  { (error) in
            //Handle your error
        })
 ```
 
 ##### Declaration
 ```swift
 func fetchAllContent(on controller: UIViewController, for contentId: String, animated: Bool)
 ```
 
 ##### Parameters
 ```
controller: Provide the controller, on which the contentView  to be launched
contentId: Provide the content detail for which the all the contents are required
animated: `true / false`
 ```

 #### 4. Launch preview view for specific `OnMobileRBTTrackItem` item
  
 ##### Summary
Launches the preview view for the provided `OnMobileRBTTrackItem` on provided `controller`
  
 ##### Implementation
 ```swift
 onMobileRBTConnectorResponse?.launchPreview(on: self, for: item, animated: true, failed:  { (error) in
            //Handle your error
        })
 ```
 
 ##### Declaration
 ```swift
 func launchPreview(on controller: UIViewController, for onMobileRBTTrackItem: OnMobileRBTTrackItem, animated: Bool)
 ```
 
 ##### Parameters
 ```
controller: Provide the controller, on which the preview to be launched
onMobileRBTTrackItem: Provide the item detail for which the preview required
animated: `true / false`
```

## Copyright

### ©2020 OnMobile Global Limited All Rights Reserved.
