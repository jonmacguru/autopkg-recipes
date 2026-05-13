#!/bin/bash
REDIRECT_URL="https://claude.ai/redirect/claudedotcom.v1.0eb44107-cbdc-42bb-9747-a1bf0abd9d54/api/desktop/darwin/universal/dmg/latest/redirect"

# Follow redirects but print the final URL
FINAL_URL=$(curl -sSL -w "%{url_effective}" -o /dev/null "$REDIRECT_URL")
echo "$FINAL_URL"