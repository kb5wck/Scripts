pacmd set-default-source alsa_input.usb-GeneralPlus_USB_Audio_Device-00.analog-mono
pactl load-module module-null-sink sink_name=dummy
pacmd set-default-sink dummy
pacmd load-module module-loopback source=alsa_input.usb-GeneralPlus_USB_Audio_Device-00.analog-mono sink=dummy
pactl load-module module-loopback source=nx_voice_out.monitor sink=dummy
