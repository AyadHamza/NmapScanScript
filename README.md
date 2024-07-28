<h1>Description<h1>

<h2>The nmap script parses through an xml format nmap scan file, that has scanned the entire 10.0.0.0/24 network. It should essentially work with any one who uses it, but you will need to change the path to your own specific path to where your nmap scan is located on your local drive.The script essentially uses the "[xml]" accelerator to convert the xml file to the Document Object Model(DOM) for a more hierarchical strucuted to make it easier to parse through the nodes.<br />

<h2>The script first parses through the "nmaprun" parent node, the "host" child node, and the child node of the "host" node "status" for all up and running available hosts

<h2>The second attemps to retrieve hostnames of the Operating System using the ".hostnames.hostname.name" nodes

<h2>The third retrieves the IP Address of all avaliable hosts

<h2>The last retrieves the Operating system of the avaliable hosts
