//
//  ViewController.swift
//  LAB APIs
//
//  Created by لمى فرحان on 09/04/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getData()
    }
    
    
    
    func getData(){
        var helloURL = URLComponents()
        helloURL.scheme = "https"
        helloURL.host = "api.dictionaryapi.dev"
        helloURL.path = "/api/v2/entries/en/hello"
        
        let HelloRequestURL = helloURL.url!
        let HelloRequest = URLRequest(url: HelloRequestURL)
        
        let SessionConfig = URLSessionConfiguration.default
        SessionConfig.allowsCellularAccess = false
        SessionConfig.httpShouldSetCookies = false
        let HelloSession = URLSession(configuration: SessionConfig)
        
        let fetchDataTask = HelloSession.dataTask(with: HelloRequest) {
            (data: Data!, response: URLResponse?, err: Error?) in
            print(String(data: data, encoding: .utf8))
        }
        fetchDataTask.resume()

    }
}
        
        //    https://api.dictionaryapi.dev/api/v2/entries/en/hello
        
        
//        urlComponents.scheme = "https"
//        urlComponents.host = "api.dictionaryapi.dev"
//        urlComponents.path = "/api/v2/entries/en/hello"
//        var urlRequest = URLRequest(url: urlComponents.url!)
//        let urlSession = URLSession.shared
//        let task = urlSession.dataTask(with: ) { (data: Data, response: URLResponse?, error: Error?) in
//            do{
//                let
//                let
//                print()
//
//            }catch {
//                print()
//            }
//
//        }.resume()()
//


