////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package flash.media
{
	import flash.utils.ByteArray;
	
	public final class SoundMixer extends Object
	{
		
		public function SoundMixer()
		{
			super();
		}
		
		public static function stopAll():void
		{
			var len:int = Sound.sounds.length;
			for (var i:int = 0; i < len;i++ ) {
				var sound:Sound = Sound.sounds[i];
				sound.playing = false;
				try{
					sound.source.stop(0);
				}catch(err:Object){}
			}
		}
		
		public static function computeSpectrum(outputArray:ByteArray, FFTMode:Boolean=false, stretchFactor:int=0):void
		{
		
		}
		
		public static function get bufferTime():int
		{
			return 0;
		}
		
		public static function set bufferTime(param1:int):void
		{
		
		}
		
		public static function get soundTransform():SoundTransform
		{
			return null;
		}
		
		public static function set soundTransform(param1:SoundTransform):void
		{
		
		}
		
		public static function areSoundsInaccessible():Boolean
		{
			return false;
		}
		
		public static function get audioPlaybackMode():String
		{
			return null;
		}
		
		public static function set audioPlaybackMode(mode:String):void
		{
		
		}
		
		public static function get useSpeakerphoneForVoice():Boolean
		{
			return false;
		}
		
		public static function set useSpeakerphoneForVoice(b:Boolean):void
		{
		
		}
	}
}
