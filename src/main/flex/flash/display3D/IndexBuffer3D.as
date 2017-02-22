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
   
   public final class IndexBuffer3D extends Object
   {
       public var count:int;
	   public var buff:WebGLBuffer;
	   public var gl:WebGLRenderingContext;
      public function IndexBuffer3D()
      {
         super();
      }
      
	  /**
		 * @flexjsignorecoercion Object
		 */
     public function uploadFromVector(data:Vector.<uint>, startOffset:int, count:int) : void{
		gl.bindBuffer(gl.ELEMENT_ARRAY_BUFFER, buff);
		gl.bufferData(gl.ELEMENT_ARRAY_BUFFER, new Uint16Array(data as Object), gl.STATIC_DRAW);	
	 }
      
     public function uploadFromByteArray(data:ByteArray, byteArrayOffset:int, startOffset:int, count:int) : void{}
      
     public function dispose() : void{
		 gl.deleteBuffer(buff);
		 buff=null
	 }
   }
}
