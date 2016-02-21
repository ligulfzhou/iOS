//
//  AppDelegate.swift
//  ListenAndReactNotification
//
//  Created by ligulfzhou on 2/21/16.
//  Copyright © 2016 ligulfzhou. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    class func notificationName() -> String{
        return "SetUserInfoNotification"
    }

    class func personInfoKeyFirstName() ->String{
        return "firstName"
    }
    
    class func personInfoKeyLastName() ->String{
        return "lastName"
    }
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        let steveJobs = Person()
        let notification = NSNotification(name: AppDelegate.notificationName(),
            object: self,
            userInfo: [self.classForCoder.personInfoKeyFirstName(): "steve", self.classForCoder.personInfoKeyLastName(): "jobs"])
        NSNotificationCenter.defaultCenter().postNotification(notification)
        
        NSLog("\(steveJobs.firstName) -- \(steveJobs.lastName)")
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

