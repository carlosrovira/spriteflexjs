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
	
	public final class SoundTransform extends Object
	{
		
		public function SoundTransform(vol:Number = 1, panning:Number = 0)
		{
			super();
			this.volume = vol;
			this.pan = panning;
		}
		
		public function get volume():Number
		{
			return 0;
		}
		
		public function set volume(v:Number):void
		{
		
		}
		
		public function get leftToLeft():Number
		{
			return 0;
		}
		
		public function set leftToLeft(v:Number):void
		{
		
		}
		
		public function get leftToRight():Number
		{
			return 0;
		}
		
		public function set leftToRight(v:Number):void
		{
		
		}
		
		public function get rightToRight():Number
		{
			return 0;
		}
		
		public function set rightToRight(param1:Number):void
		{
		
		}
		
		public function get rightToLeft():Number
		{
			return 0;
		}
		
		public function set rightToLeft(param1:Number):void
		{
		
		}
		
		public function get pan():Number
		{
			if (this.leftToRight === 0 && this.rightToLeft === 0)
			{
				return 1 - this.leftToLeft * this.leftToLeft;
			}
			return 0;
		}
		
		public function set pan(panning:Number):void
		{
			this.leftToLeft = Math.sqrt(1 - panning);
			this.leftToRight = 0;
			this.rightToRight = Math.sqrt(1 + panning);
			this.rightToLeft = 0;
		}
	}
}
