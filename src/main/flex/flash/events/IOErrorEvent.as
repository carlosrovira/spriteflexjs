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
package flash.events
{
   public class IOErrorEvent extends ErrorEvent
   {
      
      public static const IO_ERROR:String = "ioError";
      
      [Inspectable(environment="none")]
      public static const NETWORK_ERROR:String = "networkError";
      
      [Inspectable(environment="none")]
      public static const DISK_ERROR:String = "diskError";
      
      [Inspectable(environment="none")]
      public static const VERIFY_ERROR:String = "verifyError";
       
      public function IOErrorEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, text:String = "", id:int = 0)
      {
         super(type,bubbles,cancelable,text,id);
      }
      
      override public function clone() : Event
      {
         return new IOErrorEvent(type,bubbles,cancelable,text,errorID);
      }
      
      override public function toString() : String
      {
         return formatToString("IOErrorEvent","type","bubbles","cancelable","eventPhase","text");
      }
   }
}
