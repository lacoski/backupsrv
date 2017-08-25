base:
 '*':
   - core
   - user
   - package
   - splunk
 'osfinger:CentOS-6':
   - match: grain
   - ssh_key
 'centminion':
   - ssh_key
 'minion1':
   - ssh_key
