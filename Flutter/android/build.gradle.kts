buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        classpath("com.google.gms:google-services:4.4.2")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

val newBuildDir: Directory =
    rootProject.layout.buildDirectory
        .dir("../../build")
        .get()
rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}
subprojects {
    project.evaluationDependsOn(":app")
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}

// Patch legacy Flutter plugins that don't declare namespace (required by AGP 8+).
// telephony 0.2.0 (discontinued) hits this — its Android build.gradle has no namespace field.
// Must use gradle.projectsEvaluated (not subprojects.afterEvaluate) to avoid
// "Cannot run afterEvaluate when project is already evaluated" in newer Gradle.
gradle.projectsEvaluated {
    allprojects {
        val android = extensions.findByName("android")
        if (android is com.android.build.gradle.LibraryExtension && android.namespace == null) {
            android.namespace = group.toString().ifBlank {
                "com.plugin.${project.name.replace("-", "_").replace(".", "_")}"
            }
        }
    }
}
