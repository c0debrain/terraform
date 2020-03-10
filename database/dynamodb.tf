resource "aws_dynamodb_table" "history_calc_table" {

  name           = "DatesCalculatorHistory"
  billing_mode   = "PROVISIONED"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "id"

  attribute {
    name = "id"
    type = "S"
  }

  tags = {
    Name        = "dates-calculator-history-table"
    Environment = "production"
  }
}
