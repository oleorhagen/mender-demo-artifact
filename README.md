Mender Demo Artifact
=============================================

Mender is an open source over-the-air (OTA) software updater for embedded Linux
devices. Mender comprises a client running at the embedded device, as well as
a server that manages deployments across many devices.

This repository contains a demo artifact, which is used during the onboarding process
and acts as an example of the update capabilities.

![Mender logo](https://mender.io/user/pages/resources/06.digital-assets/mender.io.png)

## Getting started


### Onboarding Site
 
This site is served with some device information from the serving device. The device details are populated in the `entrypoint.sh` in the development setup and a similar file should be executed before server start on the updated device.

To see the site, go to the subfolder, use:

```
docker-compose up
```

and visit http://localhost:8080. The "Web server" in the top right reflects the container id (instead of a proper server name).

## Contributing

We welcome and ask for your contribution. If you would like to contribute to Mender, please read our guide on how to best get started [contributing code or
documentation](https://github.com/mendersoftware/mender/blob/master/CONTRIBUTING.md).

## License

Mender is licensed under the Apache License, Version 2.0. See
[LICENSE](https://github.com/mendersoftware/mender/blob/master/LICENSE) for the
full license text.

## Security disclosure

We take security very seriously. If you come across any issue regarding
security, please disclose the information by sending an email to
[security@mender.io](security@mender.io). Please do not create a new public
issue. We thank you in advance for your cooperation.

## Connect with us

* Join the [Mender Hub discussion forum](https://hub.mender.io)
* Follow us on [Twitter](https://twitter.com/mender_io). Please
  feel free to tweet us questions.
* Fork us on [Github](https://github.com/mendersoftware)
* Create an issue in the [bugtracker](https://tracker.mender.io/projects/MEN)
* Email us at [contact@mender.io](mailto:contact@mender.io)
* Connect to the [#mender IRC channel on Freenode](http://webchat.freenode.net/?channels=mender)
