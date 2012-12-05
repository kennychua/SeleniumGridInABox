SeleniumGridInABox
==================

Selenium Grid In A Box - All you need for a simplified setup &amp; install of Selenium Grid

What is Selenium Grid In A Box?
--------------------------------
_Selenium Grid In a Box_ is designed to make the installation and setup of a Selenium Grid on a Windows machine a super-simple process.

Rather than having to download & install the individual components for the Selenium Grid Hub, and each browsers manually, all you need to do is to copy the _Selenium Grid In A Box folder_ to your windows machine, set some environment variables for configuration, and away you go!

It includes :
- Selenium Grid _(Standalone Jar 2.26.0)_
- Mozilla Firefox 16.0.2 _(Portable Edition, thanks to PortableApps)_
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
The folder structure should look like this.
![alt text](http://kennychua.net/wp-content/uploads/2012/12/sgib_unpacked_folder_structure.png "Unpacked folder structure")

3. Set the following environment variables to configure _Selenium Grid In A Box_. 
	- Note that these variables tell _Selenium Grid In A Box_ the included Java version as well as the included browsers. This will be handy if you want to upgrade individual components. See later 'How Do I' section in documentation.

<table>
  <tr>
    <th>Environment Variable</th>
    <th>Example</th>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_HUB_URL</td>
    <td>http://localhost:4445/grid/register</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_JAVA_HOME</td>
    <td>C:\SeleniumGridInABox\java\jre7</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_CHROME_PATH</td>
    <td>C:\SeleniumGridInABox\browsers\GoogleChrome23Portable\App\Chrome-bin</td>
  </tr>
  <tr>
    <td>SEL_GRID_IN_A_BOX_FFOX_PATH</td>
    <td>C:\SeleniumGridInABox\browsers\Firefox16.0.2Portable\App\Firefox</td>
  </tr>
</table>
![alt text](http://kennychua.net/wp-content/uploads/2012/12/sgib_environment_variables.png "Example environment variables")

4. Run the following scripts in install each component as a Windows Service
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\SeleniumHub\InstallSeleniumHubService-NT.bat`
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\GoogleChrome\GoogleChromeSeleniumNodeService.bat`
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\MozillaFirefox\InstallFirefoxSeleniumNodeService-NT.bat`
	- `C:\SeleniumGridInABox\_startup_and_install_as_service_scripts\InternetExplorer\InstallInternetExplorerSeleniumNodeService-NT.bat`

How do I use Selenium Grid In A Box in my Selenium tests?
------------------------------------------------------------

How Do I Update …
------------------------------------------------------------
I'll strive to keep all the components up-to-date with the versions known and tested to work with each other, but if you decide to change things up
#### Java
Simply point the `SEL_GRID_IN_A_BOX_JAVA_HOME` environment variable to your desired JAVA_HOME
#### Selenium Jar
Once you have obtained the latest Selenium standalone jar from [here](http://code.google.com/p/selenium/downloads/list), place it in `C:\SeleniumGridInABox\selenium_grid_jars`. Then symlink `C:\SeleniumGridInABox\selenium_grid_jars\selenium-server-standalone-latest.jar` to it.
`mklink C:\SeleniumGridInABox\selenium_grid_jars\selenium-server-standalone-latest.jar C:\SeleniumGridInABox\selenium_grid_jars\selenium-server-standalone-2.25.0.jar`
#### Chrome
Simply point the `SEL_GRID_IN_A_BOX_CHROME_PATH` environment variable to the path containing your Chrome executable. This directory should also have chromedriver.exe as Selenium needs this to drive Chrome.
#### Firefox
Simply point the `SEL_GRID_IN_A_BOX_FFOX_PATH` environment variable to the path containing your Chrome executable. 


Notes
------
-browsers do up update automatically. This is intentional to preserve the consistency of tests
- how to uninstall service?
- how to view logs
