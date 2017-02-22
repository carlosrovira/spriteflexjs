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
	
	public final class GraphicsEndFill extends Object implements IGraphicsFill, IGraphicsData
	{
		public var fill:IGraphicsFill;
		public var _worldMatrix:Matrix = new Matrix;
		public function GraphicsEndFill()
		{
			super();
		}
		
		public function draw(ctx:CanvasRenderingContext2D,colorTransform:ColorTransform):void
		{
			if (fill) {
				if(fill is GraphicsBitmapFill){
					var bfill:GraphicsBitmapFill = fill as GraphicsBitmapFill;
					if (bfill.matrix) {
						var m:Matrix = bfill.matrix;
					}
					ctx.globalAlpha = colorTransform.alphaMultiplier;
				}else{
					ctx.globalAlpha = 1;
				}
				if(m){
					ctx.save();
					ctx.transform(m.a, m.b, m.c, m.d, m.tx, m.ty);
				}
				ctx.fill();
				if (m) {
					ctx.restore();
				}
			}
		}
		/**
		 * @flexjsignorecoercion flash.display.GraphicsBitmapFill
		 */
		public function gldraw(ctx:GLCanvasRenderingContext2D, colorTransform:ColorTransform):void{
			if (fill) {
				/*if(fill is GraphicsBitmapFill){
					var bfill:GraphicsBitmapFill = fill as GraphicsBitmapFill;
					if (bfill.matrix) {
						var m:Matrix = bfill.matrix;
					}
					ctx.globalAlpha = colorTransform.alphaMultiplier;
				}else{
					ctx.globalAlpha = 1;
				}*/
				var m:Matrix = fill["matrix"];
				if(m){
					//ctx.save();
					_worldMatrix.copyFrom(m);
				}else{
					_worldMatrix.identity();
				}
				var temp:Matrix = ctx.matr;
				ctx.transform2(_worldMatrix);
				ctx.fill();
				ctx.matr = temp;
				//if (m) {
					//ctx.restore();
				//}
			}
		}
	}
}
