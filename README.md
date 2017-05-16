# Ansible role for Docker

Setup [Docker](https://www.docker.com/).

## Requirements

- Debian
- Ubuntu

## Role Variables

- `docker_ce_channel`: If set, use Docker CE channel, or use `docker-engine`. `"stable"`, `"edge"`, or `~` (null).

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

## License

MIT License
