//
//  ViewController.swift
//  DISYS_HARI
//
//  Created by Hariharasudhan J on 20/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        postURL()
        
    }
    func postURL(){
        var urlBuilder = URLComponents(string: Configuration.shared.hostURL() + Configuration.URLPaths.towhomitmayconcern)
            urlBuilder?.queryItems = [
                URLQueryItem(name: "local", value: "en")
            ]
        guard let url = urlBuilder?.url else { return }
        var request = URLRequest(url: url)
      //set httpHeaders
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Content-Type")
        request.setValue("application/json; charset=utf-8", forHTTPHeaderField: "Accept")
        request.setValue("mobile_dev", forHTTPHeaderField: "consumer-key")
        request.setValue("20891a1b4504ddc33d42501f9c8d2215fbe85008", forHTTPHeaderField: "consumer-secret")
        request.httpMethod = "POST"

        let dictionary = Configuration.params.parameterDictionary
        request.httpBody = try! JSONEncoder().encode(dictionary)

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
         guard let data = data, error == nil else {
                print(error ?? "Unknown error")                                 // handle network error
                return
            }
        }
        task.resume()
    }


}

