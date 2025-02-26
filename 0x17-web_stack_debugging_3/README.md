# 0x17. Web Stack Debugging #3

This project focuses on debugging a WordPress installation running on a LAMP stack. 
The goal is to ensure that Apache, MySQL, and PHP are correctly configured 
so that WordPress functions without issues.

## Requirements

- Ubuntu 14.04 LTS
- Puppet v3.4
- Puppet manifest must pass `puppet-lint` v2.1.1
- Apache and MySQL should be running
- Correct file permissions for WordPress

## Files

- `0-web_stack_debugging_3.pp`: Puppet manifest to fix common WordPress issues.

## Usage

To apply the Puppet manifest, run:

```sh
sudo puppet apply 0-web_stack_debugging_3.pp

