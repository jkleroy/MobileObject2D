#tag Class
Class CurveShapeMobile
Inherits Object2DMobile
	#tag CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0
		Sub Constructor()
		  self.BorderOpacity = 100
		  self.FillOpacity = 0
		  self.BorderWidth = 1.0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetPath() As GraphicsPath
		  
		  Dim path As new GraphicsPath
		  
		  path.MoveToPoint(self.X, self.Y)
		  
		  if Order = 0 then
		    //A straight line from x,y to x2,y2 is used.
		    path.AddLineToPoint(x2, y2)
		    
		  Elseif Order = 1 then
		    //A quadratic Bezier curve is drawn using one control point.
		    
		    path.AddQuadraticCurveToPoint(ControlX(0), controlY(0), x2, y2)
		    
		    
		  Elseif Order = 2 then
		    //A cubic Bezier curve is drawn using two control points.
		    
		    path.AddCurveToPoint(controlX(0), controlY(0), controlX(1), controlY(1), x2, y2)
		    
		  end if
		  
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		ControlX(1) As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ControlY(1) As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Order As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		X2 As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y2 As Double
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BorderColor"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillColor"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="Color"
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
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rotation"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scale"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderOpacity"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillOpacity"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Order"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y2"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
