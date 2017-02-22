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
	import flash.events.EventDispatcher;
	
	[Event(name = "soundComplete", type = "flash.events.Event")]
	public final class SoundChannel extends EventDispatcher
	{
		
		public function SoundChannel()
		{
			super();
		}
		
		public function get position():Number
		{
			return 0;
		}
		
		public function get soundTransform():SoundTransform
		{
			return null;
		}
		
		public function set soundTransform(v:SoundTransform):void
		{
		
		}
		
		public function stop():void
		{
		
		}
		
		public function get leftPeak():Number
		{
			return 0;
		}
		
		public function get rightPeak():Number
		{
			return 0;
		}
	}
}
