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
package flash.events
{
	
	public class Event extends Object
	{
		
		public static const ACTIVATE:String = "activate";
		
		public static const ADDED:String = "added";
		
		public static const ADDED_TO_STAGE:String = "addedToStage";
		
		public static const BROWSER_ZOOM_CHANGE:String = "browserZoomChange";
		
		public static const CANCEL:String = "cancel";
		
		public static const CHANGE:String = "change";
		
		public static const CLEAR:String = "clear";
		
		public static const CLOSE:String = "close";
		
		public static const COMPLETE:String = "complete";
		
		public static const CONNECT:String = "connect";
		
		public static const COPY:String = "copy";
		
		public static const CUT:String = "cut";
		
		public static const DEACTIVATE:String = "deactivate";
		
		public static const ENTER_FRAME:String = "enterFrame";
		
		public static const FRAME_CONSTRUCTED:String = "frameConstructed";
		
		public static const EXIT_FRAME:String = "exitFrame";
		
		public static const FRAME_LABEL:String = "frameLabel";
		
		public static const ID3:String = "id3";
		
		public static const INIT:String = "init";
		
		public static const MOUSE_LEAVE:String = "mouseLeave";
		
		public static const OPEN:String = "open";
		
		public static const PASTE:String = "paste";
		
		public static const REMOVED:String = "removed";
		
		public static const REMOVED_FROM_STAGE:String = "removedFromStage";
		
		public static const RENDER:String = "render";
		
		public static const RESIZE:String = "resize";
		
		public static const SCROLL:String = "scroll";
		
		public static const TEXT_INTERACTION_MODE_CHANGE:String = "textInteractionModeChange";
		
		public static const SELECT:String = "select";
		
		public static const SELECT_ALL:String = "selectAll";
		
		public static const SOUND_COMPLETE:String = "soundComplete";
		
		public static const TAB_CHILDREN_CHANGE:String = "tabChildrenChange";
		
		public static const TAB_ENABLED_CHANGE:String = "tabEnabledChange";
		
		public static const TAB_INDEX_CHANGE:String = "tabIndexChange";
		
		public static const UNLOAD:String = "unload";
		
		public static const FULLSCREEN:String = "fullScreen";
		
		public static const CONTEXT3D_CREATE:String = "context3DCreate";
		
		public static const TEXTURE_READY:String = "textureReady";
		
		public static const VIDEO_FRAME:String = "videoFrame";
		
		public static const SUSPEND:String = "suspend";
		
		public static const CHANNEL_MESSAGE:String = "channelMessage";
		
		public static const CHANNEL_STATE:String = "channelState";
		
		public static const WORKER_STATE:String = "workerState";
		
		private var _type:String;
		
		private var _bubbles:Boolean;
		private var _cancelable:Boolean;
		private var _target:Object;
		private var _currentTarget:Object;

		public function Event(type:String, bubbles:Boolean = false, cancelable:Boolean = false)
		{
			super();
			this.ctor(type, bubbles, cancelable);
		}
		
		public function formatToString(className:String, ... args):String
		{
			return null
		}
		
		private function ctor(type:String, bubbles:Boolean, cancelable:Boolean):void
		{
			_type = type;
			_bubbles = bubbles;
			_cancelable = cancelable;
		}
		
		public function clone():Event
		{
			return new Event(this.type, this.bubbles, this.cancelable);
		}
		
		public function toString():String
		{
			return this.formatToString("Event", "type", "bubbles", "cancelable", "eventPhase");
		}
		
		public function get type():String  { return _type }
		
		public function get bubbles():Boolean  { return _bubbles }
		
		public function get cancelable():Boolean  { return _cancelable }
		
		public function get target():Object  { return _target }
		
		public function set target(value:Object):void  { _target = value }
		
		public function get currentTarget():Object  { return _currentTarget }
		
		public function set currentTarget(value:Object):void  { _currentTarget = value }
		
		public function get eventPhase():uint  { return 0 }
		
		public function stopPropagation():void
		{
		}
		
		public function stopImmediatePropagation():void
		{
		}
		
		public function preventDefault():void
		{
		}
		
		public function isDefaultPrevented():Boolean  { return false }
	}
}
