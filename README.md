# fetch_cli

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
