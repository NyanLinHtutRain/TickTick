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
