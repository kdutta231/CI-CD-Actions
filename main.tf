terraform {
  cloud {
    organization = "duttakunal231-org"

    workspaces {
      name = "kduttalab"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.87.0"
    }
  }
}

provider "aws" {
  region = "us-west-1"
}

module "myinst1" {
  source  = "app.terraform.io/duttakunal231-org/module/aws"
  version = "1.0.0"
  ssh_key_name = "myinst1key"
  ssh_key_path = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwtyFik/9uA7ienJ8v/HsYEL8zlq832uHk9a+2NX8R0C4pu7CELcUjvlxWCO5LzI+WzA2f28UVpmCuWO0ALR92565oNyKjkbarq9OJxn/YVkgBv3M9dboCZCUM1LUrztnseu+F80bv/hXKJtrtFGFriiqUURxK5z3QM8Q4iHL0CtwobNuvZFpYwsUWVI8P9uEbrCZMW1cvEKh7YnY4eNWXPZrjTgbuJVJ1lN+qnHNIeFrfmKFKAgC9Ro/oLM8yA1UiqWh/KJGsr4HDkPfu0oRDoPTiUfRmCxKzOaTmZv/YgOuJh9OB1IpCY8BTfxpNuVly3NPdbODZv/8gHfS7gIeaZ2bOO4ruTiZWdM99eBbz2l8fJwmt/EpsIkWYCIpGPvXY2+JJQkKseGVXDwG6L9HaOYwtxBnr/uAI4N1Jo5V+6VOru95f7O/Lbxuml+5nxSnOZ99k7gjPIDrPd6O3pzDmY0B0sZTweG6OoMhqCKfk8BQsA/hB+oiEmzqYkxb9TLvYAaC252tfkmTdj0zqJAbD7IhCp41TawSgApL7ZAqECWVBoMCxkFxn9Lokvw5w+Iu0h/2f7Mj+ZPhOjcO2ui9S35QZWD7EsnF7TouHSXpXK77hwBiqUOeGzdZxnyqyYQw6imiDxN+lqlUjUdWF1fMy1WFeDA7uc5F1z4LzqHwK5Q== kunal"
}
