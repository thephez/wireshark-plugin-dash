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
Name | Message Recognized | Message Dissected | Status | Description
--- | --- | --- | --- | ---
dsa | Y |  |  | Darksend Accept
dsc | Y |  |  | Darksend Complete
dseg | Y | Y |  | Masternode List/Entry Sync
dsf | Y |  |  | Darksend Final Transaction
dsi | Y |  |  | Darksend Entry
dsq | Y | Y |  | Darksend Queue
dssu | Y |  |  | Mixing Pool Status Update
dstx | Y | N |  | Darksend Broadcast
govobj | Y | N |  | Governance Object
govobjvote | Y | Y |  | Governance Vote
govsync | Y | N |  | Governance Vote
ix | Y | N |  | Transaction Lock Request (InstantSend)
mnb | Y | Partial |  | Masternode Broadcast
mnget | Y | Y |  | Masternode Payment Sync
mnp | Y | Y |  | Masternode Ping
mnv | Y |  |  | Masternode Verify
mnw | Y | Partial |  | Masternode Payment Vote
mnwb | Y |  |  | Masternode Payment Block
spork| Y | Y |  | Spork status
ssc | Y | N |  | Sync Status Count
txlvote | Y | N |  | Transaction Lock Vote
