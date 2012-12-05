SeleniumGridInABox
==================

Selenium Grid In A Box - All you need for a simplified setup &amp; install of Selenium Grid

What is Selenium Grid In A Box?
--------------------------------
_Selenium Grid In a Box_ is designed to make the installation and setup of a Selenium Grid on a Windows machine a super-simple process.

Rather than having to download & install the individual components for the Selenium Grid Hub, and each browsers manually, all you need to do is to copy the _Selenium Grid In A Box folder_ to your windows machine, set some environment variables for configuration, and away you go!

It includes :
- Selenium Grid _(Standalone Jar 2.26.0)_
- Mozilla Firefox 16 _(Portable Edition, thanks to PortableApps)_
- Google Chrome 23 _(Portable Edition, thanks to PortableApps)_
- Internet Explorer _(whichever version available on your Windows machine)_
- JavaSE 7
- Scripts to install the Selenium Grid Hub, and the above browsers as a service _(thanks to Tanuki Java Service Wrapper)_

__I will keep the components up to date and repackage once they are tested and known to be working together__

How do I use Selenium Grid In A Box?
---------------------------------------
1. Download the latest Selenium As A Grid pack as a zip from [here](https://github.com/kennychua/SeleniumGridInABox/downloads)
2. Unpack to your desired install location. In this example, we want to install to
	`C:\SeleniumGridInABox`.
The folder structure should look like this
XXXIMAGE
3. Set the following environment variables to configure _Selenium Grid In A Box_
<table>
  <tr>
    <th>Environment Variable</th>
    <th>Example</th>
    <th>What it's for</th>	
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_HUB_URL</td>
    <td>http://localhost:4445/grid/register</td>
    <td>XXX</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_JAVA_HOME</td>
    <td>C:\Users\VBox\Desktop\SeleniumGridInABox\java\jre7</td>
    <td>XXX</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_CHROME_PATH</td>
    <td>C:\Users\VBox\Desktop\SeleniumGridInABox\browsers\GoogleChrome23Portable\App\Chrome-bin</td>
    <td>XXX</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_FFOX_PATH</td>
    <td>C:\Users\VBox\Desktop\SeleniumGridInABox\browsers\Firefox16.0.2Portable\App\Firefox</td>
    <td>XXX</td>
  </tr>
</table>
-xxx screenshot of system properties
4. run/install scripts

How Do I …
- update Java
- update Selenium jar
- update Chrome
- update firefox

Notes
-browsers do up update automatically. This is intentional to preserve the consistency of tests

