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
	import flash.display3D.Context3D;
	import flash.display3D.IndexBuffer3D;
	/**
	 * ...
	 * @author lizhi
	 */
	public class GLIndexBufferSet 
	{
		private var buff:IndexBuffer3D
		private var usage:Number;
		public var dirty:Boolean = true;
		public var data:Uint16Array;
		public function GLIndexBufferSet(data:Uint16Array,usage:Number) 
		{
			this.usage = usage;
			this.data = data;
			
		}
		
		public function getBuff(ctx:Context3D):IndexBuffer3D{
			//if (dirty){
			//var	buff:IndexBuffer3D = pool[data.length];
			if(buff==null){
				buff = ctx.createIndexBuffer(data.length);
				buff.gl.bindBuffer(buff.gl.ELEMENT_ARRAY_BUFFER, buff.buff);
				buff.gl.bufferData(buff.gl.ELEMENT_ARRAY_BUFFER, data, usage);
				dirty = false;
			}
			if(dirty){
				buff.gl.bindBuffer(buff.gl.ELEMENT_ARRAY_BUFFER, buff.buff);
				buff.gl.bufferSubData(buff.gl.ELEMENT_ARRAY_BUFFER,0, data);
				dirty = false;
			}
			//buff.uploadFromVector(Vector.<uint>(data), 0, data.length);
			
			return buff;
		}
	}

}