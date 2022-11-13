//
//  ContentView.swift

import SwiftUI

struct ContentView: View {
    
    @Namespace var animation
    @State var detailShow: Bool = false
    var body: some View {
        VStack {
            if detailShow {
                DetailView(animation: animation, detailShow: $detailShow)
            } else {
                //ChartView()
                GraphDemo()
                    .matchedGeometryEffect(id: "image", in: animation)
                    .frame(width: 380, height: 280)
                ButtonStack()
            }
        }
        .onTapGesture{
            withAnimation {
                detailShow = true
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
