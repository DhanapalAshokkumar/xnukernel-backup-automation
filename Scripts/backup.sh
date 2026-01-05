# The automation script
#!/bin/bash
# xnukernel Backup Script
zip -r /backup/xnukernel_beta.zip /var/www/html/beta
# Replace tony with username and stbkp01 with backupserver name or ip
scp /backup/xnukernel_beta.zip tony@stbkp01:/backup/
