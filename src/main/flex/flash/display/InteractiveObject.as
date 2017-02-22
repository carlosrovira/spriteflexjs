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
package flash.display
{
	import flash.events.Event;
	import flash.geom.Rectangle;
	
	public class InteractiveObject extends DisplayObject
	{
		private var _mouseEnabled:Boolean = true;
		private var _doubleClickEnabled:Boolean = false;
		public function InteractiveObject()
		{
			super();
		}
		
		public function get tabEnabled():Boolean  { return true }
		
		public function set tabEnabled(param1:Boolean):void  {/**/ }
		
		public function get tabIndex():int  { return 0 }
		
		public function set tabIndex(param1:int):void  {/**/ }
		
		public function get focusRect():Object  { return null }
		
		public function set focusRect(param1:Object):void  {/**/ }
		
		public function get mouseEnabled():Boolean  { return _mouseEnabled }
		
		public function set mouseEnabled(v:Boolean):void  { _mouseEnabled = v; }
		
		public function get doubleClickEnabled():Boolean  { return _doubleClickEnabled }
		
		public function set doubleClickEnabled(v:Boolean):void  { _doubleClickEnabled = v; }
		
		// public function get accessibilityImplementation() : AccessibilityImplementation;
		
		//public function set accessibilityImplementation(param1:AccessibilityImplementation) : void;
		
		public function get softKeyboardInputAreaOfInterest():Rectangle  { return null }
		
		public function set softKeyboardInputAreaOfInterest(param1:Rectangle):void  {/**/ }
		
		public function get needsSoftKeyboard():Boolean  { return false }
		
		public function set needsSoftKeyboard(param1:Boolean):void  {/**/ }
		
		public function requestSoftKeyboard():Boolean  { return false }
	
		//public function get contextMenu() : ContextMenu;
	
		//public function set contextMenu(param1:ContextMenu) : void;
	}
}
