# A utility docker image to try out the AWS Cloud Development Kit

See [https://github.com/awslabs/aws-cdk](https://github.com/awslabs/aws-cdk)

To try it out:

- Make sure you have AWS CLI credentials configured in `~/.aws`
- Run `make shell` to get a shell running in a cdk-utils container
- Run AWS CLI commands e.g. `aws s3 ls`
- Try the CDK example app e.g.
  
  ```bash
  mkdir app
  cd app
  cdk init --language=typescript
  npm run build
  cdk synth
  cdk deploy
  ```

  You should see a CloudFormation stack created in your account with a single
  resource of type `AWS::CDK::Metadata`.
