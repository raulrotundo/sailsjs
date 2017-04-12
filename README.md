#SailsJS Demo

This is a SailsJS demo with Vagrant integration ready to deploy on development environment.

If you are under a corporate proxy, you can add a settings.yml file under vm folder with the following structure:

```ruby
proxy:
    enabled: true
    http: "http://proxy.example.com:3128"
    https: "http://proxy.example.com:3128"
    no_proxy: "localhost,127.0.0.1"
```