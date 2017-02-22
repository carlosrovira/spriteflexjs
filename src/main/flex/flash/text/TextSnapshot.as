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
package flash.text
{
   public class TextSnapshot extends Object
   {
       
      public function TextSnapshot()
      {
         super();
      }
      
       public function findText(param1:int, param2:String, param3:Boolean) : int{
		   return 0;
	   }
      
       public function get charCount() : int{
		   return 0;
	   }
      
       public function getSelected(param1:int, param2:int) : Boolean{
		   return true;
	   }
      
       public function getSelectedText(param1:Boolean = false) : String{
		   return null;
	   }
      
       public function getText(param1:int, param2:int, param3:Boolean = false) : String{
		   return null;
	   }
      
       public function getTextRunInfo(param1:int, param2:int) : Array{
		   return null;
	   }
      
       public function hitTestTextNearPos(param1:Number, param2:Number, param3:Number = 0) : Number{
		   return 0;
	   }
      
       public function setSelectColor(param1:uint = 16776960) : void{
		   
	   }
      
       public function setSelected(param1:int, param2:int, param3:Boolean) : void{
		   
	   }
   }
}
