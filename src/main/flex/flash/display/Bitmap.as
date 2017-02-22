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
package flash.display
{
	import flash.events.MouseEvent;
	import flash.geom.Matrix;
	import flash.geom.Point;
	import flash.geom.Rectangle;
	
	public class Bitmap extends DisplayObject
	{
		private var _bitmapData:BitmapData;
		
		public function Bitmap(bitmapData:BitmapData = null, pixelSnapping:String = "auto", smoothing:Boolean = false)
		{
			super();
			this.ctorbmp(bitmapData, pixelSnapping, smoothing);
		}
		
		private function ctorbmp(bitmapData:BitmapData, pixelSnapping:String, smoothing:Boolean):void
		{
			_bitmapData = bitmapData;
		}
		
		public function get pixelSnapping():String  { return null }
		
		public function set pixelSnapping(param1:String):void
		{
		
		}
		
		public function get smoothing():Boolean  { return false }
		
		public function set smoothing(param1:Boolean):void
		{
		
		}
		
		public function get bitmapData():BitmapData  { return _bitmapData }
		
		public function set bitmapData(param1:BitmapData):void
		{
			_bitmapData = param1;
			SpriteFlexjs.dirtyGraphics = true;
		}
		
		override public function __getRect():Rectangle 
		{
			if (bitmapData) return bitmapData.rect;
			return null;
		}
		
		override public function __update(ctx:CanvasRenderingContext2D):void
		{
			//super.__update();
			if (/*stage &&*/ _bitmapData&&_bitmapData.image&&visible)
			{
				var m:Matrix = transform.concatenatedMatrix;
				
				/*var w:Number = _bitmapData.width;
				var h:Number = _bitmapData.height;
				var a:Number = m.a * w;
				var b:Number = m.c * h;
				var c:Number = m.d * h;
				var d:Number = m.b * w;
				var minX:Number = Math.min(0, a, b, a + b)+m.tx;
				var maxX:Number = Math.max(0, a, b, a + b)+m.tx;
				var minY:Number = Math.min(0, c, d, c + d)+m.ty;
				var maxY:Number = Math.max(0, c, d, c + d)+m.ty;
				var sw:Number = stage.stageWidth;
				var sh:Number = stage.stageHeight;
				
				if (maxX > 0 && maxY > 0 && minX < sw && minY < sh){*/
					SpriteFlexjs.renderer.renderImage(ctx, _bitmapData, m, blendMode, transform.concatenatedColorTransform);
					SpriteFlexjs.drawCounter++;
				//}
			}
		}
		
		override protected function __doMouse(e:flash.events.MouseEvent):DisplayObject 
		{
			if (/*stage&&*/visible) {
				/*var obj:DisplayObject = super.__doMouse(e);
				if (obj) {
					return obj;
				}*/
				if (hitTestPoint(stage.mouseX, stage.mouseY)) {
					return this;
				}
			}
			return null;
		}
	}
}
