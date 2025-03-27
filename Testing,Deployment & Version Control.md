# Testing, Deployment & Version Control

## Testing Strategy

We used **unit testing and UI testing** to ensure app stability and correctness.

### **Unit Testing**
- Tests were written for core features like adding/deleting tasks.
- Ensured Core Data integration worked correctly.

### **UI Testing**
- Automated tests verified button interactions and swipe gestures.
- Manually tested on different iOS devices to ensure a consistent experience.

## Deployment Process

1. **App Store Submission:** Follows Apple's guidelines for App Store deployment.
2. **Beta Testing:** Using TestFlight for user feedback before the final release.
3. **Crash Analytics:** Integrated with Firebase for monitoring crashes.

## Feedback from Iterations

### **Iteration 1 Feedback**

   *Users appreciated the simplicity of the task creation process. They found it intuitive to add, delete, and mark tasks as completed.*  
   *How We Fixed It:*  
   This feedback confirmed that the basic features were well-received. We decided to continue with the same simple interface, ensuring that no unnecessary complexity was added.

### **Iteration 2 Feedback**

   *The addition of task prioritization (High, Medium, Low) was well-received. Users felt this feature helped them organize tasks more effectively.*  
   *How We Fixed It:*  
   The feature was expanded by introducing color-coded priorities, making the interface even more visually appealing and easier to manage.

   *Some users had difficulty navigating between different categories. They found the app navigation to be clunky when moving from category to category.*  
   *How We Fixed It:*  
   We restructured the navigation flow to make category switching more fluid. Implemented a bottom navigation bar for quicker access to different categories.

### **Iteration 3 Feedback**

   *Users loved the dark mode feature that was added. It allowed them to use the app in low-light conditions without straining their eyes.*  
   *How We Fixed It:*  
   Since the feature was highly praised, we continued to enhance it by adding a toggle option in the settings, allowing users to choose between dark mode and light mode.


   *Some users noticed that the app took longer to load on first launch, especially after a fresh installation.*  
   *How We Fixed It:*  
   We focused on optimizing the app's startup time by reducing the number of initial API calls and using lazy loading for data, ensuring the app launched faster.

## Version Control Strategy

- **GitHub Repository:** All development work is tracked in the repository.
- **Branching Strategy:**  
  - `main` branch: Stable production-ready version.
  - `feature` branches: Each new feature is developed separately before merging.
- **Commit History:** Detailed commit messages to track changes efficiently.

## GitHub Workflow

1. **Clone Repository:**  
   ```sh
   git clone https://github.com/NyanLinHtutRain/TickTick.git
