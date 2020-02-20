import SwiftUI

struct ContentView: View {
    
    @State var alertIsVisible: Bool = false
    @State var sliderValue: Double = 50.0
    @State var target:Int = Int.random(in: 1...100)
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Put the Bullseye as close as you can to:")
                Text("\(self.target)")
            }
            Spacer()
            HStack{
                Text("1")
                Slider(value: self.$sliderValue, in:1...100)
                Text("100")
            }
            Button(action: {
                print("Button Press!")
                self.alertIsVisible = true
            }) {
                Text("Hit me")
            }
            .alert(isPresented: $alertIsVisible){ ()-> Alert in
                return Alert(title: Text("Hello there!"), message: Text("The slider's value is \(sliderValueRounded()).\n" +
                "scored \(self.pointsForCurrentRound()) points this round."
                ), dismissButton: .default(Text("Awesome!")))
                                               }
            Spacer()
            HStack{
                Button(action:{
                print("press Start Over!")
                }){
                    Text("Start Over")
                }
                Spacer()
                Text("Score:")
                Text("999999")
                Spacer()
                Text("Round:")
                Text("999")
                Spacer()
                Button(action:{
                    print("press Info")
                    }){ Text("Info") }
                    }
            .padding(.bottom,20)
            }
}
    func sliderValueRounded()->Int{
        Int(self.sliderValue.rounded())
    }
    func pointsForCurrentRound()->Int{
        100 - abs(self.target - sliderValueRounded())
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 896, height: 414 ))
    }
}

