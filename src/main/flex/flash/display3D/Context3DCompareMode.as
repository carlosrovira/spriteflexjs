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
	
	public final class Context3DCompareMode extends Object
	{
		
		public static const ALWAYS:String = "always";//int = gl.ALWAYS;//
		
		public static const NEVER:String = "never";//int = gl.NEAREST;//
		
		public static const LESS:String = "less";//int = gl.LESS;//
		
		public static const LESS_EQUAL:String = "lessEqual";//int = gl.LESS|gl.EQUAL;//
		
		public static const EQUAL:String = "equal";//int = gl.EQUAL;//
		
		public static const GREATER_EQUAL:String = "greaterEqual";//int = gl.GREATER|gl.EQUAL;//
		
		public static const GREATER:String = "greater";//int = gl.GREATER;//
		
		public static const NOT_EQUAL:String = "notEqual";//int = gl.NOTEQUAL;//
		
		public function Context3DCompareMode()
		{
			super();
		}
		
		public static function getGLVal(gl:WebGLRenderingContext,str:String):int
		{
			switch (str)
			{
				case ALWAYS: 
					return gl.ALWAYS;
				case NEVER: 
					return gl.NEAREST;
				case LESS: 
					return gl.LESS;
				case LESS_EQUAL: 
					return gl.LESS | gl.EQUAL;
				case EQUAL: 
					return gl.EQUAL;
				case GREATER_EQUAL: 
					return gl.GREATER | gl.EQUAL;
				case GREATER: 
					return gl.GREATER;
				case NOT_EQUAL: 
					return gl.NOTEQUAL;
			}
			
			return 0;
		}
	}
}
