resource "github_repository" "vapras" {
  name         = "vapras"
  description  = "Official vapras app"
  homepage_url = "https://vapras.com/"
  private      = false
  has_issues   = true
  has_projects = true
  has_wiki     = false

  topics = ["flutter", "flutter-app", "flutter-ui"]
}

resource "github_branch_protection" "alpha" {
  repository = github_repository.vapras.name
  branch     = "alpha"

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    strict   = true
    contexts = ["auto-approve", "context", "flutter", "ready", "terraform", "yarn", "Semantic Pull Request", "WIP"]
  }
}

resource "github_branch_protection" "beta" {
  repository = github_repository.vapras.name
  branch     = "beta"

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    strict   = true
    contexts = ["auto-approve", "context", "flutter", "ready", "terraform", "yarn", "Semantic Pull Request", "WIP"]
  }
}

resource "github_branch_protection" "master" {
  repository     = github_repository.vapras.name
  branch         = "master"
  enforce_admins = true

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    require_code_owner_reviews      = true
    required_approving_review_count = 1
  }

  required_status_checks {
    strict   = true
    contexts = ["auto-approve", "context", "flutter", "ready", "terraform (master)", "yarn", "atlas/vapras/vapras-master", "Semantic Pull Request", "WIP"]
  }
}
