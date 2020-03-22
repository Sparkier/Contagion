//
//  SceneDelegate.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import UIKit
import SwiftUI
import UserNotifications

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var history: History?
    var gameState: GameState?
    var timerHelper: TimerHelper = TimerHelper()
    var backGroundTime: Date?
    let dayDuration: Double = 5

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).

        // Get the managed object context from the shared persistent container.
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

        history = History()
        gameState = GameState()

        // Create the SwiftUI view and set the context as the value for the managedObjectContext environment keyPath.
        // Add `@Environment(\.managedObjectContext)` in the views that will need the context.
        let contentView = ContentView(history: history!, gameState: gameState!, dayDuration: dayDuration, timerHelper: timerHelper).environment(\.managedObjectContext, context)

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }

        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(appMovedToBackground), name: UIApplication.willResignActiveNotification, object: nil)
        notificationCenter.addObserver(self, selector: #selector(appMovedToForeground), name: UIApplication.didBecomeActiveNotification, object: nil)
        timerHelper.startTimer(gameState: gameState!, dayDuration: dayDuration)
    }

    @objc func appMovedToBackground() {
        backGroundTime = NSDate.now
        let center = UNUserNotificationCenter.current()
        let contentAction = UNMutableNotificationContent()
        contentAction.subtitle = "Hilfe!"
        contentAction.body = "Dein Land braucht dich!"
        contentAction.threadIdentifier = "local-notificcations"
        if daysElapsed(gameState: gameState!) >= history!.states.last!.state.stateTexts.last!.day { // Action already displayed
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 300, repeats: false)
            let identifier = "UYLLocalNotification"
            let request = UNNotificationRequest(identifier: identifier, content: contentAction, trigger: trigger)
            center.add(request, withCompletionHandler: { (error) in
                if let error = error {
                    print(error)
                }
            })
        } else {
            for stateText in history!.states.last!.state.stateTexts {
                let daysTo = daysUntil(gameState: gameState!, day: stateText.day)
                if  daysTo > 0 {
                    let stateAction = UNMutableNotificationContent()
                    let author = stateText.author
                    let text = stateText.text
                    stateAction.subtitle = author
                    stateAction.body = text
                    stateAction.threadIdentifier = "local-notificcations"
                    print(Double(daysTo) * dayDuration)
                    // TODO: Debug this notification
//                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: Double(daysTo)*dayDuration, repeats: false)
//                    let identifier = "UYLLocalNotification"
//                    let request = UNNotificationRequest(identifier: identifier, content: stateAction, trigger: trigger)
//                    center.add(request, withCompletionHandler: { (error) in
//                        if let error = error {
//                            print(error)
//                        } else {
//                            print("added")
//                        }
//                    })
                    let trigger = UNTimeIntervalNotificationTrigger(timeInterval: Double(daysTo)*dayDuration, repeats: false)
                    let identifier = "UYLLocalNotification"
                    let request = UNNotificationRequest(identifier: identifier, content: contentAction, trigger: trigger)
                    center.add(request, withCompletionHandler: { (error) in
                        if let error = error {
                            print(error)
                        }
                    })
                }
            }
            let daysToAction = daysUntil(gameState: gameState!, day: history!.states.last!.state.stateTexts.last!.day)
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: Double(daysToAction)*dayDuration, repeats: false)
            let identifier = "UYLLocalNotification"
            let request = UNNotificationRequest(identifier: identifier, content: contentAction, trigger: trigger)
            center.add(request, withCompletionHandler: { (error) in
                if let error = error {
                    print(error)
                }
            })
        }
    }

    @objc func appMovedToForeground() {
        guard gameState != nil else { return }
        let secondsPassed = secondsElapsed(since: gameState!.beginTime, until: NSDate.now)
        if secondsPassed / Int(dayDuration) > history!.states.last!.state.stateTexts.last!.day {
            gameState!.time = Calendar.current.date(byAdding: .day, value: history!.states.last!.state.stateTexts.last!.day, to: gameState!.beginTime) ?? gameState!.time
        } else {
            gameState!.time = Calendar.current.date(byAdding: .day, value: secondsPassed / Int(dayDuration), to: gameState!.beginTime) ?? gameState!.time
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not neccessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.

        // Save changes in the application's managed object context when the application transitions to the background.
        (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
    }
}

