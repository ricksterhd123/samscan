# samscan
scan your sam with sam scan

## Setup
```bash
chmod +x setup.sh
./setup.sh
# Add this to ~/.bash_profile or ~/.bashrc
echo "export PATH=\$PATH:\$HOME/.bin/samscan" >> ~/.bashrc
```

## Usage
```
Usage: samscan <FILE>
```

Currently, this has only one use for me:
- Echos to stdout a list of resource types used in a given template
- Errors if template is not valid (naive check)

## TODO?
- [ ] Add more scanners, e.g. find and list permissions from IAM policies
