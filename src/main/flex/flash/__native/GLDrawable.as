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
package flash.__native 
{
	/**
	 * ...
	 * @author lizhi
	 */
	public class GLDrawable 
	{
		public var pos:GLVertexBufferSet;
		public var uv:GLVertexBufferSet;
		private var _color:GLVertexBufferSet;
		private var usage:Number;
		public var index:GLIndexBufferSet;
		public var numTriangles:int = -1
		public function GLDrawable(posData:Float32Array,uvData:Float32Array,iData:Uint16Array,usage:Number) 
		{
			this.usage = usage;
			pos = new GLVertexBufferSet(posData, 2,usage);
			uv = new GLVertexBufferSet(uvData, 2,usage);
			index = new GLIndexBufferSet(iData,usage);
		}
		
		public function get color():GLVertexBufferSet 
		{
			if (_color==null||_color.data.length!=pos.data.length/2){
				//_color = new GLVertexBufferSet(new Float32Array(pos.data.length * 2), 4, usage);
				_color = new GLVertexBufferSet(new Uint32Array(pos.data.length /2), 4, usage);
			}
			return _color;
		}
		
		public function set color(v:GLVertexBufferSet):void{
			_color = v;
		}
	}

}