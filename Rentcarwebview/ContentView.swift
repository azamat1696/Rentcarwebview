//
//  ContentView.swift
//  Rentcarwebview
//
//  Created by Admin on 16.10.2022.
//

import SwiftUI
import WebKit

struct ContentView: View {
    private let urlString = "https://www.happywayscar.com/";
    var body: some View {
        VStack {
            WebView(url: URL(string: urlString)!).edgesIgnoringSafeArea(.all)
        }
        
    }
}
struct WebView: UIViewRepresentable{
    var url: URL
     func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
        uiView.allowsBackForwardNavigationGestures=true
        uiView.allowsLinkPreview = true
        uiView.configuration.defaultWebpagePreferences.allowsContentJavaScript = true

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
