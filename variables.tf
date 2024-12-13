variable "github_token" {
  description = "GitHub token with repo and secrets permissions"
  type        = string
}

variable "DOCKER_PASSWORD" {
  description = "Docker password for the repository secret"
  type        = string
}

variable "DOCKER_USERNAME" {
  description = "Docker username for the repository secret"
  type        = string
}
