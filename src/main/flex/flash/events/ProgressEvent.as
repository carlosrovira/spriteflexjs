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
	
	public class ProgressEvent extends Event
	{
		
		public static const PROGRESS:String = "progress";
		
		public static const SOCKET_DATA:String = "socketData";
		
		private var m_bytesLoaded:Number;
		
		private var m_bytesTotal:Number;
		
		public function ProgressEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, bytesLoaded:Number = 0, bytesTotal:Number = 0)
		{
			super(type, bubbles, cancelable);
			this.m_bytesLoaded = bytesLoaded;
			this.m_bytesTotal = bytesTotal;
		}
		
		override public function clone():Event
		{
			return new ProgressEvent(type, bubbles, cancelable, this.m_bytesLoaded, this.m_bytesTotal);
		}
		
		override public function toString():String
		{
			return formatToString("ProgressEvent", "type", "bubbles", "cancelable", "eventPhase", "bytesLoaded", "bytesTotal");
		}
		
		public function get bytesLoaded():Number
		{
			return this.m_bytesLoaded;
		}
		
		public function set bytesLoaded(value:Number):void
		{
			this.m_bytesLoaded = value;
		}
		
		public function get bytesTotal():Number
		{
			return this.m_bytesTotal;
		}
		
		public function set bytesTotal(value:Number):void
		{
			this.m_bytesTotal = value;
		}
	}
}
