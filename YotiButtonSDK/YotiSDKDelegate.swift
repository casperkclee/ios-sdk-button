//
//  YotiSDKDelegate.swift
//  YotiButtonSDK
//
//  Created by Charles Vu on 15/08/2018.
//  Copyright © 2018 Yoti Limited. All rights reserved.
//

import Foundation

@objc(YTBScenarioRetrievalDelegate)
public protocol ScenarioRetrievalDelegate {
    func yotiSDKDidFail(`for` useCaseID: String, with error: Error)
    func yotiSDKDidSucceed(`for` useCaseID: String, baseURL: URL?, token: String?, url: URL?)

}

@objc(YTBAppLaunchDelegate)
public protocol AppLaunchDelegate {
    func yotiSDKDidOpenYotiApp()
}

@objc(YTBSDKDelegate)
public protocol SDKDelegate: ScenarioRetrievalDelegate, AppLaunchDelegate {}
