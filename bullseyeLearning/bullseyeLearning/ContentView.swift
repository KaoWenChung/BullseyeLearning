import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var whosThereIsVisible: Bool = false
    
    
    var body: some View {
        VStack {
            HStack {
                Text("Put the Bullseye as close as you can to:")
                Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
            }
//            HStack{
//                Text("1")
////                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
//                Text("100")
//            }
//            Button(action: {
//                print("Button Press!")
//                self.alertIsVisible = true
//            }) {
//                Text("Hit me")
//            }
//            HStack{
//                Button(action:{
////                print("press Start Over!")
//                }){
//                    Text("Start over")
//                }
//                Text("Score:")
//                Text("999999")
//                Text("Round:")
//                Text("999")
//                Button(action:{
////                    print("press Info")
//                })
        }
//            .alert(isPresented: $alertIsVisible){ ()->
//             Alert in
//                return Alert(title: Text("Hello there!"), message: Text("This is my first pop-up."), dismissButton: .default(Text("Awesome!")))
//            }
            
            //Score row
//            Button(action: {
//                self.whosThereIsVisible = true
//            }) {
//                Text(/*@START_MENU_TOKEN@*/"Knock, knock"/*@END_MENU_TOKEN@*/)
//            }
//            .alert(isPresented: $whosThereIsVisible){ () ->
//            Alert in
//                return Alert(title: Text("Who is there?"), message: Text("Little old boy."), dismissButton: .default(Text("Little old boy who?")))
////            }
//        }
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414 ))
    }
}
}
