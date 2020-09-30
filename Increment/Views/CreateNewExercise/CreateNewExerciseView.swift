
import SwiftUI

@available(iOS 14.0, *)
struct CreateNewExerciseView: View {
    @StateObject var viewModel = CreateNewExerciseViewModel()
    @State var isActive = false
    
    var dropdownList: some View {
        ForEach(viewModel.dropdowns.indices, id: \.self) { index in
            DropDownButton(viewModel: $viewModel.dropdowns[index])
        }
    }
    
    var body: some View {
        ScrollView {
            VStack {
                dropdownList
                Spacer()
                NavigationLink (
                    destination: RemindView(),
                    isActive: $isActive) {
                    Button(action: {
                        isActive = true
                    }) {
                        Text(CreateNewExerciseConstants.createNewExerciseButtonTitle)
                            .font(.system(size: CreateNewExerciseConstants.createNewExerciseButtonTitleSize, weight: .medium, design: .rounded))
                    }
                }
            }
            .navigationBarTitle(CreateNewExerciseConstants.createNewExerciseNavigationBarTitle)
            .navigationBarBackButtonHidden(true)
            .padding(.bottom, CommonsConstants.paddingBottomViews)
        }
    }
}

struct CreateNewExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            CreateNewExerciseView()
        } else {
            // Fallback on earlier versions
        }
    }
}
