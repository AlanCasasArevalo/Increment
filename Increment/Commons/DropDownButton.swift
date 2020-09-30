
import SwiftUI

struct DropDownButton<T: DropDownButtonProtocol>: View {
    
    @Binding var viewModel: T
    
    var body: some View {
        VStack {
            HStack {
                Text(viewModel.headerTitle)
                    .font(.system(size: DropDownButtonConstants.titleViewFontSize, weight: .semibold, design: .rounded))
                Spacer()
            }
            .padding(.vertical, 16)
            Button(action: {
                viewModel.isSelected = true
            }) {
                HStack{
                    Text(viewModel.dropdownTitle)
                        .font(.system(size: DropDownButtonConstants.titleButtonFontSize, weight: .semibold, design: .rounded))
                    Spacer()
                    Image(systemName: DropDownButtonConstants.imageSystemName)
                        .font(.system(size: DropDownButtonConstants.imageSystemFontSize, weight: .medium))
                }
            }
            .buttonStyle(PrimaryButtonStyle(fillColor: .primaryButton))
        }.padding(16)
    }
}

