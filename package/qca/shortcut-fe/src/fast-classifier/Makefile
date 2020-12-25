obj-m += fast-classifier.o

ifeq ($(SFE_SUPPORT_IPV6),)
SFE_SUPPORT_IPV6=n
endif


ccflags-y += -I$(obj)/../shortcut-fe

obj ?= .
