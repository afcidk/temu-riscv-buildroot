################################################################################
#
# kilo
#
################################################################################

KILO_VERSION = 1.0
KILO_SITE = ./package/kilo/src
KILO_SOURCE = "kilo.c Makefile"
KILO_SITE_METHOD = local

define KILO_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)
endef

define KILO_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/kilo $(TARGET_DIR)/usr/bin
endef

define KILO_EXTRACT_CMDS
	cp $(TOPDIR)/$(KILO_SOURCE) $(@D)
endef

$(eval $(generic-package))
