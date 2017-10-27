import qbs
import qbs.File
import qbs.FileInfo

Project {
  id: main
  property string name: "ubash"
  property string version: "0.5.0"
  property string releaseType

  Application {
    Group {
      qbs.install: true
      qbs.installSourceBase: "./src"
      qbs.installPrefix: {
        targetPrefix = FileInfo.joinPaths(main.name, main.version)

        // making sure to never override a production release
        targetFullPath = FileInfo.joinPaths(qbs.installRoot, targetPrefix)
        if (main.releaseType == "production" && File.exists(targetFullPath)) {
          throw "Cannot override an existent production release: " + targetFullPath
        }

        return targetPrefix
      }

      files: [
        "src/**"
      ]
      excludeFiles: []
    }
  }
}
