workflow "Check for alex in pull request checks" {
  on = "check_run"
  resolves = "linter-alex"
}

workflow "Check for alex in pull request checks" {
  on = "check_suite"
  resolves = "linter-alex"
}

action "linter-alex" {
  uses = "bdougie/linter-alex@master"
  secrets = ["GITHUB_TOKEN"]
}
