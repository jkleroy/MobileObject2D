#tag MobileScreen
Begin MobileScreen Screen1
   BackButtonCaption=   ""
   Compatibility   =   "(TargetIOS and (Target64Bit))"
   ControlCount    =   0
   Device = 1
   HasNavigationBar=   True
   LargeTitleDisplayMode=   2
   Left            =   0
   Orientation = 0
   TabBarVisible   =   True
   TabIcon         =   0
   TintColor       =   &c00000000
   Title           =   "Untitled"
   Top             =   0
   Begin MobileCanvas Canvas1
      AccessibilityHint=   ""
      AccessibilityLabel=   ""
      AllowKeyEvents  =   False
      AutoLayout      =   Canvas1, 4, BottomLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Canvas1, 1, <Parent>, 1, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Canvas1, 2, <Parent>, 2, False, +1.00, 4, 1, 0, , True
      AutoLayout      =   Canvas1, 3, TopLayoutGuide, 4, False, +1.00, 4, 1, 0, , True
      ControlCount    =   0
      Enabled         =   True
      Height          =   503
      Left            =   0
      LockedInPosition=   False
      Scope           =   0
      TintColor       =   &c000000
      Top             =   65
      Visible         =   True
      Width           =   320
   End
End
#tag EndMobileScreen

#tag WindowCode
#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As Graphics)
		  Var a As New RectShapeMobile
		  a.Scale = 1.5
		  a.Rotation = 0.9
		  a.BorderOpacity = 100
		  a.BorderColor = &c0000ff
		  a.BorderWidth = 2.75
		  a.FillOpacity = 50
		  a.FillColor = Color.RGB(255, 0, 127)
		  g.DrawObject(a, 100, 100)
		  
		  
		  
		  Var b As New OvalShapeMobile
		  b.Height = 100
		  b.BorderOpacity = 100
		  b.FillColor = Color.RGB(255, 0, 127)
		  g.DrawObject(b, 200, 200)
		  
		  Var c As New CurveShapeMobile
		  c.ControlX(0) = 120
		  c.ControlY(0) = -40
		  c.Order = 2
		  c.X = 10
		  c.Y = 100
		  c.X2 = 250
		  c.Y2 = 100
		  c.Rotation = 2
		  
		  g.DrawObject(c, 100, 0)
		  
		  
		  g.DrawingColor = &cFF0000
		  Var y As Double = c.Y - 40
		  g.FillOval(c.X+100+c.controlX(0), y, 2, 2)
		  
		  
		  Var fx As New FigureShapeMobile
		  fx.AddLine(0, 100, 50, 0)
		  fx.AddLine(60, 0, -50, 0)
		  fx.BorderOpacity = 100 ' opaque border
		  fx.BorderWidth = 1.0
		  fx.BorderColor = &cFF0000 ' red border
		  fx.FillColor = &cFFFF00 ' yellow interior
		  g.DrawObject(fx, 100, 100)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
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
		Name="BackButtonCaption"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasNavigationBar"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIcon"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LargeTitleDisplayMode"
		Visible=true
		Group="Behavior"
		InitialValue="2"
		Type="MobileScreen.LargeTitleDisplayModes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Automatic"
			"1 - Always"
			"2 - Never"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabBarVisible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TintColor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="ColorGroup"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
