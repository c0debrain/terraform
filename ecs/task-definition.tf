resource "aws_ecs_task_definition" "uno-sample-definition" {
    family                = "uno-sample-definition"
    container_definitions = "${file("./ecs/task-definition-app.json")}"
}