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

How do I set up Selenium Grid In A Box?
---------------------------------------
1. Download the latest Selenium As A Grid pack as a zip from [here](https://github.com/kennychua/SeleniumGridInABox/downloads)
2. Unpack to your desired install location. In this example, we want to install to
	`C:\SeleniumGridInABox`.
The folder structure should look like this
XXXIMAGE
3. Set the following environment variables to configure _Selenium Grid In A Box_. 
	- Note that these variables tell _Selenium Grid In A Box_ the included Java version as well as the included browsers. This will be handy if you want to upgrade individual components. See later 'How Do I' section in documentation
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
    <td>C:\SeleniumGridInABox\java\jre7</td>
    <td>Point to the JAVA_HOME of the Java you would like to use</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_CHROME_PATH</td>
    <td>C:\SeleniumGridInABox\browsers\GoogleChrome23Portable\App\Chrome-bin</td>
    <td>Point to the path containing Chrome executable you would like to use</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_FFOX_PATH</td>
    <td>C:\SeleniumGridInABox\browsers\Firefox16.0.2Portable\App\Firefox</td>
    <td>Point to the path containing Firefox executable you would like to use</td>
  </tr>
</table>
-xxx screenshot of system properties
4. Run the following scripts in install each component as a Windows Service
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\SeleniumHub\InstallSeleniumHubService-NT.bat`
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\GoogleChrome\GoogleChromeSeleniumNodeService.bat`
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\MozillaFirefox\InstallFirefoxSeleniumNodeService-NT.bat`
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\InternetExplorer\InstallInternetExplorerSeleniumNodeService-NT.bat`

How do I use Selenium Grid In A Box in my Selenium tests?
------------------------------------------------------------

How Do I …
- update Java
- update Selenium jar
- update Chrome
- update firefox

Notes
-browsers do up update automatically. This is intentional to preserve the consistency of tests
- how to uninstall service?
- how to view logs
