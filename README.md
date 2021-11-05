# Setup of Ubuntu Server

* **Avoid *...wait for network to be configured...* and delay when booting** \
  Add ```optional: true``` to network config in ```/etc/netplan/``` \
  Finally run ```sudo netplan apply```

* **Enable wifi** \
  Run ```ls /sys/class/net``` to find wireless network interface. Will be wlan0 or similar \
  Add the following in config in ```/etc/netplan/```
  ```
  wifis:
    <wireless network interface>:
      optional: true
      access-points:
        <wifi name>:
          password: <wifi password>
        ...
      dhcp4: true
  ```
  Section ```wifis``` should be a child of root section ```network``` \
  Finally run ```sudo netplan apply```

* **Enable natural scrolling** \
  Run ```xinput``` to find touchpad device (*Synaptics* or similar) and remember its id \
  Run ```xinput list-props <device id> | grep -i 'scrolling distance'``` 
  to find property responsible for scrolling deltas (vertical and horizontal) and deltas itself.
  To change scrolling direction you should simple invert deltas:
  ```xinput set-prop <device id> <property id> -<delta1> -<delta2>```