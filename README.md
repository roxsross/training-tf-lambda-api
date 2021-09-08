# Learn Terraform - Lambda functions and API Gateway

AWS Lambda functions and API gateway are often used to create serverlesss
applications.

Follow along with this [tutorial on HashiCorp
Learn](https://learn.hashicorp.com/tutorials/terraform/lambda-api-gateway?in=terraform/aws).

## Precondiciones

- NodeJS 12 o superior
- npm 6 o superior


## Inicializar proyecto

```bash
npm install
```

## Crear paquete para cargar la lambda en AWS

```bash
npm run pack
```

## Despliegue

Para el despliegue de la lambda y sus componentes adicionales se usa `terraform`, el código IAC esta almacenado en el directorio `terraform` que esta ubicado en la raíz del proyecto

### Plan de despliegue en ambiente dev

```bash
npm run aws:plan
```

### Despliegue en ambiente dev

```bash
npm run aws:deploy
```

### Destroy de la infra

```bash
npm run aws:destroy
```