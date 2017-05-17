# Ansible role for Docker

Setup [Docker](https://www.docker.com/).

## Requirements

- Debian
- Ubuntu

## Role Variables

- `docker_ce_channel`: If set, use Docker CE channel, or use `docker-engine`. `"stable"`, `"edge"`, or `~` (null).
- `docker_daemon_json`: Content of `/etc/docker/daemon.json`.

## Dependencies

None.

## Example Playbook

Example:

    - hosts: servers
      become: yes
      roles:
         - znz.docker

Another example:

    - hosts: all
      become: yes
      roles:
      - role: znz.docker
        docker_ce_channel: "stable"
        docker_daemon_json: >-
          {"insecure-registries":["registry.example.test:5000"]}


## License

MIT License
