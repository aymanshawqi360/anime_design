# Mini (UI only) App — Clean Architecture

## 📌 Overview
This is a **UI-only Flutter mini app** built to replicate the provided design **pixel-perfect** while following **Clean Architecture** principles.  
Even though the current scope is UI-only, the project is structured to be easily extendable with real data sources

---

## 🏗 Architecture Decisions
The app follows **Clean Architecture** to separate concerns and improve maintainability:

### 1. **Presentation Layer**
- Contains all **UI elements**: screens, widgets, and navigation.  
- State management handled through **Provider / Riverpod / Bloc** (configurable).  
- Only presentation logic (UI state) lives here in `viewmodels` or `controllers`.

### 2. **Domain Layer** (simplified for UI-only)
- Holds **Entities** and **UseCases**.  
- For this project, these are either **interfaces** or **mock implementations**.  
- The goal: keep the domain independent from both UI and data sources.

### 3. **Data Layer** (mock data for now)
- Defines **Repositories** and **DataSources**.  
- In this version, it uses **fake/mock data** to feed the UI.  
- Can be replaced later with a real API or Firebase without touching Presentation.



<img width="430" height="932" alt="Screenshot_20250925-011140" src="https://github.com/user-attachments/assets/796a7cc4-82b3-4961-9be5-c2ed6721979d" />
