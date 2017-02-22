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
   public class ErrorEvent extends TextEvent
   {
      
      public static const ERROR:String = "error";
       
      private var m_errorID:int;
      
      public function ErrorEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, text:String = "", id:int = 0)
      {
         super(type,bubbles,cancelable,text);
         this.m_errorID = id;
      }
      
      public function get errorID() : int
      {
         return this.m_errorID;
      }
      
      override public function clone() : Event
      {
         return new ErrorEvent(type,bubbles,cancelable,text,this.m_errorID);
      }
      
      override public function toString() : String
      {
         return formatToString("ErrorEvent","type","bubbles","cancelable","eventPhase","text");
      }
   }
}
