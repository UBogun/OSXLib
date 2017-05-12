#tag Class
Protected Class AppleSCNLevelOfDetail
Inherits AppleObject
	#tag Method, Flags = &h21, Description = 437265617465732061206C6576656C206F662064657461696C207769746820746865207370656369666965642067656F6D6574727920616E64207468726573686F6C642063616D6572612064697374616E63652E
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206C6576656C206F662064657461696C207769746820746865207370656369666965642067656F6D6574727920616E6420746865207468726573686F6C6420706978656C20726164697573206F7220746865207468726573686F6C642063616D6572612064697374616E6365206966206973576F726C64537061636544697374616E636520697320547275652E
		Sub Constructor(Geometry as AppleSCNGeometry, Parameter As Double, isWorldSpaceDistance as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  if isWorldSpaceDistance then
		    Super.Constructor (levelOfDetailWithGeometryworldSpaceDistance(classptr, Geometry.id, worldSpaceDistance))
		  else
		    Super.Constructor (levelOfDetailWithGeometryscreenSpaceRadius(classptr, Geometry.id, ScreenSpaceRadius))
		  end if
		  RetainClassObject
		  #pragma unused Parameter
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getscreenSpaceRadius Lib SceneKitLibname Selector "screenSpaceRadius" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function getworldSpaceDistance Lib SceneKitLibname Selector "worldSpaceDistance" (id as ptr) As CGFloat
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function levelOfDetailWithGeometryscreenSpaceRadius Lib SceneKitLibname Selector "levelOfDetailWithGeometry:screenSpaceRadius:" (id as ptr, Geometry as Ptr, Radius as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit))
		Protected Declare Function levelOfDetailWithGeometryworldSpaceDistance Lib SceneKitLibname Selector "levelOfDetailWithGeometry:worldSpaceDistance:" (id as ptr, Geometry as Ptr, Radius as CGFloat) As Ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleSCNLevelOfDetail
		  return if (aptr = nil, nil, new AppleSCNLevelOfDetail(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete & documented
		
		iOS 9.2
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNLevelOfDetail")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652067656F6D65747279206173736F63696174656420776974682074686973206C6576656C206F662064657461696C2E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return AppleSCNGeometry.MakeFromPtr (SceneKitFrameWork.getgeometry(mid))
			End Get
		#tag EndGetter
		Geometry As AppleSCNGeometry
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D207261646975732028696E20706978656C7329206F66207468652067656F6D65747279E280997320626F756E64696E672073706865726520666F722074686973206C6576656C206F662064657461696C20746F206170706561722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getscreenSpaceRadius(mid)
			End Get
		#tag EndGetter
		ScreenSpaceRadius As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2064697374616E63652066726F6D207468652063757272656E7420706F696E74206F66207669657720666F722074686973206C6576656C206F662064657461696C20746F206170706561722E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  return getworldSpaceDistance(mid)
			End Get
		#tag EndGetter
		WorldSpaceDistance As Double
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScreenSpaceRadius"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WorldSpaceDistance"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
