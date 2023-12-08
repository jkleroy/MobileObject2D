#tag Class
Class Object2DMobile
	#tag Property, Flags = &h0
		BorderColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderOpacity As Double = 100.0
	#tag EndProperty

	#tag Property, Flags = &h0
		BorderWidth As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h0
		FillColor As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		FillOpacity As Double = 100.0
	#tag EndProperty

	#tag Property, Flags = &h0
		Rotation As Double = 0.0
	#tag EndProperty

	#tag Property, Flags = &h0
		Scale As Double = 1.0
	#tag EndProperty

	#tag Property, Flags = &h0
		X As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Y As Double
	#tag EndProperty


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
		#tag ViewProperty
			Name="BorderColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderOpacity"
			Visible=false
			Group="Behavior"
			InitialValue="100.0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Visible=false
			Group="Behavior"
			InitialValue="1.0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillOpacity"
			Visible=false
			Group="Behavior"
			InitialValue="100.0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rotation"
			Visible=false
			Group="Behavior"
			InitialValue="0.0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scale"
			Visible=false
			Group="Behavior"
			InitialValue="1.0"
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="X"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Y"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
