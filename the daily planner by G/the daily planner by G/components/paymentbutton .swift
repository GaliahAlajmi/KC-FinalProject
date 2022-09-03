//
//  paymentbutton .swift
//  the daily planner by G
//
//  Created by GALIAH ALAJMI on 07/02/1444 AH.
//

import SwiftUI
import PassKit
struct paymentbutton_: View {
    var action: () -> Void
    var body: some View {
       representable(action: action)
            .frame(minWidth: 100, maxWidth: 400)
            .frame(height:45)
            .frame(maxWidth:.infinity)
    }
}

struct paymentbutton__Previews: PreviewProvider {
    static var previews: some View {
        paymentbutton_(action: {})
    }
}



extension paymentbutton_ {
    struct representable: UIViewRepresentable{
        var action: () -> Void
        func makeCoordinator() -> Coordinator {
            Coordinator(action: action )
        }
        func makeUIView(context: Context) -> some UIView {
            context.coordinator.button
        }
        func updateUIView(_ uiView: UIViewType, context: Context) {
            context.coordinator.action = action
        }
    }
    class coordinator: NSObject {
        var action: () -> Void
        var button = PKPaymentButton(paymentButtonType: .checkout, paymentButtonStyle: .automatic)
        
        init(action: @escaping () -> Void){
            self.action = action
            super.init()
            
            
            button.addTarget(Self, action: #selector(callback(_:)), for: .touchUpInside)
        }
        
        @objc
        func callback( sender: Any){
            action()
        }
    }
}
