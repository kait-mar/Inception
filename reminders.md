# keep this notes in mind , and keep verifyin' that everything's respected

- How Docker and docker-compose work
- !!!!!!!!!!The difference between a Docker image used with docker-compose and without docker-compose
- The beneﬁt of Docker compared to VMs
- The pertinence of the required directory structure 
- a simple explanation of docker-network.
-The SSL/TLS certiﬁcate doesn't have to be recognized.
- A self-signed certiﬁcate warning may appear.
!!!!!!!!!!! ps you shouldn't see the WordPress Installation page !!!!!!!!!!!!!!
!!!!!!!check the privileges of the root vs normal user and what's the difference between them
** add your domain kait-mar.42.fr to point on localhost
*** the containers were built by tail-f ?
*** add the paths for volumes
***wordpress {
    -Ensure that you can add a comment using the available WordPress user.
    -Sign in with the administrator account to access the Administration dashboard.
    -From the Administration dashboard, edit a page. Verify on the website that the page has been updated. 
}
*****mariadb {
    Try to login into the SQL database as root but with no
password. If the login is successful, the evaluation process ends now.
- Try to login into the SQL database with the user account and its
password. Verify that the database is not empty.
}

**** You have to reboot the virtual
machine. Once it has restarted, launch docker-compose again. Then,
verify that everything is functional, and that both WordPress and
MariaDB are configured. The changes you made previously to the
WordPress website should still be here.


- the ssl certificate stands for (Secure Sockets Layer), it secures the connection between the user and the sites by encryption the information. 
    this information could be anything sensitive or personal which can include credit card numbers and other financial information, names and addresses.
- TLS (Transport Layer Security) is just an updated, more secure, version of SSL.

-------------------------------------------------

- The beneﬁt of Docker compared to VMs:
{
    *start time : containers take few seconds to start wheras vm take minutes
    *effeciency : because Docker containers share many of their resources with the host system, they require fewer things to be installed in order to run. Compared to a virtual machine, a container typically takes up less space and consumes less RAM and CPU time. For this reason, you can often fit more applications on a single server using containers than you could by using virtual machines. Likewise, due to their lower levels of resource consumption, containers may help to save money on cloud computing costs.
    *code reuse : Each running container is based on a container image, which contains the binaries and libraries that the container requires to run a given application. Container images are easy to build using Dockerfiles. They can be shared and reused using container registries, which are basically repositories that host container images. You can set up an internal registry to share and reuse containers within your company. Thousands of prebuilt images can be downloaded from public registries (e.g. Docker Hub or Quay.io) for free and used as the basis for building your own containerized applications.
    Of course, VMs may be packaged into images, too, and those images can also be shared, but not as efficiently and easily as containers. Furthermore, virtual machine images aren’t as easy to automatically build, and are typically larger in size. Also, because they usually include operating systems, redistributing them can become legally complicated. (In most cases you can’t legally download and run a virtual machine image with Windows preinstalled without having a Windows license, for example.)
}

----------------------------------------------------------

-how docker work {
    The Docker technology uses the Linux kernel and features of the kernel.
    to separate processes so they can run independently. 
    This independence is the intention of containers—the ability to run multiple processes and apps separately from one another to make better use of your infrastructure. in a secure way.
}
-how docker-compose work {
    Compose is a tool for defining and running multi-container Docker applications. With Compose, you use a YAML file to configure your application’s services. 
    Then, with a single command, you create and start all the services from your configuration. 

}
------------------------------------------------------

-to check if the database is empty or not
SELECT COUNT(DISTINCT `table_name`) AS TotalNumberOfTables FROM `information_schema`.`columns` WHERE `table_schema` = 'wordpress_database';

php-fpm: an alternative service that connects your server(nginx-apache..) to php (since wordpress is php coded )
fix the last error with stoping services!! (related to Unix sockets)
---------
get sure if u've correctly chosen the right way to connect them (by sockets or by tcp !!)
-------
## Dear kait
### STOP TYPING. and enjoy :p
#### best regards, lol