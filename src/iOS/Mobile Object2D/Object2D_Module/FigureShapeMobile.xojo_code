#tag Class
Class FigureShapeMobile
Inherits Object2DMobile
	#tag CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0
		Sub AddCubic(X As Single, Y As Single, X2 As Single, Y2 As Single, CX As Single, CY As Single, CX2 As Single, CY2 As Single)
		  
		  Dim curve As new CurveShapeMobile
		  curve.Order = 2
		  curve.X = X
		  curve.Y = Y
		  curve.X2 = X2
		  curve.Y2 = y2
		  curve.ControlX(0) = CX
		  curve.ControlY(0) = CY
		  curve.ControlX(1) = CX2
		  curve.ControlX(1) = CY2
		  
		  self.AddCurve(curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurve(curve As CurveShapeMobile)
		  
		  self.items.Add curve
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddCurveAt(index As Integer, Curve As CurveShapeMobile)
		  
		  self.items.AddAt(index, curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddLine(X As Single, Y As Single, X2 As Single, Y2 As Single)
		  
		  Dim curve As new CurveShapeMobile
		  curve.Order = 0
		  curve.X = X
		  curve.Y = Y
		  curve.X2 = X2
		  curve.Y2 = y2
		  
		  
		  self.AddCurve(curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddQuad(X As Single, Y As Single, X2 As Single, Y2 As Single, CX As Single, CY As Single)
		  
		  Dim curve As new CurveShapeMobile
		  curve.Order = 1
		  curve.X = X
		  curve.Y = Y
		  curve.X2 = X2
		  curve.Y2 = y2
		  curve.ControlX(0) = CX
		  curve.ControlY(0) = CY
		  
		  
		  self.AddCurve(curve)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CurveAt(index as Integer) As CurveShapeMobile
		  
		  Return items(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub CurveAt(index As Integer, assigns value As CurveShapeMobile)
		  
		  items(index) = value
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveCurve(Curve As CurveShapeMobile)
		  
		  Dim idx As Integer = items.IndexOf(Curve)
		  items.RemoveAt(idx)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveCurveAt(index As Integer)
		  
		  
		  items.RemoveAt(index)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return items.Count
			End Get
		#tag EndGetter
		Count As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h1
		Protected items() As CurveShapeMobile
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
			Name="Count"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
