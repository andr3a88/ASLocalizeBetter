import Danger
let danger = Danger()

// Add a CHANGELOG entry for app changes
let hasChangelog = danger.git.modifiedFiles.contains("changelog.md")
let isTrivial = (danger.github.pullRequest.body + danger.github.pullRequest.title).contains("#trivial")

if (!hasChangelog && !isTrivial) {
    warn("Please add a changelog entry for your changes.")
}

let editedFiles = danger.git.modifiedFiles + danger.git.createdFiles
message("These files have changed: \(editedFiles.joined())")