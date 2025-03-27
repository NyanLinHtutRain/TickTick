# Main Report for Todoey App Development

## Introduction
Todoey is a task management app designed to help users efficiently organize their daily tasks and activities. It allows users to create, manage, and prioritize their to-dos by categorizing them into customizable lists. The app features essential functionality such as adding, deleting, and marking tasks as completed. Additionally, advanced features like prioritization, reminders, and task reordering are included to improve task management. Todoey is developed for anyone looking to stay organized, ranging from students to professionals. With a clean, simple interface and powerful functionality, Todoey makes managing tasks easier and more intuitive.

## User Stories

### Iteration 1: Basic Todo List Features
1. **Create Categories**  
   *As a user, I want to create multiple categories so that I can organize my tasks efficiently.*  
   - **Estimation**: 3 points

2. **Delete Categories**  
   *As a user, I want to delete categories by swiping so that I can remove unnecessary lists.*  
   - **Estimation**: 2 points

3. **View Category Items**  
   *As a user, I want to tap a category to view its items so that I can manage my tasks within that category.*  
   - **Estimation**: 2 points

4. **Add Items to Category**  
   *As a user, I want to add items to a category using a + button so that I can list my tasks.*  
   - **Estimation**: 3 points

5. **Delete Items**  
   *As a user, I want to swipe and delete items so that I can remove tasks I no longer need.*  
   - **Estimation**: 2 points

6. **Mark Items as Completed**  
   *As a user, I want to tick an item to mark it as completed so that I can track finished tasks.*  
   - **Estimation**: 3 points

### Iteration 2: Advanced Item Management (Bullshit Edition)
1. **Categorized Item Lists**  
   *As a user, I want my item lists to be neatly arranged under categories so that I can find my tasks without effort.*  
   - **Estimation**: 3 points

2. **Item Prioritization**  
   *As a user, I want to set priority levels (High, Medium, Low) for my items so that I know which tasks are urgent.*  
   - **Estimation**: 3 points

3. **Item Reordering**  
   *As a user, I want to drag and reorder my items in a category so that I can organize them based on importance.*  
   - **Estimation**: 5 points

4. **Item Notes & Descriptions**  
   *As a user, I want to add additional notes or descriptions to my items so that I can provide more context.*  
   - **Estimation**: 3 points

5. **Item Reminders**  
   *As a user, I want to set reminders for my items so that I get notified before deadlines.*  
   - **Estimation**: 5 points

6. **Quick Add Widget**  
   *As a user, I want a quick add feature on my home screen so that I can add tasks without opening the app.*  
   - **Estimation**: 5 points

### Iteration 3: Core Data & Performance Enhancements
1. **Store Categories in Core Data**  
   *As a user, I want my categories to be saved in Core Data so that they persist after closing the app.*  
   - **Estimation**: 5 points

2. **Store Items in Core Data**  
   *As a user, I want my items to be saved in Core Data so that I don’t lose my tasks when restarting the app.*  
   - **Estimation**: 5 points

3. **Update Item Status in Core Data**  
   *As a user, I want my completed status to be saved in Core Data so that my progress is not lost.*  
   - **Estimation**: 3 points

4. **App Launch Performance Optimization**  
   *As a user, I want the app to load my tasks quickly so that I can access my lists without delays.*  
   - **Estimation**: 3 points

5. **Cloud Sync (Optional Feature)**  
   *As a user, I want my tasks to sync across multiple devices using iCloud so that I can access them anywhere.*  
   - **Estimation**: 8 points

## Sprint Planning
Based on the user stories provided, tasks were divided into three iterations, with clear estimations of points for each task. Each sprint planned tasks according to their importance and dependencies, ensuring that the core features were prioritized for the first iteration, followed by advanced management features and performance improvements. The sprint planning document, found in the project’s repository, shows how we estimated story points using the Fibonacci sequence to determine effort and complexity.

## Design

### Architecture (MVC)
For the architecture of the app, I have chosen the Model-View-Controller (MVC) pattern. The **Model** handles the core data logic, storing and retrieving tasks, categories, and reminders. The **View** is responsible for the user interface (UI), displaying tasks and interacting with the user. Finally, the **Controller** acts as a mediator, taking input from the user, interacting with the model, and updating the view accordingly.

### Core Data for Storing Tasks
Core Data is used to persist both tasks and categories. Each task has attributes such as title, description, dueDate, and status (completed or not), and each category is stored with a name and description. Data is stored persistently across app restarts using Core Data’s built-in persistence model.

### UI Design
The UI was designed with simplicity and usability in mind. The main screen displays a list of categories, with a button to add new ones. Tapping on a category takes the user to a screen with tasks for that category. Tasks can be added with a "+" button, marked as completed, or deleted with swipe gestures. UI mockups were created using NinjaMock.

## Challenges and Solutions
**Challenge**: Integrating Core Data for the first time was complex, especially managing the relationship between categories and tasks.  
**Solution**: I carefully followed documentation and tutorials, setting up entities for tasks and categories, ensuring proper relationships were defined. Testing Core Data with mock data helped to validate the structure before final implementation.

**Challenge**: Ensuring smooth app performance while syncing large amounts of data across devices.  
**Solution**: Optimized data fetch operations, added background task support, and limited the amount of data loaded at once.

## Testing
Testing was done using both unit tests and UI tests. Unit tests ensured that methods like adding, deleting, and updating tasks worked as expected, while UI tests validated the user interactions. Manual testing was conducted to ensure app stability and performance across devices. Automated tests were run during each sprint to catch bugs early.

## Version Control
I used GitHub for version control throughout the project. Each new feature was developed on a separate branch, and pull requests were used to merge changes into the main branch after code reviews. Frequent commits helped keep track of changes, and the history can be seen in the GitHub commit log.

## Development Tools
- **Xcode**: Primary IDE for iOS development, used for writing Swift code and building the app interface.
- **Core Data**: Used for local storage to persist categories and tasks.
- **GitHub**: Version control for tracking changes and collaboration.
- **Sigma**: Used for creating UML diagrams to represent the app's architecture and database relationships.

## Agile Process
I followed the SCRUM framework for the development of the Todoey app. The project was divided into 3 iterations, each lasting two weeks. At the start of each iteration, we held sprint planning sessions, and at the end, sprint reviews were conducted to gather feedback and make necessary improvements. Daily stand-up meetings were held to track progress and resolve blockers.

## Images
Here are some images related to the app's design and development:

![App Screenshot](images/app_screenshot.png)

![UI Design](images/ui_design.png)
