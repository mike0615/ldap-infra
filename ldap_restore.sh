#!/bin/bash
slapadd -v -l $1 && chown -R openldap:openldap /var/lib/ldap