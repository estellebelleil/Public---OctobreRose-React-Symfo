# Résoudre les problèmes de CORS sous Symfony

https://symfony.com/bundles/NelmioCorsBundle/current/index.html

## Installation du NelmioCorsBundle
```bash
composer require nelmio/cors-bundle
```
Puis copier ça dans le packages/nelmio_cors.yaml :
```bash
nelmio_cors:
    defaults:
        allow_credentials: false
        allow_origin: []
        allow_headers: []
        allow_methods: []
        expose_headers: []
        max_age: 0
        hosts: []
        origin_regex: false
        forced_allow_origin_value: ~
        skip_same_as_origin: true
    paths:
        '^/api/':
            allow_origin: ['*']
            allow_headers: ['*']
            allow_methods: ['POST', 'PUT', 'GET', 'DELETE']
            max_age: 3600
        '^/':
            origin_regex: true
            allow_origin: ['^http://localhost:[0-9]+']
            allow_headers: ['*']
            allow_methods: ['POST', 'PUT', 'GET', 'DELETE']
            max_age: 3600
            hosts: ['^api.']
```
