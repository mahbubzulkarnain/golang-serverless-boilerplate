package main

import (
	"github.com/aws/aws-lambda-go/events"
	"github.com/aws/aws-lambda-go/lambda"
	. "github.com/mahbubzulkarnain/golang-serverless-response"
)

// Handler is our lambda handler invoked by the `lambda.Start` function call
func Handler(req events.APIGatewayProxyRequest) (events.APIGatewayProxyResponse, error) {
	return Success(map[string]interface{}{
		"message": "Go Serverless v1.0! Your function executed successfully!",
	})
}

func main() {
	lambda.Start(Handler)
}
