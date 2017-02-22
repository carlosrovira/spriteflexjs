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
package flash.net
{
   import flash.utils.*;
   
   public dynamic class URLVariables extends Object
   {
       
      public function URLVariables(source:String = null)
      {
         super();
         if(source != null)
         {
            this.decode(source);
         }
      }
      
      public function decode(source:String) : void
      {
         var param:String = null;
         var equalsIndex:* = 0;
         var name:String = null;
         var value:String = null;
         var oldValue:* = undefined;
         var params:Array = source.split("&");
         for(var i:uint = 0; i < params.length; i++)
         {
            param = params[i];
            equalsIndex = param.indexOf("=");
            if(equalsIndex == -1)
            {
               Error.throwError(Error,2101);
            }
            else
            {
               name = unescape(param.substr(0,equalsIndex));
               value = unescape(param.substr(equalsIndex + 1));
               oldValue = this[name];
               if(oldValue != undefined)
               {
                  if(!(oldValue is Array))
                  {
                     this[name] = oldValue = [oldValue];
                  }
                  oldValue.push(value);
               }
               else
               {
                  this[name] = value;
               }
            }
         }
      }
      
      /*public function toString() : String
      {
         var name:String = null;
         var escapedName:String = null;
         var value:* = undefined;
         var i:uint = 0;
         var s:String = "";
         var first:Boolean = true;
         for(name in this)
         {
            escapedName = escapeMultiByte(name);
            value = this[name];
            if(value is Array)
            {
               for(i = 0; i < value.length; i++)
               {
                  if(!first)
                  {
                     s = s + "&";
                  }
                  s = s + escapedName;
                  s = s + "=";
                  s = s + escapeMultiByte(String(value[i]));
                  first = false;
               }
            }
            else
            {
               if(!first)
               {
                  s = s + "&";
               }
               s = s + escapedName;
               s = s + "=";
               s = s + escapeMultiByte(String(value));
               first = false;
            }
         }
         return s;
      }
      
      private function _unescape(value:String) : String
      {
         return unescapeMultiByte(value.replace(new RegExp("\\+","g")," "));
      }*/
   }
}
