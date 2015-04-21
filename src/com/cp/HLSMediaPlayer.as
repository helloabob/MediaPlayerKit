package com.cp
{
	import org.denivip.osmf.plugins.HLSPluginInfo;
	import org.osmf.media.PluginInfoResource;
	
	public class HLSMediaPlayer extends BaseMediaPlayer
	{
		public function HLSMediaPlayer(stateChangeHandler:Function)
		{
			super(stateChangeHandler);
			factory.loadPlugin(new PluginInfoResource(new HLSPluginInfo()));
		}
	}
}