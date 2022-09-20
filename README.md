# nodeapp deployment
## 1. With AWS CodeDeploy
### a. Create the appspec.yml file.
* Create hooks as follows -
  * BeforeInstall: Install the dependencies and runtime required.
  * AfterInstall: Install the node dependencies with npm
  * ApplicationStart: Start the Application using PM2.
### b. Create a Launch Template with the CodeDeploy Agent installation script.
