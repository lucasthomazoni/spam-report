# README

* Ruby version: 3.2.1

* Software dependencies:
  * PostgreSQL
  * Slack API

* Configuration
  * Check the .env file for the necessary environment variables

* Run a sample request - `POST /payloads`:

```bash
curl --location 'http://localhost:3000/payloads' \
  --header 'Content-Type: application/x-www-form-urlencoded' \
  --data-urlencode 'RecordType=Bounce' \
  --data-urlencode 'MessageStream=outbound' \
  --data-urlencode 'Type=HardBounce' \
  --data-urlencode 'TypeCode=1' \
  --data-urlencode 'Name=Hard bounce' \
  --data-urlencode 'Tag=Test' \
  --data-urlencode 'Description=The server was unable to deliver your message (ex: unknown user, mailbox not found).' \
  --data-urlencode 'Email=arthur@example.com' \
  --data-urlencode 'From=notifications@honeybadger.io' \
  --data-urlencode 'BouncedAt=2019-11-05T16:33:54.9070259Z'
```
