# LDAP Infrastructure Deployment Toolkit

This repository provides everything you need to deploy a secure, modular, and fully automated OpenLDAP infrastructure using Docker or Ansible.

## Features

- Modular directory tree (`sys > jnr > {one..five}` domains)
- Cross-domain ACLs and group-based access control
- Predefined users, groups, service accounts
- Docker-based stack with OpenLDAP + phpLDAPadmin
- Role-based Ansible deployment for bare-metal or VM targets
- Backup and restore scripts
- GitHub Actions CI pipeline

## Getting Started

### Docker Deployment

```bash
chmod +x deploy.sh
./deploy.sh
```

phpLDAPadmin available at [https://localhost:6443](https://localhost:6443)  
Login DN: `cn=admin,dc=sys`  
Password: `admin`

### Ansible Deployment

```bash
ansible-playbook -i inventory.ini ansible/role_ldap_deploy.yml
```

### Backups

```bash
./ldap_backup.sh  # stores to /var/backups/
./ldap_restore.sh <backup-file.ldif>
```

## License

[MIT](LICENSE)

## Author

Trixie | Anderson Computer Consulting
