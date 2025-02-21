//
//  ViewController.swift
//  example
//
//  Created by Naresh Babu Kommana on 21/02/25.
//

import UIKit


class ViewController: UIViewController {
    
    let _authKey = ""
    let _clientKey = ""
    let _phoneNumber = ""
    let _languageCode = "en"
    var deeplinkURLString: String?
    
    var onMobileRBTConnectorResponse: OnMobileRBTConnectorResponse?
    
    var msisdnDetail: OnMobileRBTMSISDNDetail? {
        return OnMobileRBTMSISDNDetail.create(msisdn: _phoneNumber)
    }
    
    @IBOutlet weak var initializeButton: UIButton!
    @IBOutlet weak var setupButton: UIButton!
    @IBOutlet weak var launchButton: UIButton!
    @IBOutlet weak var deepLinkButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initializeButton.isHidden = false
        setupButton.isHidden = true
        launchButton.isHidden = true
        deepLinkButton.isHidden = true
    }
    
    @IBAction func initialiseSDK(_ sender: Any) {
        initialize()
    }
    
    @IBAction func setupSDK(_ sender: Any) {
        setup()
    }
    
    @IBAction func launchSDKUI(_ sender: Any) {
        launch()
    }
    
    @IBAction func openDeepLinkURL(_ sender: Any) {
        openDeepLink()
    }
    
    func openDeepLink() {
        let url = deeplinkURLString ?? ""
        self.onMobileRBTConnectorResponse?.launch(with: url, on: self, animated: true, failed: { (error) in
            print(error.message)
        })
    }
    
    func initialize() {
        OnMobileRBTConnector.initialize(
            withAuthenticationKey: _authKey,
            andClientKey: _clientKey, succedded: {
                self.initializeButton.isHidden = true
                self.setupButton.isHidden = false
            }, failed: { (error) in
                print(error.message)
            }
        )
    }
    
    func setup() {
        
        guard let msisdn = msisdnDetail else {return}
        
        let clientDetail = OnMobileRBTClientDetail.create(msisdn: msisdn)
        
        OnMobileRBTConnector.setup(withOnMobileRBTClientDetail: clientDetail,
                                   controller: self,
                                   listener: #selector(onMobileRBTConnectorResponseCallbackListenerMethod),
                                   eventListener: #selector(onMobileRBTConnectorResponseEventListenerMethod),
                                   playerListener: #selector(onMobileRBTConnectorResponsePlayerListenerMethod),
                                   succedded: { (response) in
            self.onMobileRBTConnectorResponse = response
            self.setupButton.isHidden = true
            self.launchButton.isHidden = false
            self.deepLinkButton.isHidden = false
        }, failed: { (error) in
            print(error.message)
        }
        )
    }
    
    func launch() {
        self.onMobileRBTConnectorResponse?.launch(on: self, animated: true, failed: { (error) in
            print(error.message)
        })
    }
    
    @objc func onMobileRBTConnectorResponseCallbackListenerMethod() {
        guard let listenerType = self.onMobileRBTConnectorResponse?.callbackListener.type else {
            return
        }
        
        switch listenerType {
            case .activation, .deActivation:
                let onMobileRBTConnectorCallback = self.onMobileRBTConnectorResponse?.callbackListener.onMobileRBTConnectorCallback
                /*guard let vcToPresent = self.storyboard?.instantiateViewController(withIdentifier: "ClientController") as? ClientController else {return}
                vcToPresent.modalPresentationStyle = .overFullScreen
                vcToPresent.onMobileRBTConnectorCallback = onMobileRBTConnectorCallback
                onMobileRBTConnectorCallback?.controller?.present(vcToPresent, animated: true, completion: nil)*/
            @unknown default:
                print("default in callbackListener type")
        }
    }
    
    @objc func onMobileRBTConnectorResponseEventListenerMethod() {
        guard let listenerType = self.onMobileRBTConnectorResponse?.eventListener.type else {
            return
        }
        
        switch listenerType {
            case .sdkOpen:
                print("Handle sdk open")
                
            case .sdkClose:
                print("Handle sdk close")
                
            case .event:
                print("Handle Event")
                print(self.onMobileRBTConnectorResponse?.eventListener.event ?? "No value")
            @unknown default:
                print("default in eventListener type")
        }
    }
    
    @objc func onMobileRBTConnectorResponsePlayerListenerMethod() {
        guard let listenerType = self.onMobileRBTConnectorResponse?.playerListener.type else {
            return
        }
        
        switch listenerType {
            case .play:
                print("Player Playing")
                
            case .stop:
                print("Player Stopped")
                
            @unknown default:
                print("Nothing to handle")
        }
    }
    
}

