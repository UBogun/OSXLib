#tag Class
Protected Class AppleCATransition
Inherits AppleCAAnimation
	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCAAnimation
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(animation(classptr))
		  retainClassobject
		  
		End Sub
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getendProgress Lib QuartzCoreLib Selector "endProgress" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getstartProgress Lib QuartzCoreLib Selector "startProgress" (id as ptr) As single
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function getsubtype Lib QuartzCoreLib Selector "subtype" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function gettype Lib QuartzCoreLib Selector "type" (id as ptr) As CFStringRef
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setendProgress Lib QuartzCoreLib Selector "setEndProgress:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setstartProgress Lib QuartzCoreLib Selector "setStartProgress:" (id as ptr, value as single)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub setsubtype Lib QuartzCoreLib Selector "setSubtype:" (id as ptr, value as CFStringRef)
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Sub settype Lib QuartzCoreLib Selector "setType:" (id as ptr, value as CFStringref)
	#tag EndExternalMethod


	#tag Note, Name = Status incomplete
		missing:
		
		filter (CIFIlter)
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("CATransition")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E646963617465732074686520656E6420706F696E74206F66207468652072656365697665722061732061206672616374696F6E206F662074686520656E74697265207472616E736974696F6E2E
		#tag Getter
			Get
			  return getendProgress(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setendProgress id,value
			End Set
		#tag EndSetter
		EndProgress As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionFade as text=SystemConstantName("kCATransitionFade", QuartzCorePath)
			  return mkCATransitionFade
			End Get
		#tag EndGetter
		Shared kCATransitionFade As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionFromBottom as text=SystemConstantName("kCATransitionFromBottom", QuartzCorePath)
			  return mkCATransitionFromBottom
			End Get
		#tag EndGetter
		Shared kCATransitionFromBottom As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionFromLeft as text=SystemConstantName("kCATransitionFromLeft", QuartzCorePath)
			  return mkCATransitionFromLeft
			End Get
		#tag EndGetter
		Shared kCATransitionFromLeft As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionFromRight as text=SystemConstantName("kCATransitionFromRight", QuartzCorePath)
			  return mkCATransitionFromRight
			End Get
		#tag EndGetter
		Shared kCATransitionFromRight As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionFromTop as text=SystemConstantName("kCATransitionFromTop", QuartzCorePath)
			  return mkCATransitionFromTop
			End Get
		#tag EndGetter
		Shared kCATransitionFromTop As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionMoveIn as text=SystemConstantName("kCATransitionMoveIn", QuartzCorePath)
			  return mkCATransitionMoveIn
			End Get
		#tag EndGetter
		Shared kCATransitionMoveIn As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionPush as text=SystemConstantName("kCATransitionPush", QuartzCorePath)
			  return mkCATransitionPush
			End Get
		#tag EndGetter
		Shared kCATransitionPush As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static mkCATransitionReveal as text=SystemConstantName("kCATransitionReveal", QuartzCorePath)
			  return mkCATransitionReveal
			End Get
		#tag EndGetter
		Shared kCATransitionReveal As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 496E646963617465732074686520737461727420706F696E74206F66207468652072656365697665722061732061206672616374696F6E206F662074686520656E74697265207472616E736974696F6E2E
		#tag Getter
			Get
			  return getstartProgress(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setstartProgress id,value
			End Set
		#tag EndSetter
		StartProgress As Single
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206F7074696F6E616C2073756274797065207468617420696E646963617465732074686520646972656374696F6E20666F722074686520707265646566696E6564206D6F74696F6E2D6261736564207472616E736974696F6E732E
		#tag Getter
			Get
			  return getsubtype(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  setsubtype id,value
			End Set
		#tag EndSetter
		Subtype As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520707265646566696E6564207472616E736974696F6E20747970652E
		#tag Getter
			Get
			  return gettype(id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  settype id,value
			End Set
		#tag EndSetter
		Type As Text
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Autoreverses"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BeginTime"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Duration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EndProgress"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FillMode"
			Group="Behavior"
			Type="FillModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Remove"
				"1 - Remain"
				"2 - Reset"
				"3 - Both"
			#tag EndEnumValues
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
			Name="MagnificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilter"
			Group="Behavior"
			Type="ScalingFilters"
			EditorType="Enum"
			#tag EnumValues
				"0 - Linear"
				"1 - Nearest"
				"2 - Trilinear"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinificationFilterBias"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemovedOnCompletion"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatCount"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RepeatDuration"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Speed"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartProgress"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Subtype"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TimeOffset"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Type"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass