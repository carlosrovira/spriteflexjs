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
package
{
   public dynamic class Error extends Object
   {
      
      public static const length:int = 1;
      
      
      public var message:Object;
      
      public var name:String;
      
      private var _errorID:int;
      
      public function Error(message:* = "", id:* = 0)
      {
         super();
         this.message = message;
         this._errorID = id;
         this.name ;
      }
      
     public static function getErrorMessage(param1:int) : String{return null}
      
      public static function throwError(type:Class, index:uint, ... rest) : *
      {
         var i:* = 0;
         var f:* = function(match:*, pos:*, string:*):*
         {
            var arg_num:* = -1;
            switch(match.charAt(1))
            {
               case "1":
                  break;
               case "2":
                  arg_num = 1;
                  break;
               case "3":
                  arg_num = 2;
                  break;
               case "4":
                  arg_num = 3;
                  break;
               case "5":
                  arg_num = 4;
                  break;
               case "6":
               case 6:
                  arg_num = 5;
                  break;
               default:
                  arg_num = 0;
            }
            if(arg_num > -1 && rest.length > arg_num)
            {
               return rest[arg_num];
            }
            return "";
         };
         throw new type(Error.getErrorMessage(index).replace(new RegExp("%[0-9]","g"),f),index);
      }
      
     public function getStackTrace() : String{return null}
      
      public function get errorID() : int
      {
         return this._errorID;
      }
   }
}
