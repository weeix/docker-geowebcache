# What is GeoWebCache?

[GeoWebCache](https://www.geowebcache.org/) is a Java web application used to cache map tiles coming from a variety of sources such as OGC Web Map Service (WMS). It implements various service interfaces (such as WMS-C, WMTS, TMS, Google Maps KML, Virtual Earth) in order to accelerate and optimize map image delivery. It can also recombine tiles to work with regular WMS clients.

[GeoWebCache](https://www.geowebcache.org/) is licensed under the [GNU Lesser General Public License (LGPL)](http://www.gnu.org/licenses/lgpl.html).

# How to use this image?

To start GeoWebCache:

    $ docker run --rm -d -p 8080:8080 --name gwc weeix/geowebcache

You can test it by visiting `http://localhost:8080/gwc` or `http://host-ip:8080/gwc` in a browser.

To mount a directory from your host to the container's local storage:

    $ docker run --rm -d -p 8080:8080 -v "$(pwd)"/data:/usr/local/tomcat/temp/geowebcache --name gwc weeix/geowebcache

Then visit `http://localhost:8080/gwc` or `http://host-ip:8080/gwc` in a browser to generate `geowebcache.xml`.

After editing `geowebcache.xml`, you can reload the configuration by visiting `http://localhost:8080/gwc/demo` or `http://host-ip:8080/gwc/demo` then press the `Reload TileLayerConfiguration` button.

The default administrator's username/password is `geowebcache`/`secured`. However, you can change them by using environment variables.

For more information on how to use GeoWebCache, please see the [user manual](https://www.geowebcache.org/docs/current/index.html).

# Environment variables

The following environment variables could be used:

- **GWC_USER** for changing the default administrator's username e.g. `-e GWC_USER='bob'`
- **GWC_PASS** for changing the default administrator's password e.g. `-e GWC_PASS='mypassword'`
- **JAVA_OPTS** for passing JVM parameters e.g. `-e JAVA_OPTS='-Xms1g'`