from Plugins.Plugin import PluginDescriptor
from Screens.Console import Console

def main(session, **kwargs):
	session.open(Console,
	             title = "Plugin Updater",
	             cmdlist = ["sh '/usr/script/PluginUpdater.sh'"])

def Plugins(**kwargs):
	return [PluginDescriptor(
	             name = "Plugin Updater",
	             description = "Updatescript only for Plugins",
	             where = PluginDescriptor.WHERE_PLUGINMENU,
	             fnc = main,
	             icon = "plugin.png")]
