//
//  CellData.swift
//  Project 1
//
//  Created by Badal  Aryal on 17/08/2023.
//

import Foundation

struct CellModel{
    var status: String?
    var filename: String?
    var uploadBy: String?
    var date: String?
    var fileNote: String?
    var attachedName: String?
    var attachedType: String?
    var link: String?
    var attachedFileImage: String?
    
    static func fetchData() -> [CellModel]
    {
        var datas = [CellModel]()
        
        let one = CellModel(status: "Enrollment",filename: "Data", uploadBy: "Ram", date: "01-01-2019 | 06:34:42",fileNote: "Insurance", attachedName: " Test1 xlsx", attachedType: "PDF", link: "https://vasundhara.io/blogs/navigate-from-one-view-controller-to-another-using-swift",
        attachedFileImage: "files.png")
        
        let two = CellModel(status: "Commision",filename: "Data", uploadBy: "Ram", date: "01-01-2019 | 06:34:42",fileNote: "Insurance", attachedName: " Test2 xlsx", attachedType: "PDF", link: "https://vasundhara.io/blogs/navigate-from-one-view-controller-to-another-using-swift",
        attachedFileImage: "files.png")
        
        let three = CellModel(status: "Cenus File",filename: "Data", uploadBy: "Ram", date: "01-01-2019 | 06:34:42",fileNote: "Insurance", attachedName: " Test3 xlsx", attachedType: "PDF", link: "https://vasundhara.io/blogs/navigate-from-one-view-controller-to-another-using-swift",
        attachedFileImage: "files.png")
        
        let four = CellModel(status: "Enrollment",filename: "Data", uploadBy: "Ram", date: "01-01-2019 | 06:34:42",fileNote: "Insurance", attachedName: " Test4 xlsx", attachedType: "PDF", link: "https://vasundhara.io/blogs/navigate-from-one-view-controller-to-another-using-swift",
        attachedFileImage: "files.png")
        
        let five = CellModel(status: "Commision",filename: "Data", uploadBy: "Ram", date: "01-01-2019 | 06:34:42",fileNote: "Insurance", attachedName: " Test5 xlsx", attachedType: "PDF", link: "https://vasundhara.io/blogs/navigate-from-one-view-controller-to-another-using-swift",
        attachedFileImage: "files.png")
        
        let six = CellModel(status: "Cenus File",filename: "Data", uploadBy: "Ram", date: "01-01-2019 | 06:34:42",fileNote: "Insurance", attachedName: " Test6 xlsx", attachedType: "PDF", link: "https://vasundhara.io/blogs/navigate-from-one-view-controller-to-another-using-swift",
        attachedFileImage: "files.png")
        
        
        datas.append(one)
        datas.append(two)
        datas.append(three)
        datas.append(five)
        datas.append(six)
        return datas
    }

    

}
