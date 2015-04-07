package com.cp
{
	import org.osmf.events.MediaPlayerStateChangeEvent;
	import org.osmf.media.DefaultMediaFactory;
	import org.osmf.media.MediaFactory;
	import org.osmf.media.MediaPlayerSprite;
	import org.osmf.media.URLResource;
	import org.osmf.utils.OSMFSettings;
	
	public class MP4MediaPlayer extends MediaPlayerSprite
	{
		private var factory:MediaFactory;
		public function MP4MediaPlayer(stateChangeHandler:Function)
		{
			super();
			OSMFSettings.enableStageVideo = false;
			factory = new DefaultMediaFactory();
			this.mediaPlayer.addEventListener(MediaPlayerStateChangeEvent.MEDIA_PLAYER_STATE_CHANGE, stateChangeHandler);
		}
		public function get currentTime():Number{
			return mediaPlayer.currentTime;
		}
		public function get duration():Number{
			return mediaPlayer.duration;
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