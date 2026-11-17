# Demo Project

A simple Java 21 Maven project.

## Prerequisites

- **Java 21** (LTS) - Automatically downloaded by Maven wrapper
- **Git** - To clone the repository

**Note:** Maven is NOT required! The Maven Wrapper (`mvnw`) is included and will automatically download the correct Maven version.

## Getting Started

### Clone the Repository
```bash
git clone <repository-url>
cd startercode
```

### Build the Project
```bash
./mvnw clean compile
```

### Run Tests
```bash
./mvnw test
```

### Package JAR
```bash
./mvnw package
```

## Maven Wrapper

This project uses the **Maven Wrapper** for reproducibility and consistency across all machines.

- **On macOS/Linux:** Use `./mvnw` command
- **On Windows:** Use `mvnw.cmd` command

The first time you run a command, Maven 3.9.5 will be automatically downloaded and cached locally. All subsequent builds will use this cached version, ensuring everyone uses the same Maven version.

## Why Maven Wrapper?

✅ **Reproducible Builds** - Everyone uses Maven 3.9.5  
✅ **No Installation Required** - Developers don't need Maven pre-installed  
✅ **Consistent Across Machines** - Mac, Windows, Linux all work identically  
✅ **Version Locked** - No surprises from different Maven versions  

## Java Version

This project is configured for **Java 21 LTS**. If you don't have Java 21 installed, download it from:
- [Eclipse Adoptium](https://adoptium.net/) (Recommended)
- [Oracle JDK](https://www.oracle.com/java/technologies/downloads/)

## Project Structure

```
startercode/
├── pom.xml              # Maven configuration (Java 21, JUnit 4.13.2)
├── mvnw                 # Maven Wrapper (macOS/Linux)
├── mvnw.cmd             # Maven Wrapper (Windows)
├── .mvn/wrapper/        # Maven Wrapper files
└── src/
    ├── main/java/       # Source code
    └── test/java/       # Test code
```
