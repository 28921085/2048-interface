import SwiftUI
let color=[
    Color(.sRGB,red:182/255,green: 182/255,blue: 182/255),
    Color(.sRGB,red:239/255,green: 230/255,blue: 221/255),
    Color(.sRGB,red:239/255,green: 227/255,blue: 205/255),
    Color(.sRGB,red:247/255,green: 178/255,blue: 123/255),
    Color(.sRGB,red:238/255,green: 142/255,blue: 82/255),
    Color(.sRGB,red:247/255,green: 126/255,blue: 99/255),
    Color(.sRGB,red:238/255,green: 89/255,blue: 56/255),
    Color(.sRGB,red:247/255,green: 220/255,blue: 107/255),
    Color(.sRGB,red:133/255,green: 133/255,blue: 133/255),//background
    Color(.sRGB,red:233/255,green: 191/255,blue: 45/255),
    Color(.sRGB,red:240/255,green: 198/255,blue: 0),
    Color(.sRGB,red:99/255,green: 73/255,blue: 74/255),//num  scoreblock
    Color(.sRGB,red:240/255,green: 194/255,blue: 57/255)//title
]
let sz:[CGFloat]=[0,30,30,30,30,30,30,25,25,25,20]
struct block:View{
    var val:Int
    var width:CGFloat
    var height:CGFloat
    var radius:CGFloat
    var body: some View{
        RoundedRectangle(cornerRadius: radius)
            .fill(color[val])
            .frame(width: width, height: height)
    }
}
