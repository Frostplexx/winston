//
//  FAQPanel.swift
//  winston
//
//  Created by Daniel Inama on 15/08/23.
//

import SwiftUI

struct FAQPanel: View {
  var body: some View {

    VStack{
      List{
        QuestionAnswer(question: String(localized: "What does the Box Icon do?"), answer: String(localized: "Save posts in the Posts Box to be read later. These will live in Winston and wont be synced to Reddit."), systemImage: "shippingbox")
        QuestionAnswer(question: String(localized: "What's Winston Everywhere?"), answer: String(localized: "Winston Everywhere is a Safari extension, that autmatically redirects Reddit links to Winston."), systemImage: "safari")
        QuestionAnswer(question: String(localized: "Is Winston against Reddit's TOS?"), answer: String(localized: "Actually **not**, even though Reddit doesn't like it, accordingly to the TOS, the API limits are only applicable when there are profit involved. Winston is open source and free, and it works just like any bot in the internet: by allowing you to use your own API key the way you like it, the way it was supposed to be."), systemImage: "safari")
        QuestionAnswer(question: String(localized: "Will Winston ever be released in the App Store at some point?"), answer: String(localized: "Yes. Winston is planned to be released in the App Store soon, still allowing users to use their own API key."), systemImage: "safari")
        QuestionAnswer(question: String(localized: "What if Reddit takes Winston down?"), answer: String(localized: "Then we'll release another version which uses our own single API key (it won't require any of you to enter your own anymore) and allow you to recharge your account and use it however you like. That's what Reddit wants at the end, but our bet is that Reddit won't find a way to take Winston down because the previously mentioned similarity with a bot in the technical manners."), systemImage: "safari")
        QuestionAnswer(question: String(localized: "Who are you?"), answer: String(localized: "We're lo.cafe, a group of friends (Igor (me), Ernesto, Laís, Oeste (teenager cat) and Bidu(old cat)) that produces amazing software together. We made lo-rain, an app that makes it rain over your desktop on MacOS, we're making a game and many other crazy stuff. [Check our website!](https://lo.cafe)"), systemImage: "safari")
      }

    }
    .navigationBarTitle("Frequently Asked Questions", displayMode: .inline)
    
  }
}

struct QuestionAnswer: View {
  var question: String
  var answer: String
  var systemImage: String?
  var body: some View {
    VStack{
      HStack{
        if let systemImage {
          Image(systemName: systemImage)
        }
        Text(.init(question))
        Spacer()
      }
      .fontWeight(.bold)
      .font(.system(.headline))
      .padding(.bottom, 5)
      HStack{
        Text(.init(answer))
        Spacer()
      }
    }
  }
}
