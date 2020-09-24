
import SwiftUI

struct DropDownButton: View {
    var body: some View {
        VStack {
            HStack {
                Text(DropDownButtonConstants.titleView)
                    .font(.system(size: DropDownButtonConstants.titleViewFontSize, weight: .semibold, design: .rounded))
                Spacer()
            }
            .padding(.vertical, 16)
            Button(action: {}) {
                HStack{
                    Text(DropDownButtonConstants.titleButton)
                        .font(.system(size: DropDownButtonConstants.titleButtonFontSize, weight: .semibold, design: .rounded))
                    Spacer()
                    Image(systemName: DropDownButtonConstants.imageSystemName)
                        .font(.system(size: DropDownButtonConstants.imageSystemFontSize, weight: .medium))
                }
            }
            .buttonStyle(PrimaryButtonStyle(fillColor: .primaryButton))
        }.padding(20)
    }
}

struct DropDownButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            DropDownButton()
        }.environment(\.colorScheme, .light)
        NavigationView{
            DropDownButton()
        }.environment(\.colorScheme, .dark)
    }
}
