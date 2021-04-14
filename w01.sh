#!/bin/bash
sudo cat <<EOF > /var/www/html/index.html
<h1><font color="red">Welcome to NGINX!!</h1>
 <h2> I am a student of devops-crash-course-spring-2021.
 I am number 25 in the devops-crash-course-spring-2021 </h2>
 <h1><font color="black"> It's a server 1</h1>
EOF
sudo service nginx reload