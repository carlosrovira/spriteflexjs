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
package flash.display3D
{
	import flash.utils.ByteArray;
	
	public final class Program3D extends Object
	{
		public var fshader:WebGLShader;
		public var vshader:WebGLShader;
		public var program:WebGLProgram;
		public var gl:WebGLRenderingContext;
		private var uniformLocations:Object = { };
		private var attribLocations:Object = { };
		public function Program3D()
		{
			super();
		}
		
		public function upload(vcode:ByteArray, fcode:ByteArray):void
		{
			fshader = gl.createShader(gl.FRAGMENT_SHADER);
			vshader = gl.createShader(gl.VERTEX_SHADER);
			vcode.position = fcode.position = 0;
			gl.shaderSource(vshader, vcode.readUTFBytes(vcode.length));
			gl.compileShader(vshader);
			if (!gl.getShaderParameter(vshader,gl.COMPILE_STATUS)) {
				throw vshader+"\n"+vcode+"\n" + (gl.getShaderInfoLog(vshader));
			}
			gl.shaderSource(fshader, fcode.readUTFBytes(fcode.length));
			gl.compileShader(fshader);
			if (!gl.getShaderParameter(fshader,gl.COMPILE_STATUS)) {
				throw fcode+"\n" + (gl.getShaderInfoLog(fshader));
			}
			gl.attachShader(program, vshader);
			gl.attachShader(program, fshader);
			gl.linkProgram(program);
			if (!gl.getProgramParameter(program,gl.LINK_STATUS)) {
				throw (gl.getProgramInfoLog(program));
			}
		}
		
		public function dispose():void
		{
			gl.deleteShader(fshader);
			gl.deleteShader(vshader);
			gl.deleteProgram(program);
		}
		
		public function getUniformLocation(name:String):WebGLUniformLocation {
			var loc:WebGLUniformLocation = uniformLocations[name];
			if (loc==null) {
				loc = uniformLocations[name] = gl.getUniformLocation(program,name);
			}
			return loc;
		}
		public function getAttribLocation(name:String):Number {
			var loc:Object = attribLocations[name];
			if (loc==null) {
				loc = attribLocations[name] = gl.getAttribLocation(program,name);
			}
			var locnum:Number = Number(loc);
			gl.enableVertexAttribArray(locnum);
			return locnum;
		}
	}
}
