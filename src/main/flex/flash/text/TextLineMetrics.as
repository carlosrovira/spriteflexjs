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
   public class TextLineMetrics extends Object
   {
       
      public var x:Number;
      
      public var width:Number;
      
      public var height:Number;
      
      public var ascent:Number;
      
      public var descent:Number;
      
      public var leading:Number;
      
      public function TextLineMetrics(x:Number, width:Number, height:Number, ascent:Number, descent:Number, leading:Number)
      {
         super();
         this.x = x;
         this.width = width;
         this.height = height;
         this.ascent = ascent;
         this.descent = descent;
         this.leading = leading;
      }
   }
}
