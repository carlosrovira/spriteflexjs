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
package flash.__native 
{
	import flash.display.BitmapData;
	import flash.display.Graphics;
	import flash.display.GraphicsPath;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	import flash.text.TextFormat;
	/**
	 * ...
	 * @author lizhi
	 */
	public class IRenderer 
	{
		
		public function IRenderer() 
		{
			
		}
		
		public function createPath():GraphicsPath{
			return null;
		}
		
		public function getCssColor(color:uint,alpha:Number,ct:ColorTransform,toarr:Array):Object{
			return null;
		}
		
		public function renderGraphics(ctx:CanvasRenderingContext2D,g:Graphics,m:Matrix,blendMode:String,colorTransform:ColorTransform):void{
			
		}
		
		public function renderImage(ctx:CanvasRenderingContext2D,img:BitmapData,m:Matrix,blendMode:String,colorTransform:ColorTransform):void{
			
		}
		
		public function renderText(ctx:CanvasRenderingContext2D,txt:String,textFormat:TextFormat, m:Matrix, blendMode:String, colorTransform:ColorTransform,x:Number,y:Number):void{
			
		}
		
		public function finish(ctx:CanvasRenderingContext2D):void{
			
		}
		public function start(ctx:CanvasRenderingContext2D):void{
			
		}
	}

}