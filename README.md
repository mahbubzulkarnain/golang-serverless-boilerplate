# Serverless Framework Golang

## Serverless Offline Golang Development Setup

A preliminary setup & skeleton to kickstart with local AWS Lambda development in Go.

It's a mixture of _Serverless_ and _SAM Local_. And for offline Lambda + API
Gateway simulation using a docker container.

## Requirements
- Working Golang environment
- Working Node environment to install dependencies
- Working Docker machine to invoke lambdas locally

## Installation & usage
```bash
# Install npm dependencies
npm install -g serverless aws-sam-local

# Clone the skeleton
git clone https://github.com/mahbubzulkarnain/serverless_framework_golang.git

# Compile the sample lambdas
cd serverless_framework_golang/
make build

# Invoke the "apigw" sample lambda locally at localhost:3000
make local
```
