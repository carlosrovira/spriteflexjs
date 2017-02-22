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
package flash.utils
{
	import flash.events.*;
	
	public class SetIntervalTimer extends Timer
	{
		
		private static var intervals:Array = [];
		
		public var id:uint;
		
		private var closure:Function;
		
		private var rest:Array;
		
		public function SetIntervalTimer(closure:Function, delay:Number, repeats:Boolean, rest:Array)
		{
			super(delay, repeats ? 0 : 1);
			this.closure = closure;
			this.rest = rest;
			addEventListener(TimerEvent.TIMER, this.onTimer);
			start();
			this.id = intervals.length + 1;
			intervals.push(this);
		}
		
		public static function clearInterval(id_to_clear:uint):void
		{
			id_to_clear--;
			if (intervals[id_to_clear] is SetIntervalTimer)
			{
				intervals[id_to_clear].stop();
				delete intervals[id_to_clear];
			}
		}
		
		private function onTimer(event:Event):void
		{
			this.closure.apply(null, this.rest);
			if (repeatCount === 1)
			{
				if (intervals[this.id - 1] == this)
				{
					delete intervals[this.id - 1];
				}
			}
		}
	}
}
