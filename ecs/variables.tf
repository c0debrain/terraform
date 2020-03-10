
variable "ecs-target-group-arn" {}

variable "ecs-cluster-name" {
    default = "uno-ecs-cluster"
}

variable "ecs-service-role-arn" {
    default = "uno-ecs-cluster"
}

variable "ecs-service-name" {
    default = "uno-ecs-service"
}

variable "ecs-load-balancer-name" {
    default = "uno-ecs-load-balancer"
}

