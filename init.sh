
#!/bin/bash

mysql -uroot -p${MYSQL_ROOT_PASSWORD} -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%';FLUSH PRIVILEGES;"
