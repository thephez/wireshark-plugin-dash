#

_CUSTOM_SUBDIRS_ = \
	dash

_CUSTOM_EXTRA_DIST_ = \
	Custom.m4 \
	Custom.make

_CUSTOM_plugin_ldadd_ = \
	-dlopen plugins/dash/dash.la
