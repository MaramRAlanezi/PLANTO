struct SetReminder: View {
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var viewModel: SetReminderViewModel
    
    var body: some View {
        NavigationView {
            Form {
                // (Your existing form fields here)
            }
            .navigationBarTitle("Set Reminder", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Cancel") {
                    presentationMode.wrappedValue.dismiss()
                },
                trailing: Button("Save") {
                    viewModel.saveReminder()
                    presentationMode.wrappedValue.dismiss()
                }
                .disabled(viewModel.plantName.isEmpty)
                .opacity(viewModel.plantName.isEmpty ? 0.5 : 1.0)
            )
        }
    }
}