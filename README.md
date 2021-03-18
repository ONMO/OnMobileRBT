![Onmobile: Logo](http://t0.gstatic.com/images?q=tbn:ANd9GcQ7a6C5baa2f_3KA2zVpouH29tMGgRfcCn1PGuubySgbFbKuMxg)

# OnMobile RBT SDK

- [Introduction](#introduction)
  - [Purpose](#purpose)
- [SDK Integration Steps](#sdk-integration-steps)
  - [CocoaPods](#cocoapods)
  - [Update Project Settings](#update-project-settings)
  - [Import OnMobile RBT SDK](#import-onmobile-rbt-sdk)
  - [Initialize OnMobile RBT SDK](#initialize-onmobile-rbt-sdk)
  - [Supported methods and parameters](#supported-methods-and-parameters)
    - [Launch the `OnMobileRBTSDK` app](#1-launch-the-onmobilerbtsdk-app)
    - [Handle the observer event with the help of `OnMobileRBTConnectorListener`](#2-handle-the-observer-event-with-the-help-of-onmobilerbtconnectorlistener)
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
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
pod 'OnMobileRBTSDK', '~> 3.0.1'
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
    OnMobileRBTSDK (~> 3.0.1)

None of your spec sources contain a spec satisfying the dependency: `OnMobileRBTSDK (~> 3.0.1)`.
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
  Use the following code to initialize by passing the valid `Authentication Key` along with valid `Phone Number` and appropriate `OnMobileRBTConnectorResponseListener Method` as a selector to handle the listener events. 
  
  For rest of action handlers and events capturers please do save the response object `OnMobileRBTConnectorResponse` received in `completedSuccessfully` block
  To call the methods please do save 

  ##### Implementation
  ```swift
  OnMobileRBTConnector.initialize(withAuthenticationKey: <authKey>, andClientKey: <clientKey>, forPhoneNumber: <number>, andPhoneNumbers: <phoneNumbers>, controller: self, listener: #selector(onMobileRBTConnectorResponseCallbackListenerMethod), eventListener: #selector(onMobileRBTConnectorResponseEventListenerMethod), succedded: { (response) in
  //Save the OnMobileRBTConnectorResponse to use it for futher calls (shared instance preffered)
  //Ex: self.onMobileRBTConnectorResponse = response --> Use this for the below supported methods
  }, failed: { (onMobileRBTError) in
  //Handle Error
  })
  ```
  
  ##### Declaration
  ```swift
  func initialize(withAuthenticationKey key: String, andClientKey clientKey: String, forPhoneNumber number: String, andPhoneNumbers phoneNumbers: [String]? = nil, controller: UIViewController, listener selector: Selector? = nil, eventListener eventSelector: Selector? = nil, succedded success: @escaping ((OnMobileRBTConnectorResponse) -> ()), failed fail: @escaping ((OnMobileRBTError) -> ())) 
 ```
 
  ##### Parameters
  ```
  - key: Provide the `OnMobileRBTSDK` key to intialize
  - clientKey: Provide the `Client` key to intialize
  - number: Provide appropriate number to intialize `OnMobileRBTSDK`
  - phoneNumbers: Provide array of numbers to support multiple numbers in `OnMobileRBTSDK`
  - controller: Provide the controller, on which the `OnMobileRBTSDK` app to be launched
  - selector: Provide the selector to handle the listeners
  - eventSelector: Provide the selector to handle the event listeners
  - success: Provides the successfull `OnMobileRBTConnectorResponse` object to use for further requests
  - fail: Provides the error `OnMobileRBTError` object to handle the errors
  ```
 
  ### Supported methods and parameters

  #### 1. Launch the `OnMobileRBTSDK` app
  
  ##### Summary
  Launches the `OnMobileRBTSDK` app with the help of saved `OnMobileRBTConnectorResponse` object
  
  ##### Implementation
 ```swift
 onMobileRBTConnectorResponse?.launch(on: self, animated: true, failed: { (error) in
  //Handle Error
 })
 ```
 
   ##### Declaration
 ```swift
 func launch(on controller: UIViewController, animated: Bool, failed fail: @escaping ((OnMobileRBTError) -> ()))
 ```
 
 ##### Parameters
 ```
  - controller:Provide the controller, on which the `OnMobileRBTSDK` app to be launched
  - animated: `true / false`
  - fail: Provides the error `OnMobileRBTError` object to handle the errors
 ```

 #### 2. Handle the callback observer event with the help of `OnMobileRBTConnectorCallbackListener` 
 
 ##### Summary
 Provides `OnMobileRBTConnectorCallbackListener` details to handle the actions with the respective object
 
 ##### Implementation
 Need to access this object only from the saved object of `OnMobileRBTConnectorResponse`
 
 ```swift
  let listenerType = onMobileRBTConnectorResponse?.callbackListener.type
  let onMobileRBTConnectorCallback = self.onMobileRBTConnectorResponse?.callbackListener.onMobileRBTConnectorCallback
 ```
  
 ##### Declaration and details of `OnMobileRBTConnectorCallbackListener` parameters
 ```swift
  var type: OnMobileRBTConnectorCallbackListenerType?
  var onMobileRBTConnectorCallback: OnMobileRBTConnectorCallback?
 ```
 
 ##### Details of `OnMobileRBTConnectorCallbackListenerType` 
 ```
    activation - Listener type sent when sdk is activating a subscription
    deActivation - Listener type sent when sdk is deactivating a subscription
 ```
 
 #### 3. Handle the callback observer event with the help of `OnMobileRBTConnectorEventListener` 
 
 ##### Summary
 Provides `OnMobileRBTConnectorEventListener` details to handle the actions with the respective object
 
 ##### Implementation
 Need to access this object only from the saved object of `OnMobileRBTConnectorResponse`
 
 ```swift
  let listenerType = onMobileRBTConnectorResponse?.eventListener.type
  let event = onMobileRBTConnectorResponse?.eventListener.event
 ```
  
 ##### Declaration and details of `OnMobileRBTConnectorEventListener` parameters
 ```swift
  var type: OnMobileRBTConnectorEventListenerType?
  var event: (String, [String : Any])?
 ```
 
 ##### Details of `OnMobileRBTConnectorEventListenerType` 
 ```
  sdkOpen - Listener type sent when sdk UI open
  sdkClose - Listener type sent when sdk UI close
  event - Listener type for event
 ```

## Copyright

### ©2021 OnMobile Global Limited All Rights Reserved.
