terraform {
  required_version = ">= 1.1.0"
  cloud {
    hostname = "app.terraform.io"
    organization = "artem-bondarenko-test-project"

    workspaces {
      name = var.subject
    }
  }
}

variable "subject" {
   type = string
   default = "tfctl-rc"
   description = "Subject to hello"
}

output "hello_world" {
  value = "hey hey ya, ${var.subject}!"
}
