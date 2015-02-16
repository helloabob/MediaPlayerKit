package com.cp
{
	import org.denivip.osmf.plugins.HLSPluginInfo;
	import org.osmf.events.MediaPlayerStateChangeEvent;
	import org.osmf.media.DefaultMediaFactory;
	import org.osmf.media.MediaFactory;
	import org.osmf.media.MediaPlayerSprite;
	import org.osmf.media.PluginInfoResource;
	import org.osmf.media.URLResource;
	import org.osmf.utils.OSMFSettings;
	
	public class HLSMediaPlayer extends MediaPlayerSprite
	{
		private var factory:MediaFactory;
		public function HLSMediaPlayer(stateChangeHandler:Function)
		{
			super();
			OSMFSettings.enableStageVideo = false;
			factory = new DefaultMediaFactory();
			factory.loadPlugin(new PluginInfoResource(new HLSPluginInfo()));
			this.mediaPlayer.addEventListener(MediaPlayerStateChangeEvent.MEDIA_PLAYER_STATE_CHANGE, stateChangeHandler);
		}
		public function get currentTime():Number{
			return mediaPlayer.currentTime;
		}
		public function seek(time:Number):void{
			mediaPlayer.seek(time);
		}
		public function get playing():Boolean{
			return mediaPlayer.playing;
		}
		public function play():void{
			mediaPlayer.play();
		}
		public function pause():void{
			mediaPlayer.pause();
		}
		public function set volume(value:Number):void{
			this.mediaPlayer.volume = value;
		}
		public function get volume():Number{
			return this.mediaPlayer.volume;
		}
		public function set mediaResourceURL(url:String):void{
			this.media = factory.createMediaElement(new URLResource(url));
		}
	}
}