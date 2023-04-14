# samscan
scan your sam with sam scan

## Setup
```bash
# run test jobs
make test
# setup && install in ~/.bin/samscan
make install
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
