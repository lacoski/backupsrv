#!/bin/bash
/opt/splunkforwarder/bin/splunk stop
rpm -e splunkforwarder-6.6.2-4b804538c686.x86_64
rm -rf /opt/splunkforwarder/
