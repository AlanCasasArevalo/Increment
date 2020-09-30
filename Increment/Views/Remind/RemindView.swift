
import SwiftUI

struct RemindView: View {
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
//                DropDownButton()
                Spacer()
                Button(action: {
                    
                }) {
                    Text(RemindConstants.createTextButton)
                        .font(.system(size: RemindConstants.buttonsTitleSize, weight: .medium, design: .rounded))
                        .foregroundColor(.primary)
                }
                .padding(.bottom, 16)
                Button(action: {
                    
                }) {
                    Text(RemindConstants.skipTextButton)
                        .font(.system(size: RemindConstants.buttonsTitleSize, weight: .medium, design: .rounded))
                        .foregroundColor(.primary)
                }
            }
        }
        .navigationBarTitle(RemindConstants.remindNavigationBarTitle)
        .padding(.bottom, CommonsConstants.paddingBottomViews)
    }
}

struct RemindView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            RemindView()
        }
    }
}
