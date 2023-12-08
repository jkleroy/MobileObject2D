#tag Class
Class Group2DMobile
Inherits Object2DMobile
	#tag CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target64Bit)) or  (TargetAndroid and (Target64Bit))
	#tag Method, Flags = &h0
		Sub AddObject(object2D As Object2DMobile)
		  items.Add object2D
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddObjectAt(index As integer, object2D As Object2DMobile)
		  items.AddAt(index, object2D)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Item(index As Integer) As Object2DMobile
		  Return items(index)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObject(object2D As Object2DMobile)
		  dim idx As Integer = items.IndexOf(object2D)
		  
		  if idx > -1 then
		    items.RemoveAt(idx)
		  end if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObjectAt(index As Integer)
		  
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
		Protected items() As Object2DMobile
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
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BorderWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Rotation"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scale"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
