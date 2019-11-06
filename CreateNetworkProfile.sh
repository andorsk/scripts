#!/bin/bash
#SSID_OF_NETWORK | SSID of the network you wish to join/create a profile of.
#INDEX_NUMBER | Numerical value to assigns a position in the list of preferred wireless networks. A value of "0" adds to the network to the top of the list.
#SECURITY_OF_WIRELESS_NETWORK | Wireless network security type (ex.) WPA2.
#WIRELESS_NETWORK_PASSPHRASE | Password or passphrase used to authenticate the password-protected network.
SSID_OF_NETWORK=$1
INDEX_NUMBER=$2
SECURITY_OF_WIRELESS_NETWORK=$3
WIRELESS_NETWORK_PASSPHRASE=$4
networksetup -addpreferredwirelessnetworkatindex en0 $SSID_OF_NETWORK $INDEX_NUMBER $SECURITY_OF_WIRELESS_NETWORK $WIRELESS_NETWORK_PASSPHRASE