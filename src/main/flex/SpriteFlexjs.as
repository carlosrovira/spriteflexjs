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
package 
{
	import flash.__native.BaseRenderer;
	import flash.__native.IRenderer;
	/**
	 * ...
	 * @author lizhi
	 */
	public class SpriteFlexjs 
	{
		public static var stageWidth:Number = 800;
		public static var stageHeight:Number = 600;
		public static var autoSize:Boolean = false;
		public static var startTime:Number = 0;
		public static var drawCounter:int;
		public static var batDrawCounter:int;
		public static var debug:Boolean = false;
		public static var wmode:String = "direct";//direct,gpu
		public static var renderer:IRenderer = new BaseRenderer;
		public static var dirtyGraphics:Boolean = true;
		public static var requestAnimationFrame:Function =
			window["requestAnimationFrame"]       ||
			window["webkitRequestAnimationFrame"] ||
			window["mozRequestAnimationFrame"]    ||
			window["oRequestAnimationFrame"] ||
			window["msRequestAnimationFrame"] ||
			function(callback):void {
				setTimeout(callback, 1000 / 60);
			};

		public function SpriteFlexjs() 
		{
			
		}
		
	}

}