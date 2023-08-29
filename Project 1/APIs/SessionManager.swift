//
//  SessionManager.swift
//  Project 1
//
//  Created by Badal  Aryal on 18/08/2023.
//

import Foundation





struct SessionManager{
    
    let sessionURL = "https://qa-api.purenroll.com/api/v2/doc/list"
    
    func fetchData() {
            let urlString = "\(sessionURL)"
        performRequest( sessionURL: sessionURL)
        }
   
    
    var data = [DataModel]()
    
   
    func performRequest( sessionURL: String){
        // 1. create a URL
        if let url = URL(string: sessionURL){
            
            // Create url request
            var request = URLRequest(url: url)
            
            let token = "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyMSIsImp0aSI6IjVlNDliNzdhMzM3M2M3MGU5NDAwOTlmMTY5YWI5MjQ4ZTdiZmQ5YjdkYTZlOWZmMGRmZmFjNTVkMGNlZTBlOTVmYzhjZGNlNzI5YjU4NjQ4IiwiaWF0IjoxNjg4OTc2MDExLCJuYmYiOjE2ODg5NzYwMTEsImV4cCI6MTcyMDU5ODQxMSwic3ViIjoiMjU5MiIsInNjb3BlcyI6W119.FVeH8Qd-bNWjnLv_Yz9nWASS09bcuoF2cJk0WtGaLbzjc4PGS-jZsXSzwhaLFRwNmrpZDUNyLJPmWOu1NDhAAVTdarTbFes4hW7kiONqGNiWvYmMhwSZSy6eB_JHrDjXOvTDfq4Uls5-Oj6zf5I2D3NHxAaxm7G9CuhC06V-DoEBckB92kA6R5NSU00Gwf-Eu5b53sycxxpP5jnPRvxDAAC409KEiJN4U0SscBCl-zU5HK8UvE_QYR0YRDKW-oSWBdzwdwqNtvT83wlq0ZNo5RpjAOrU7g--Dm0mk0OBtkpFGvJq-qqOuAVRwpqrqXUO8P_n4uXCSanqx4WjTC6zjdlxR6F4dvqosarvuc2ua1n7pXAKq7ft_3Kdqj4VKKivIOhagMAlbFiP8a-87cYsk1VDjIrrjp9zltAh-DisFddX6ZzEQomFU2_j6uLQjzXqPxz--yixLfr-moSurpnbYX2HRQ7OQWf96uYwlEsQKNBKhqsKX97XCC59ZadFP5nMky2v5Umoe5QpgZ2pARhDgZlbb33zilR1rl-QL9Iro0O_z3hrFLwt98_2N-DumSIMyeGnKAzc3p3Bhf1_17Bv-QPdoLXaAcGn6Xqbi5jSZOe1PpCsbXO4BKFnf_a99wMBfSkNIPnBPKMqzS1rXlr3aDdYselBausCA5dxceQJjoA"
            let key = "Authorization"
            
            // add header to request
            request.addValue(token, forHTTPHeaderField: key)
            
            //2. create a url session
            let session = URLSession(configuration: .default)
            
            // 3. give session a task
            let task = session.dataTask(with: request) { (data,response,error) in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data{
                    let dataString = String(data: safeData, encoding: .utf8)
                    print(dataString!)
                }
                
                
                
            }
            // 4.start the task
            task.resume()
            
            
        }
    }
    
    func parseJSON (_ dataModel: Data) -> DataModel?{
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode(DataModel.self, from: dataModel)
            let id = decodedData.doc_id
            let link = decodedData.doc_url
            let date = decodedData.doc_date
            let status = decodedData.doc_status
            let filename = decodedData.file_title
            let uploadBy = decodedData.uploaded_by
            let fileNote = decodedData.doc_notes
            let fileType = decodedData.doc_type
            let data = DataModel(doc_id: id,doc_date: date, doc_status: status,doc_type: fileType, file_title: filename,doc_notes : fileNote, uploaded_by: uploadBy)
            return data
        } catch{
            return nil
        }
    }
    
}
