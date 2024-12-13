provider "github" {
  token = var.github_token
}

resource "github_repository" "DevOps_Project" {
  name        = "DevOps_Project"
  description = "DevOps Proejct Repository"
  private     = false
}

resource "github_actions_secret" "DOCKER_PASSWORD" {
  repository = github_repository.DevOps_Project.name
  secret_name = "DOCKER_PASSWORD"
  plaintext_value = var.DOCKER_PASSWORD
}

resource "github_actions_secret" "DOCKER_USERNAME" {
  repository = github_repository.DevOps_Project.name
  secret_name = "DOCKER_USERNAME"
  plaintext_value = var.DOCKER_USERNAME
}
