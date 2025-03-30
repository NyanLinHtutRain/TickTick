# Testing, Deployment & Version Control

# Testing

## User Stories and Test Cases  

In the Todoey project, we focused on selecting user stories that were essential to the core functionality of the app. We designed test cases to ensure that these features work as expected and to identify any potential issues. Below are the selected user stories and their corresponding test cases.  

### User Story 1: As a user, I want to add a new task so that I can keep track of my to-do items.  
**Test Cases:**  
1. **Add a task successfully**  
   - **Given:** The app is open and the user is on the task list screen.  
   - **When:** The user enters a task name and taps the "Add" button.  
   - **Then:** The task should appear in the task list.  

2. **Add a task without a name**  
   - **Given:** The app is open and the user is on the task list screen.  
   - **When:** The user taps the "Add" button without entering a name.  
   - **Then:** An error message should be displayed, and the task should not be added.  

3. **Add a duplicate task**  
   - **Given:** The user adds a task with the name "Buy groceries".  
   - **When:** The user tries to add another task with the same name.  
   - **Then:** The app should prompt the user to enter a unique task name.  

---

### User Story 2: As a user, I want to mark tasks as completed so that I can track my progress.  
**Test Cases:**  
1. **Mark a single task as completed**  
   - **Given:** A task exists in the task list.  
   - **When:** The user checks the checkbox next to the task.  
   - **Then:** The task should appear as completed (e.g., strikethrough text).  

2. **Mark multiple tasks as completed**  
   - **Given:** Several tasks exist in the task list.  
   - **When:** The user checks the checkbox next to multiple tasks.  
   - **Then:** All selected tasks should appear as completed.  

3. **Unmark a completed task**  
   - **Given:** A task is marked as completed.  
   - **When:** The user unchecks the checkbox.  
   - **Then:** The task should return to its normal state.  

---

### User Story 3: As a user, I want to delete completed tasks so that I can keep my list organized.  
**Test Cases:**  
1. **Delete a single completed task**  
   - **Given:** A completed task exists in the list.  
   - **When:** The user selects the delete option.  
   - **Then:** The task should be removed from the list.  

2. **Delete multiple completed tasks**  
   - **Given:** Several tasks are marked as completed.  
   - **When:** The user selects the delete option for multiple tasks.  
   - **Then:** All selected tasks should be removed from the list.  

3. **Attempt to delete an incomplete task**  
   - **Given:** A task is marked as incomplete.  
   - **When:** The user tries to delete it.  
   - **Then:** A warning should appear, asking for confirmation.  

---

### User Story 4: As a user, I want to categorize tasks so that I can organize them better.  
**Test Cases:**  
1. **Create a new category**  
   - **Given:** The user is on the category screen.  
   - **When:** The user enters a category name and taps "Create".  
   - **Then:** The category should appear in the list.  

2. **Add a task to a specific category**  
   - **Given:** A category exists.  
   - **When:** The user adds a task within that category.  
   - **Then:** The task should be saved under the selected category.  

3. **Remove a category**  
   - **Given:** A category exists with tasks in it.  
   - **When:** The user deletes the category.  
   - **Then:** The category and its associated tasks should be removed.  

---

### User Story 5: As a user, I want to set reminders for tasks so that I can be notified on time.  
**Test Cases:**  
1. **Set a reminder for a task**  
   - **Given:** The user is on the task details screen.  
   - **When:** The user sets a reminder for a specific time.  
   - **Then:** A notification should appear when the time arrives.  

2. **Edit a task reminder**  
   - **Given:** A reminder is already set.  
   - **When:** The user changes the reminder time.  
   - **Then:** The notification should reflect the updated time.  

3. **Remove a task reminder**  
   - **Given:** A task has a reminder set.  
   - **When:** The user disables the reminder.  
   - **Then:** No notification should appear for the task.  

---

## Automated Testing  

We have implemented a total of 15 automated tests using Xcode’s XCTest framework. These tests focus on key functionalities, including:  
- Adding tasks  
- Marking tasks as completed  
- Deleting completed tasks  
- Creating and managing categories  
- Setting and editing reminders  

### Test Automation Summary  
1. Unit tests are written for critical features to ensure data integrity and functionality.  
2. UI tests are conducted to validate the interaction with user interfaces.  
3. Tests are triggered automatically during each iteration to verify that recent changes do not break existing features.  
4. Continuous integration (CI) is set up on GitHub to ensure tests are executed on every push to the main branch.  

### Addressing Testing Challenges  
Initially, integrating automated tests with Core Data posed some difficulties due to data persistence. To overcome this, we used mock data in a test environment to isolate and verify the data functions without affecting the main database.  

Additionally, testing reminders required simulated time changes. We handled this by using dependency injection to manage date and time inputs during the testing process.  

By implementing comprehensive test cases and automated tests, we have ensured that the Todoey app is reliable, efficient, and ready for deployment.  


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
