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
	import flash.__native.GLCanvasRenderingContext2D;
	import flash.geom.ColorTransform;
	import flash.geom.Matrix;
	
	public final class GraphicsBitmapFill extends Object implements IGraphicsFill, IGraphicsData
	{
		
		public var bitmapData:BitmapData;
		
		public var matrix:Matrix;
		
		public var repeat:Boolean;
		
		public var smooth:Boolean;
		
		private var pattern:CanvasPattern;
		
		public function GraphicsBitmapFill(bitmapData:BitmapData = null, matrix:Matrix = null, repeat:Boolean = true, smooth:Boolean = false)
		{
			super();
			this.bitmapData = bitmapData;
			this.matrix = matrix;
			this.repeat = repeat;
			this.smooth = smooth;
		}
		
		/**
		 * @flexjsignorecoercion String
		 */
		public function draw(ctx:CanvasRenderingContext2D,colorTransform:ColorTransform):void
		{
			if (pattern==null&&bitmapData) {
				pattern = ctx.createPattern(bitmapData.image, this.repeat ? "repeat" : "no-repeat");
			}
			ctx.fillStyle = pattern as String;
		}
		
		/**
		 * @flexjsignorecoercion String
		 */
		public function gldraw(ctx:GLCanvasRenderingContext2D, colorTransform:ColorTransform):void{
			if (pattern==null&&bitmapData) {
				pattern = ctx.createPattern(bitmapData.image, this.repeat ? "repeat" : "no-repeat");
			}
			ctx.fillStyleIsImage = true;
			ctx.fillStyle = pattern as String;
		}
	}
}
