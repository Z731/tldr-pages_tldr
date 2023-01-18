# locust

> Load-testing tool to determine number of concurrent users a system can handle.
> More information: <https://locust.io>.

- Load-test "example.com" with web interface using locustfile.py:

`locust --host={{https://example.com}}`

- Use a different test file:

`locust --locustfile={{test_file.py}} --host={{https://example.com}}`

- Run test without web interface, spawning 1 user a second until there are 100 users:

`locust --no-web --clients={{100}} --hatch-rate={{1}} --host={{https://example.com}}`

- Start locust in master mode:

`locust --master --host={{https://example.com}}`

- Connect locust slave to master:

`locust --slave --host={{https://example.com}}`

- Connect locust slave to master on a different machine:

`locust --slave --master-host={{master_hostname}} --host={{https://example.com}}`
