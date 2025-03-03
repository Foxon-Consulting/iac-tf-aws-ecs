# Environment Management

If you want to add a environment (ex: dev, uat, prd) or a environment type (noprd, prd), add a directory inside this env directory with the corresponding name (and modify the config.tfbackend and vars.tfvars for this environment)

To work with this environment, export the ENV value:

```sh
export ENV=dev
```

Initialiaze the corresponding backend with ```make init```
You can now init, plan, apply and destroy thanks to ```make [plan|apply|destroy]```
