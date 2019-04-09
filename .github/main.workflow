workflow "Check for alex in Pull Requests" {
  on = "pull_request"
  resolves = "ALEX"
}

action "ALEX" {
  uses = "bdougie/linter-alex@master"
  secrets = ["GITHUB_TOKEN"]
}
