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
   public class VideoTextureEvent extends Event
   {
      
      public static const RENDER_STATE:String = "renderState";
       
      private var m_status:String;
      
      private var m_colorSpace:String;
      
      public var codecInfo:String;
      
      public function VideoTextureEvent(type:String, bubbles:Boolean = false, cancelable:Boolean = false, status:String = null, colorSpace:String = null)
      {
         super(type,bubbles,cancelable);
         this.m_status = status;
         this.m_colorSpace = colorSpace;
      }
      public function get status() : String
      {
         return this.m_status;
      }
      public function get colorSpace() : String
      {
         return this.m_colorSpace;
      }
   }
}
