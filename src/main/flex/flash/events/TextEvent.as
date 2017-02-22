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
   public class TextEvent extends Event
   {
      
      public static const LINK:String = "link";
      
      public static const TEXT_INPUT:String = "textInput";
       
      private var m_text:String;
      
      public function TextEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, text:String = "")
      {
         super(type,bubbles,cancelable);
         this.m_text = text;
      }
      
      public function get text() : String
      {
         return this.m_text;
      }
      
      public function set text(value:String) : void
      {
         this.m_text = value;
      }
      
      override public function clone() : Event
      {
         var te:TextEvent = new TextEvent(type,bubbles,cancelable,this.m_text);
         te.copyNativeData(this);
         return te;
      }
      
      override public function toString() : String
      {
         return formatToString("TextEvent","type","bubbles","cancelable","eventPhase","text");
      }
      
     private function copyNativeData(param1:TextEvent) : void{}
   }
}
