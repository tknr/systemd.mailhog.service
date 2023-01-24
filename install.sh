#!/bin/bash -x
cd `dirname $0`
curl -s https://api.github.com/repos/mailhog/MailHog/releases/latest | jq -r '.assets[] | select(.name | test("MailHog_linux_amd64")) | .browser_download_url' | head -n 1 | xargs curl -LJO | exit 1
chmod +x MailHog_linux_amd64 | exit 1
mv MailHog_linux_amd64 /usr/local/bin/mailhog | exit 1
cp -f mailhog.service /etc/systemd/system/
