initSidebarItems({"enum":[["Direction","Transfer and endpoint directions."],["Error","Errors returned by the `libusb` library."],["LogLevel","Library logging levels."],["PrimaryLanguage","Primary language families."],["Recipient","Recipients of control transfers."],["RequestType","Types of control transfers."],["Speed","Device speeds. Indicates the speed at which a device is operating."],["SubLanguage","Language dialects and writing systems."],["SyncType","Isochronous synchronization mode."],["TransferType","An endpoint’s transfer type."],["UsageType","Isochronous usage type."]],"fn":[["devices","Returns a list of the current USB devices. Using global context"],["has_capability","Tests whether the running `libusb` library supports capability API."],["has_hid_access","Tests whether the running `libusb` library has HID access."],["has_hotplug","Tests whether the running `libusb` library supports hotplug."],["open_device_with_vid_pid","Convenience function to open a device by its vendor ID and product ID. Using global context"],["request_type","Builds a value for the `bmRequestType` field of a control transfer setup packet."],["set_log_level","Sets the log level of a `libusb` global context."],["supports_detach_kernel_driver","Tests whether the running `libusb` library supports detaching the kernel driver."],["version","Returns a structure with the version of the running libusb library."]],"mod":[["constants",""]],"struct":[["ConfigDescriptor","Describes a configuration."],["Context","A `libusb` context."],["Device","A reference to a USB device."],["DeviceDescriptor","Describes a device."],["DeviceHandle","A handle to an open USB device."],["DeviceList","A list of detected USB devices."],["Devices","Iterator over detected USB devices."],["EndpointDescriptor","Describes an endpoint."],["EndpointDescriptors","Iterator over an interface’s endpoint descriptors."],["GlobalContext",""],["HotplugBuilder","Builds hotplug [Registration] with custom configuration values."],["Interface","A device interface."],["InterfaceDescriptor","Describes an alternate setting for an interface."],["InterfaceDescriptors","Iterator over an interface’s descriptors."],["Interfaces","Iterator over a configuration’s interfaces."],["Language","A language used to read string descriptors from USB devices."],["LibraryVersion","A structure that describes the version of the underlying `libusb` library."],["Registration",""],["UsbOption","A `libusb` runtime option that can be enabled for a context."],["Version","A three-part version consisting of major, minor, and sub minor components."]],"trait":[["Hotplug","When handling a [method@Hotplug::device_arrived] event it is considered safe to call any `rusb` function that takes a `Device`. It also safe to open a device and submit asynchronous transfers. However, most other functions that take a `DeviceHandle` are not safe to call. Examples of such functions are any of the synchronous API functions or the blocking functions that retrieve various USB descriptors. These functions must be used outside of the context of the [Hotplug] functions."],["UsbContext",""]],"type":[["Result","A result of a function that may return a `Error`."]]});