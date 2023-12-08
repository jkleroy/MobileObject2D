#tag Module
Protected Module Object2D_Module
	#tag Method, Flags = &h21
		Private Sub DrawArcShape(g As Graphics, obj As ArcShapeMobile, deltaX As Double, deltaY As Double)
		  
		  g.Translate(deltaX, deltaY)
		  g.Scale(obj.Scale, obj.Scale)
		  
		  if obj.Rotation <> 0.0 then
		    g.Rotate(obj.Rotation, obj.X, obj.Y)
		  end if
		  
		  Dim path As new GraphicsPath
		  
		  path.MoveToPoint(obj.X, obj.Y)
		  'path.AddLineToPoint(
		  
		  path.AddArc(obj.X, obj.Y, obj.Width/2, obj.StartAngle, obj.StartAngle+obj.ArcAngle, False)
		  
		  'path.ad(obj.X + deltaX, obj.Y + deltaY, obj.Width, obj.Height)
		  
		  //TODO rotation
		  //TODO scale
		  
		  g.Transparency = 100-obj.FillOpacity
		  g.DrawingColor = obj.FillColor
		  g.FillPath(path)
		  
		  
		  
		  
		  
		  if obj.BorderWidth > 0.0 then
		    
		    g.SaveState
		    g.DrawingColor = obj.BorderColor
		    g.Transparency = 100-obj.BorderOpacity
		    g.PenSize = obj.BorderWidth
		    g.DrawPath(path)
		    g.RestoreState
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawCurveShape(g As Graphics, obj As CurveShapeMobile, deltaX As Double, deltaY As Double)
		  
		  
		  
		  
		  
		  g.Translate(deltaX, deltaY)
		  g.Scale(obj.Scale, obj.Scale)
		  
		  if obj.Rotation <> 0.0 then
		    g.Rotate(obj.Rotation, obj.X, obj.Y)
		  end if
		  
		  Dim path As new GraphicsPath
		  path.MoveToPoint(obj.X, obj.Y)
		  'path.MoveToPoint(obj.X, obj.Y)
		  
		  if obj.Order = 0 then
		    //A straight line from x,y to x2,y2 is used.
		    path.AddLineToPoint(obj.x2, obj.y2)
		    
		  Elseif obj.Order = 1 then
		    //A quadratic Bezier curve is drawn using one control point.
		    
		    path.AddQuadraticCurveToPoint(obj.X + obj.ControlX(0), obj.Y + obj.controlY(0), obj.x2, obj.y2)
		    
		    
		  Elseif obj.Order = 2 then
		    //A cubic Bezier curve is drawn using two control points.
		    
		    path.AddCurveToPoint(obj.X + obj.ControlX(0), obj.Y + obj.controlY(0), obj.X + obj.ControlX(1), obj.Y + obj.controlY(1), obj.x2, obj.y2)
		    
		  end if
		  
		  
		  
		  if obj.FillOpacity > 0 then
		    g.Transparency = 100-obj.FillOpacity
		    g.DrawingColor = obj.FillColor
		    g.FillPath(path)
		  end if
		  
		  
		  
		  if obj.BorderWidth > 0.0 then
		    
		    
		    g.DrawingColor = obj.BorderColor
		    g.Transparency = 100-obj.BorderOpacity
		    g.PenSize = obj.BorderWidth
		    g.DrawPath(path)
		    
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawFigureShape(g As Graphics, figure As FigureShapeMobile, deltaX As Double, deltaY As Double)
		  if figure.Count = 0 then Return
		  
		  
		  
		  g.Translate(deltaX, deltaY)
		  
		  if figure.Rotation <> 0.0 then
		    g.Rotate(figure.Rotation, figure.X, figure.Y)
		  end if
		  
		  Dim path As new GraphicsPath
		  
		  For i as Integer = 0 to figure.Count-1
		    
		    Dim obj as CurveShapeMobile = figure.CurveAt(i)
		    
		    if path.IsEmpty then
		      path.MoveToPoint(obj.x, obj.y)
		      
		    end if
		    
		    
		    if obj.Order = 0 then
		      //A straight line from x,y to x2,y2 is used.
		      path.AddLineToPoint(obj.x2, obj.y2)
		      
		    Elseif obj.Order = 1 then
		      //A quadratic Bezier curve is drawn using one control point.
		      
		      path.AddQuadraticCurveToPoint(obj.X + obj.ControlX(0), obj.Y + obj.controlY(0), obj.x2, obj.y2)
		      
		      
		    Elseif obj.Order = 2 then
		      //A cubic Bezier curve is drawn using two control points.
		      
		      path.AddCurveToPoint(obj.X + obj.ControlX(0), obj.Y + obj.controlY(0), obj.X + obj.ControlX(1), obj.Y + obj.controlY(1), obj.x2, obj.y2)
		      
		    end if
		    
		    
		  Next
		  
		  
		  
		  if figure.FillOpacity > 0 then
		    g.Transparency = 100-figure.FillOpacity
		    g.DrawingColor = figure.FillColor
		    g.FillPath(path, true)
		  end if
		  
		  
		  
		  if figure.BorderWidth > 0.0 then
		    
		    
		    g.DrawingColor = figure.BorderColor
		    g.Transparency = 100-figure.BorderOpacity
		    g.PenSize = figure.BorderWidth
		    g.DrawPath(path, true)
		    
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawGroup2D(g As Graphics, obj As Group2DMobile, deltaX As Double, deltaY As Double)
		  
		  
		  
		  //TODO Scale
		  //TODO Rotation
		  
		  if obj.Rotation <> 0.0 then
		    g.Rotate(obj.Rotation, obj.X, obj.Y)
		  end if
		  
		  For i as Integer = 0 to obj.Count-1
		    
		    g.DrawObject(obj.Item(i), deltaX + obj.X, deltaY + obj.Y)
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DrawObject(extends g As Graphics, object2d As Object2DMobile, deltaX As Double = 0.0, deltaY As Double = 0.0)
		  
		  g.SaveState
		  
		  if object2d isa Group2DMobile then
		    
		    DrawGroup2D(g, Group2DMobile(object2d), deltaX, deltaY)
		    
		  Elseif object2d isa RoundRectShapeMobile then
		    
		    DrawRoundRectShape(g, RoundRectShapeMobile(object2d), deltaX, deltaY)
		    
		  Elseif Object2d isa RectShapeMobile then
		    
		    DrawRectShape(g, RectShapeMobile(object2d), deltaX, deltaY)
		    
		  Elseif object2d isa OvalShapeMobile then
		    
		    DrawOvalShape(g, OvalShapeMobile(object2d), deltaX, deltaY)
		    
		  Elseif Object2d isa ArcShapeMobile then
		    
		    DrawArcShape(g, ArcShapeMobile(object2d), deltaX, deltaY)
		    
		  Elseif object2d isa CurveShapeMobile then
		    
		    DrawCurveShape(g, CurveShapeMobile(object2d), deltaX, deltaY)
		    
		  Elseif object2d isa FigureShapeMobile then
		    
		    DrawFigureShape(g, FigureShapeMobile(object2d), deltaX, deltaY)
		    
		  Else
		    Break
		    
		  end if
		  
		  g.RestoreState
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawOvalShape(g As Graphics, obj As OvalShapeMobile, deltaX As Double, deltaY As Double)
		  
		  
		  g.Translate(deltaX, deltaY)
		  g.Scale(obj.Scale, obj.Scale)
		  
		  if obj.Rotation <> 0.0 then
		    g.Rotate(obj.Rotation, obj.X, obj.Y)
		  end if
		  
		  'Dim path As new GraphicsPath
		  
		  'path.ad(obj.X + deltaX, obj.Y + deltaY, obj.Width, obj.Height)
		  
		  //TODO rotation
		  //TODO scale
		  
		  g.Transparency = 100-obj.FillOpacity
		  g.DrawingColor = obj.FillColor
		  g.FillOval(obj.X - obj.Width/2.0, obj.Y - obj.Height/2.0, obj.Width, obj.Height)
		  
		  
		  
		  if obj.BorderWidth > 0.0 then
		    
		    g.SaveState
		    g.DrawingColor = obj.BorderColor
		    g.Transparency = 100-obj.BorderOpacity
		    g.PenSize = obj.BorderWidth
		    g.DrawOval(obj.X - obj.Width/2.0, obj.Y - obj.Height/2.0, obj.Width, obj.Height)
		    g.RestoreState
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawRectShape(g As Graphics, obj As RectShapeMobile, deltaX As Double, deltaY As Double)
		  
		  
		  g.Translate(deltaX, deltaY)
		  g.Scale(obj.Scale, obj.Scale)
		  
		  if obj.Rotation <> 0.0 then
		    g.Rotate(obj.Rotation, obj.X, obj.Y)
		  end if
		  
		  'Dim path As new GraphicsPath
		  
		  'path.AddRectangle(obj.X + deltaX, obj.Y + deltaY, obj.Width, obj.Height)
		  
		  
		  
		  
		  g.Transparency = 100-obj.FillOpacity
		  g.DrawingColor = obj.FillColor
		  
		  Var x, y As Double
		  x = obj.X - obj.Width/2.0
		  y = obj.Y - obj.Height/2.0
		  
		  g.FillRectangle(x, y, obj.Width, obj.Height)
		  
		  if obj.BorderWidth > 0.0 then
		    
		    g.SaveState
		    g.DrawingColor = obj.BorderColor
		    g.Transparency = 100-obj.BorderOpacity
		    g.PenSize = obj.BorderWidth
		    g.DrawRectangle(x, y, obj.Width, obj.Height)
		    g.RestoreState
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawRoundRectShape(g As Graphics, obj As RoundRectShapeMobile, deltaX As Double, deltaY As Double)
		  
		  g.Translate(deltaX, deltaY)
		  g.Scale(obj.Scale, obj.Scale)
		  
		  if obj.Rotation <> 0.0 then
		    g.Rotate(obj.Rotation, obj.X, obj.Y)
		  end if
		  
		  'Dim path As new GraphicsPath
		  
		  'path.AddRoundRectangle(obj.X + deltaX, obj.Y + deltaY, obj.Width, obj.Height, obj.CornerWidth, obj.CornerHeight)
		  
		  //TODO rotation
		  //TODO scale
		  
		  Var x, y As Double
		  x = obj.X - obj.Width/2.0
		  y = obj.Y - obj.Height/2.0
		  
		  g.Transparency = 100-obj.FillOpacity
		  g.DrawingColor = obj.FillColor
		  'g.FillPath(path)
		  
		  g.FillRoundRectangle(x, y, obj.Width, obj.Height, obj.CornerWidth, obj.CornerHeight)
		  
		  if obj.BorderWidth > 0.0 then
		    
		    g.SaveState
		    g.DrawingColor = obj.BorderColor
		    g.Transparency = 100-obj.BorderOpacity
		    g.PenSize = obj.BorderWidth
		    'g.DrawPath(path)
		    g.DrawRoundRectangle(x, y, obj.Width, obj.Height, obj.CornerWidth, obj.CornerHeight)
		    g.RestoreState
		    
		  end if
		  
		  
		End Sub
	#tag EndMethod


	#tag Note, Name = Source
		
		https://github.com/jkleroy/MobileObject2D
	#tag EndNote


	#tag Constant, Name = kVersion, Type = Double, Dynamic = False, Default = \"0.1", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
