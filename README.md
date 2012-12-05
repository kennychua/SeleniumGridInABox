SeleniumGridInABox
==================

Selenium Grid In A Box - All you need for a simplified setup &amp; install of Selenium Grid

What is Selenium Grid In A Box?
--------------------------------
_Selenium Grid In a Box_ is designed to make the installation and setup of a Selenium Grid on a Windows machine a super-simple process.

Rather than having to download & install the individual components for the Selenium Grid Hub, and each browsers manually, all you need to do is to copy the _Selenium Grid In A Box folder_ to your windows machine, set some environment variables for configuration, and away you go!

It includes :
- Selenium Grid (Standalone Jar)
- Mozilla Firefox XX
- Google Chrome 23 (Portable Edition, thanks to PortableApps)
- Internet Explorer (whichever version available on your Windows machine)
- JavaSE 7
- Scripts to install the Selenium Grid Hub, and the above browsers as a service (thanks to Tanuki Java Service Wrapper)

__I will keep the components up to date and repackage once they are tested and known to be working together__

How do I use Selenium Grid In A Box?
---------------------------------------
1. Download the latest Selenium As A Grid pack as a zip from [here](https://github.com/kennychua/SeleniumGridInABox/downloads)
2. Unpack to your desired install location. In our example, we want to install to
	C:\SeleniumGridInABox
The folder structure should look like this
XXXIMAGE
3. Set the following environment parameters
||ENV Variable || What is it for||
-xxx screenshot of system properties
4. run/install scripts

How Do I …
- update Java
- update Selenium jar
- update Chrome
- update firefox

Notes
-browsers do up update automatically. This is intentional to preserve the consistency of tests

