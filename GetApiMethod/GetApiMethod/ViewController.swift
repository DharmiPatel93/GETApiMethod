//
//  ViewController.swift
//  GetApiMethod
//
//  Created by Dharmi Patel on 17/08/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
}
    @IBAction func BtnClick(_ sender: Any) {
        
        
        
        
        getApiData()
        
    }
        
        func getApiData(){
            let apiName = "https://reqres.in/api/users?page=2"
            guard let url = URL(string: apiName) else { return }
            URLSession.shared.dataTask(with: url) { resData, urlRes, error in
                print("Response Error", error)
                
                do{
                    guard let data = resData as? Data else { return }
                    
                    let jsonObject = try JSONSerialization.jsonObject(with: data)
                
                
                    print("Json response", jsonObject)
                }catch(let error){
                    print(error)
                }
            }.resume()
            
        }

    
    
}

