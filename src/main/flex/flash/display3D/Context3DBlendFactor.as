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
   public final class Context3DBlendFactor extends Object
   {
      
      public static const ONE:String="one";//int = gl.ONE;//
      
      public static const ZERO:String="zero";//int = gl.ZERO;//
      
      public static const SOURCE_ALPHA:String="sourceAlpha";//int = gl.SRC_ALPHA;//
      
      public static const SOURCE_COLOR:String="sourceColor";//int = gl.SRC_COLOR;//
      
      public static const ONE_MINUS_SOURCE_ALPHA:String="oneMinusSourceAlpha";//int = gl.ONE_MINUS_SRC_ALPHA;//
      
      public static const ONE_MINUS_SOURCE_COLOR:String="oneMinusSourceColor";//int = gl.ONE_MINUS_SRC_COLOR;//
      
      public static const DESTINATION_ALPHA:String="destinationAlpha";//int = gl.DST_ALPHA;//
      
      public static const DESTINATION_COLOR:String="destinationColor";//int = gl.DST_COLOR;//
      
      public static const ONE_MINUS_DESTINATION_ALPHA:String="oneMinusDestinationAlpha";//int = gl.ONE_MINUS_DST_ALPHA;//
      
      public static const ONE_MINUS_DESTINATION_COLOR:String="oneMinusDestinationColor";//int = gl.ONE_MINUS_DST_COLOR;//
       
      public function Context3DBlendFactor()
      {
         super();
      }
	  
	  public static function getGLVal(gl:WebGLRenderingContext,str:String):int {
		 switch(str) {
			case ONE:
				return gl.ONE;
			case ZERO:
				return gl.ZERO;
			case SOURCE_ALPHA:
				return gl.SRC_ALPHA;
			case SOURCE_COLOR:
				return gl.SRC_COLOR;
			case ONE_MINUS_SOURCE_ALPHA:
				return gl.ONE_MINUS_SRC_ALPHA;
			case ONE_MINUS_SOURCE_COLOR:
				return gl.ONE_MINUS_SRC_COLOR;
			case DESTINATION_ALPHA:
				return gl.DST_ALPHA;
			case DESTINATION_COLOR:
				return gl.DST_COLOR;
			case ONE_MINUS_DESTINATION_ALPHA:
				return gl.ONE_MINUS_DST_ALPHA;
			case ONE_MINUS_DESTINATION_COLOR:
				return gl.ONE_MINUS_DST_COLOR;
		 }
		 return 0;
	  }
   }
}
