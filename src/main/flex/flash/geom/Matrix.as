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
package flash.geom
{
	
	public class Matrix
	{
		
		public var a:Number;
		public var b:Number;
		public var c:Number;
		public var d:Number;
		public var tx:Number;
		public var ty:Number;
		private var t0:Number;
		private var t1:Number;
		private var t2:Number;
		private var t3:Number;
		public function Matrix(a:Number = 1, b:Number = 0, c:Number = 0, d:Number = 1, tx:Number = 0, ty:Number = 0)
		{
			super();
			this.a = a;
			this.b = b;
			this.c = c;
			this.d = d;
			this.tx = tx;
			this.ty = ty;
		}
		
		public function clone():Matrix
		{
			return new Matrix(a, b, c, d, tx, ty);
		}
		
		public function concat(m:Matrix):void
		{
			t0 = a;
			a = a * m.a + b * m.c;
			b = t0 * m.b + b * m.d;
			
			t0 = c;
			c = c * m.a + d * m.c;
			d = t0 * m.b + d * m.d;

			t0 = tx;
			tx = tx * m.a + ty * m.c + m.tx;
			ty = t0 * m.b + ty * m.d + m.ty;
		}
		
		public function invert():void
		{
			if (b === 0 && c === 0)
			{
				a = 1 / a;
				d = 1 / d;
				tx *= -a;
				ty *= -d;
			}
			else
			{
				var det:Number = a * d - b * c;
				if (det === 0)
				{
					a = d = 1;
					b = c = 0;
					tx = ty = 0;
				}else{
					det = 1 / det;
					t0 = a;
					t1 = b;
					t2 = c;
					t3 = d;
					a = t3 * det;
					b = -t1 * det;
					c = -t2 * det;
					d = t0 * det;
					t0 = -(b * tx + d * ty);
					tx = -(a * tx + c * ty);
					ty = t0;
				}
			}
		}
		
		public function identity():void 
		{
			a = d = 1;
			b = c = 0;
			tx = ty = 0;
		}
		
		public function createBox(scaleX:Number, scaleY:Number, rotation:Number = 0, tx:Number = 0, ty:Number = 0):void
		{
			var u:Number = Math.cos(rotation);
			var v:Number = Math.sin(rotation);
			a = u * scaleX;
			b = v * scaleY;
			c = -v * scaleX;
			d = u * scaleY;
			tx = tx;
			ty = ty;
		}
		
		public function createGradientBox(width:Number, height:Number, rotation:Number = 0, tx:Number = 0, ty:Number = 0):void
		{
			this.createBox(width / 1638.4, height / 1638.4, rotation, tx + width / 2, ty + height / 2);
		}
		
		public function rotate(angle:Number):void
		{
			var u:Number = Math.cos(angle);
			var v:Number = Math.sin(angle);
			t0 = a;
			t1 = c;
			t2 = tx;
			a = u * a - v * b;
			b = v * t0 + u * b;
			c = u * c - v * d;
			d = v * t1 + u * d;
			tx = u * tx - v * ty;
			ty = v * t2 + u * ty;
		}
		
		public function translate(dx:Number, dy:Number):void
		{
			tx += dx;
			ty += dy;
		}
		
		public function scale(sx:Number, sy:Number):void
		{
			a *= sx;
			b *= sy;
			c *= sx;
			d *= sy;
			tx *= sx;
			ty *= sy;
		}
		
		public function deltaTransformPoint(point:Point):Point
		{
			return new Point(a * point.x + c * point.y, d * point.y + b * point.x);
		}
		
		public function transformPoint(point:Point):Point
		{
			return new Point(a * point.x + c * point.y + tx, d * point.y + b * point.x + ty);
		}
		
		public function toString():String
		{
			return "(a=" + a + ", b=" + b + ", c=" + c + ", d=" + d + ", tx=" + tx + ", ty=" + ty + ")";
		}
		
		public function copyFrom(sourceMatrix:Matrix):void
		{
			a = sourceMatrix.a;
			b = sourceMatrix.b;
			c = sourceMatrix.c;
			d = sourceMatrix.d;
			tx = sourceMatrix.tx;
			ty = sourceMatrix.ty;
		}
		
		public function setTo(aa:Number, ba:Number, ca:Number, da:Number, txa:Number, tya:Number):void
		{
			a = aa;
			b = ba;
			c = ca;
			d = da;
			tx = txa;
			ty = tya;
		}
		
		public function copyRowTo(row:uint, vector3D:Vector3D):void
		{
			switch (row)
			{
			case 0: 
				break;
			case 1: 
				vector3D.x = b;
				vector3D.y = d;
				vector3D.z = ty;
				break;
			case 2: 
			case 3: 
				vector3D.x = 0;
				vector3D.y = 0;
				vector3D.z = 1;
				break;
			default: 
				vector3D.x = a;
				vector3D.y = c;
				vector3D.z = tx;
			}
		}
		
		public function copyColumnTo(column:uint, vector3D:Vector3D):void
		{
			switch (column)
			{
			case 0: 
				break;
			case 1: 
				vector3D.x = c;
				vector3D.y = d;
				vector3D.z = 0;
				break;
			case 2: 
			case 3: 
				vector3D.x = tx;
				vector3D.y = ty;
				vector3D.z = 1;
				break;
			default: 
				vector3D.x = a;
				vector3D.y = b;
				vector3D.z = 0;
			}
		}
		
		public function copyRowFrom(row:uint, vector3D:Vector3D):void
		{
			switch (row)
			{
			case 0: 
				break;
			case 1: 
			case 2: 
				b = vector3D.x;
				d = vector3D.y;
				ty = vector3D.z;
				break;
			default: 
				a = vector3D.x;
				c = vector3D.y;
				tx = vector3D.z;
			}
		}
		
		public function copyColumnFrom(column:uint, vector3D:Vector3D):void
		{
			switch (column)
			{
			case 0: 
				break;
			case 1: 
			case 2: 
				b = vector3D.x;
				d = vector3D.y;
				ty = vector3D.z;
				break;
			default: 
				a = vector3D.x;
				c = vector3D.y;
				tx = vector3D.z;
			}
		}
	}
}
