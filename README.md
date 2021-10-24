# pak-gadget
Psion Organiser II datapak replacement using RP2040

Code for a replacement Psion datapak that uses the RP2040 to create a datapak image that is interfaced using one of the datapak slots in the Organiser.
The gadget has an SD slot that can hold .opk files which are presented to the organiser as a datapak. There's a small OLED display and buttons so the image can be selected. The pak gadget can also present a rampak and data can be stored on the ram pak. That can then be saved to SD card using the menu system.
Power is USB as the datapak interface does not have a permanent power supply.

There are two versions:

Breakout pak-gadget
===================

A 'breakout' pak-gadget which is a T shaped PCB that plugs in to the datapak slot and has the display and buttons facing forwards. This is quite large.

Pak Sized pak-gadget
====================

This is a pak-gadget that fits in the form factor of a datapak in the slot in the organiser. It has a smaller OLED display and buttons that both face towards the back of the organiser. Poweris still USB. When disconnected form power the organiser cover should fit in the closed position.

Operation
=========

The pak gadget plugs in to either datapack slot on a Psion Organiser 2. It can be powered by theUSB socket on the PCB, or it can be wired in to the internal supply of the organiser. A transistor is needed to switch the battery voltage on to the gadget when the LCD controller is turned on. When wired in the USB connection MUST NOT be used. A later revision of the PCB (untested as yet) has the extra transistor needed for internal power on the PCB.
