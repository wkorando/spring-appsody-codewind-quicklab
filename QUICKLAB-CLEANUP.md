# Quicklab Clean Up	

This article describes the recommended steps for cleaning up a laptop after a user has completed a quicklab.

## Clear out Codewind-Workspace

Clear out all folders from the folder `codewind-workspace` which should be located at `~/codewind-workspace`. 

## Clean up VS Code

Right click (ctrl + click on mac) on the codewind project the user created and select "Remove Project"  

## Delete and Restart Minikube

Minikube is used to locally deploy the projects users are building to a Kubernetes cluster. Once a user has completed the quicklab simply run the following commands:

```
minikube delete
minikube start
```

minikube start will take a few seconds to run, but a new user can start while that process completes

