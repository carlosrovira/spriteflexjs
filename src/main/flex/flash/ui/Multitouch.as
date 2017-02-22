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
package flash.ui
{
	
	public final class Multitouch extends Object
	{
		
		public function Multitouch()
		{
			super();
		}
		
		public static function get inputMode():String
		{
			return null;
		}
		
		public static function set inputMode(param1:String):void
		{
		
		}
		
		public static function get supportsTouchEvents():Boolean
		{
			return false;
		}
		
		public static function get supportsGestureEvents():Boolean
		{
			return false;
		}
		
		public static function get supportedGestures():Vector.<String>
		{
			return null;
		}
		
		public static function get maxTouchPoints():int
		{
			return 0;
		}
		
		public static function get mapTouchToMouse():Boolean
		{
			return false;
		}
		
		public static function set mapTouchToMouse(param1:Boolean):void
		{
		
		}
	}
}
