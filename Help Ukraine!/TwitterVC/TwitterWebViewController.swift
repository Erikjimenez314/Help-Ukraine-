//
//  TwitterWebViewController.swift
//  Help Ukraine!
//
//  Created by Erik Jimenez on 4/3/22.
//

import UIKit
import WebKit

class TwitterWebViewController: UIViewController, WKNavigationDelegate {
    
    // View and TableView Controller Methods
    
//    override func viewDidLoad() {
//           super.viewDidLoad()
//       }
    // Mark: - Outlets
    
    @IBOutlet weak var twitterWebView: WKWebView!
    
    // Mark: - Actions
    
    // Mark: - Properties
    
   var webContent = """
<meta name='viewport' content='initial-scale=1.0'/>
<a class="twitter-timeline" href="https://twitter.com/HalloweenAddict?ref_src=twsrc%5Etfw">Tweets by HalloweenAddict</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
"""

    
   public override func viewDidLoad() {
        super.viewDidLoad()
       twitterWebView.navigationDelegate = self
        twitterWebView.loadHTMLString(webContent, baseURL: nil)
       
       
    }
    
   private func twitterWebView(_ twitterWebView: WKWebView, decidePolicyFor navigationAction: WKNavigationAction, decisionHandler: @escaping (WKNavigationActionPolicy) -> Void) {
        
        if navigationAction.navigationType == .linkActivated {
            if let url = navigationAction.request.url,
               UIApplication.shared.canOpenURL(url) {
                UIApplication.shared.open(url)
                print(url)
                print("Redirected To Browser, No Need To Open Locally!")
                decisionHandler(.cancel)
        } else {
            print("Open It Locally")
            decisionHandler(.allow)
        }
    } else {
        print("This Is Not A User Click!")
        decisionHandler(.allow)
    }
}
    
    // Mark: - Lifecycles
    
    
    // Mark: - Extensions
    


}

