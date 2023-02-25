//
//  ContentView.swift
//  Moleculahana
//
//  Created by Ongar.dev on 25/02/2023.
//

import SwiftUI
import WebKit

struct ContentView: View {
    var body: some View {
        HStack {
            Spacer()
            WebView(urlString: "https://biochem.kz/moleculahana/index.html")
            Spacer()
        }
        .padding()
    }
}

struct WebView: UIViewRepresentable {
    var urlString: String
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.load(URLRequest(url: URL(string: urlString)!))
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.load(URLRequest(url: URL(string: urlString)!))
    }
}

extension UIDevice {
    static var isPad: Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPad Pro (9.7-inch)"))
            .previewDisplayName("iPad Pro (9.7-inch)")
    }
}
