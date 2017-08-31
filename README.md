# Wireshark dissector plugin for the [Dash](https://www.dash.org/) cryptocurrency protocol
A Dash protocol dissector converted from the bitcoin built-in dissector and updated to include Dash specific commands (based on [outdated protocol documentation](https://github.com/dashpay/dash/blob/master/dash-docs/protocol-documentation.md) and [source code](https://github.com/dashpay/dash/blob/master/src/protocol.cpp)).

## To Build (on Linux Mint 17.3)
 - Clone Wireshark from [https://github.com/wireshark/wireshark](https://github.com/wireshark/wireshark) 
 - Clone this plugin repository
 - From this repository, copy *CMakeListsCustom.txt* / the *plugins* folder and paste into the root of the cloned Wireshark folder
 - Follow the Wireshark build instructions

Note: This was built with Wireshark 2.3.  To use with Wireshark 2.2 it is necessary to build using the master-2.2 branch of this repository

## Releases
 - Currently the plugin has only been built on Linux Mint 64 bit.  A binary can be downloaded from the [releases page](https://github.com/thephez/wireshark-plugin-dash/releases/latest).

## Capture screenshot
This shows a dissected Masternode Ping message. The packet also contains a Governance Vote.  Most Dash specific messages are not fully dissected, but all should be recognized.
![](plugins/dash/wireshark-dash-dissection.png)

## Dash specific protocol implementation status (excludes items shared with the Bitcoin protocol)
Name | Recognized | Dissected | Status | Description
--- | --- | --- | --- | ---
dsa | Y | Y* | Untested | Darksend Accept
dsc | Y | Y* | Untested | Darksend Complete
dseg | Y | Y |  | Masternode List/Entry Sync
dsf | Y | Y* | Untested | Darksend Final Transaction
dsi | Y |  |  | Darksend Entry
dsq | Y | Y |  | Darksend Queue
dssu | Y | Y* | Untested | Mixing Pool Status Update
dstx | Y | Y |  | Darksend Broadcast
govobj | Y | Y |  | Governance Object
govobjvote | Y | Y |  | Governance Vote
govsync | Y | Partial |  | Governance Vote
ix | Y | Y |  | Transaction Lock Request (InstantSend)
mnb | Y | Y |  | Masternode Broadcast
mnget | Y | Y |  | Masternode Payment Sync
mnp | Y | Y |  | Masternode Ping
mnv | Y | Y* | Untested | Masternode Verify
mnw | Y | Partial |  | Masternode Payment Vote
mnwb | Y | NA | Inventory only | Masternode Payment Block (no message - inventory only)
spork| Y | Y |  | Spork status
ssc | Y | Y |  | Sync Status Count
txlvote | Y | N |  | Transaction Lock Vote
