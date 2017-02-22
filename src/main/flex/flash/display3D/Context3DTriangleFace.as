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
	
	public final class Context3DTriangleFace extends Object
	{
		
		public static const NONE:String = "none";//int =gl.NONE;//
		
		public static const BACK:String = "back";//int = gl.BACK;//
		
		public static const FRONT:String = "front";//int = gl.FRONT;//
		
		public static const FRONT_AND_BACK:String = "frontAndBack";//int = gl.FRONT_AND_BACK; //
		
		public function Context3DTriangleFace()
		{
			super();
		}
		
		public static function getGLVal(gl:WebGLRenderingContext,str:String):int
		{
			switch (str)
			{
			case NONE: 
				return gl.NONE;
			case BACK: 
				return gl.FRONT;
			case FRONT: 
				return gl.BACK;
			case FRONT_AND_BACK: 
				return gl.FRONT_AND_BACK;
			}
			return 0;
		}
	}
}
