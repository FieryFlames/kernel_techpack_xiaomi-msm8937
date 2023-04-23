ifeq ($(CONFIG_MACH_XIAOMI_MSM8937),y)
obj-$(CONFIG_MACH_XIAOMI_MSM8937) += mach/

obj-y += fingerprint/
obj-$(CONFIG_NEW_LEDS) += leds/
obj-$(CONFIG_POWER_SUPPLY) += power_supply/
obj-$(CONFIG_REGULATOR) += regulator/
obj-$(CONFIG_INPUT_TOUCHSCREEN) += touchscreen/
obj-y += vibrator/
else
ccflags-y := -Wno-unused-function
obj-y := stub.o
endif
