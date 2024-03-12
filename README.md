# fetch_cli

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fc2p-cmd%2Ffetch_cli_mac%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/c2p-cmd/fetch_cli_mac)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fc2p-cmd%2Ffetch_cli_mac%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/c2p-cmd/fetch_cli_mac)

## A Mac Command Line Tool written in swift
### Purpose: 
- Copying string contents of a `URL` to clipboard for immediate usage

### Usage:
```shell
OVERVIEW: Fetch string from a file and copy to clipboard!

USAGE: fetch_cli --url-string <url-string> [--show-data] [--debug-pasteboard] [--show-response]

OPTIONS:
  -u, --url-string <url-string>
                          Specify url to fetch from
  --show-data             Show data from URL
  --debug-pasteboard      Show response from ``NSPasteboard``
  --show-response         Show HTTP Response from URL
  -h, --help              Show help information.
```
```bash
fetch_cli -u "...."
```
