resource "aws_ecs_cluster" "uno-ecs-cluster" {
    name = "${var.ecs-cluster-name}"
}