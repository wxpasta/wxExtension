//
//  BJNetworkTool+Download.swift
//  vshiMessge
//
//  Created by 巴糖 on 2017/7/31.
//  Copyright © 2017年 巴糖. All rights reserved.
//

import Foundation
import Alamofire



extension BJNetworkTool{

    
    /// 未完成
    class  func downloadFile(urlString: String, fileName: String) {
        
        let destination: DownloadRequest.DownloadFileDestination = { _, _ in
            let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
            let fileURL = documentsURL.appendingPathComponent(fileName)
            return (fileURL, [.removePreviousFile, .createIntermediateDirectories])
        }
        
        Alamofire.download(urlString, to: destination)
            .downloadProgress { progress in
                print("Download Progress: \(progress.fractionCompleted)")
            }
            .response { response in
                print(response)
                
                if response.error == nil{
                    
                }
        }
        
    }
    
    

    


}
