//
//  ContentView.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var history: History
    @ObservedObject var gameState: GameState
    let timerHelper: TimerHelper

    var body: some View {
        ZStack {
            Color(UIColor(named: "StatsBackgroundColor")!)
                .edgesIgnoringSafeArea(.top)
            Color(UIColor(named: "MainBackgroundColor")!)
                .edgesIgnoringSafeArea(.bottom)
            VStack {
                HStack {
                    VStack {
                        Text("😊 \(formatPeopleNumber(number: gameState.population.healthy))")
                        Text("🦠 \(formatPeopleNumber(number: gameState.population.infected))")
                        Text("💚 \(formatPeopleNumber(number: gameState.population.healed))")
                        Text("💀 \(formatPeopleNumber(number: gameState.population.dead))")
                    }
                    Spacer()
                    Text("💵 \(gameState.money) €")
                    Spacer()
                    Text(formatMood(mood: gameState.mood))
                    Spacer()
                    Text("🗓 \(formatDate(date: gameState.time))")
                }.padding().background(Color(UIColor(named: "StatsBackgroundColor")!))
                CustomScrollView(scrollToEnd: true) {
                    ForEach(0..<self.history.states.count) { i in
                        HistoryElementView(state: self.history.states[i], timerHelper: self.timerHelper, historyIndex: i).environmentObject(self.gameState).environmentObject(self.history)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let timerHelper = TimerHelper()
        let gameState = GameState()
        timerHelper.startTimer(gameState: gameState)
        return ContentView(history: History(), gameState: gameState, timerHelper: timerHelper)
    }
}

struct CustomScrollView<Content>: View where Content: View {
    var axes: Axis.Set = .vertical
    var reversed: Bool = false
    var scrollToEnd: Bool = false
    var content: () -> Content

    @State private var contentHeight: CGFloat = .zero
    @State private var contentOffset: CGFloat = .zero
    @State private var scrollOffset: CGFloat = .zero

    var body: some View {
        GeometryReader { geometry in
            if self.axes == .vertical {
                self.vertical(geometry: geometry)
            } else {
                // implement same for horizontal orientation
            }
        }
        .clipped()
    }

    private func vertical(geometry: GeometryProxy) -> some View {
        VStack {
            content()
        }
        .modifier(ViewHeightKey())
        .onPreferenceChange(ViewHeightKey.self) {
            self.updateHeight(with: $0, outerHeight: geometry.size.height)
        }
        .frame(height: geometry.size.height, alignment: (reversed ? .bottom : .top))
        .offset(y: contentOffset + scrollOffset)
        .animation(.easeInOut)
        .gesture(DragGesture()
        .onChanged { self.onDragChanged($0) }
        .onEnded { self.onDragEnded($0, outerHeight: geometry.size.height) }
        )
    }

    private func onDragChanged(_ value: DragGesture.Value) {
        self.scrollOffset = value.location.y - value.startLocation.y
    }

    private func onDragEnded(_ value: DragGesture.Value, outerHeight: CGFloat) {
        let scrollOffset = value.predictedEndLocation.y - value.startLocation.y

        self.updateOffset(with: scrollOffset, outerHeight: outerHeight)
        self.scrollOffset = 0
    }

    private func updateHeight(with height: CGFloat, outerHeight: CGFloat) {
        let delta = self.contentHeight - height
        self.contentHeight = height
        if scrollToEnd {
            self.contentOffset = self.reversed ? height - outerHeight - delta : outerHeight - height
        }
        if abs(self.contentOffset) > .zero {
            self.updateOffset(with: delta, outerHeight: outerHeight)
        }
    }

    private func updateOffset(with delta: CGFloat, outerHeight: CGFloat) {
        let topLimit = self.contentHeight - outerHeight

        if topLimit < .zero {
            self.contentOffset = .zero
        } else {
            var proposedOffset = self.contentOffset + delta
            if (self.reversed ? proposedOffset : -proposedOffset) < .zero {
                proposedOffset = 0
            } else if (self.reversed ? proposedOffset : -proposedOffset) > topLimit {
                proposedOffset = (self.reversed ? topLimit : -topLimit)
            }
            self.contentOffset = proposedOffset
        }
    }
}

struct ViewHeightKey: PreferenceKey {
    static var defaultValue: CGFloat { 0 }
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value = value + nextValue()
    }
}

extension ViewHeightKey: ViewModifier {
    func body(content: Content) -> some View {
        return content.background(GeometryReader { proxy in
            Color.clear.preference(key: Self.self, value: proxy.size.height)
        })
    }
}
