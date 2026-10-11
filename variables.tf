variable "colab_runtime_template_iam_bindings" {
  description = <<EOT
Map of colab_runtime_template_iam_bindings, attributes below
Required:
    - members
    - role
    - runtime_template
Optional:
    - location
    - project
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    members          = set(string)
    role             = string
    runtime_template = string
    location         = optional(string)
    project          = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

