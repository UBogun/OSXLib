#tag Class
Protected Class AppleCIVignetteEffect
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E65772043495669676E657474652066696C7465722C2073657474696E6720696E707574496D6167652C2063656E7465722C2072616469757320616E6420696E74656E736974792E
		Sub Constructor(anImage as iosimage = nil, CenterX as Double = 150, CenterY as Double = 150, Radius as double = 0.0, Intensity as Double = 1.0, Falloff as Double = 0.5)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIVignetteEffect
		  if coloreffectfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputCIImage = new AppleciImage (anImage)
		  InputCenter = FoundationFrameWork.NSMakePoint(centerX, CenterY)
		  InputIntensity = Intensity
		  InputRadius = radius
		  InputFalloff = falloff
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)), Description = 437265617465732061206E65772043495669676E657474652066696C7465722C2073657474696E6720696E707574496D6167652C2063656E7465722C2072616469757320616E6420696E74656E736974792E
		Sub Constructor(anImage as Picture = nil, CenterX as Double = 150, CenterY as Double = 150, Radius as double = 0.0, Intensity as Double = 1.0, Falloff as Double = 0.5)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIVignetteEffect
		  if coloreffectfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  InputCIImage = new AppleciImage (anImage)
		  InputCenter = FoundationFrameWork.NSMakePoint(centerX, CenterY)
		  InputIntensity = Intensity
		  InputRadius = radius
		  InputFalloff = falloff
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 5468652063656E746572206F6620746865206566666563742E2044656661756C7420283135302C2031353029
		#tag Getter
			Get
			  return minputcenter
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputcenter = value
			End Set
		#tag EndSetter
		InputCenter As FoundationFramework.NSPoint
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742063656E7465722070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputCenterDict <> nil then return FilterAttributes.InputCenterDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputCenterDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520696E20697473206E617469766520666F726D2E
		#tag Getter
			Get
			  return minputciimage
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputCIImage = value
			End Set
		#tag EndSetter
		InputCIImage As AppleCIImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066616C6C6F6666206F6620746865206566666563742E2044656661756C7420302E352E
		#tag Getter
			Get
			  return minputFalloff
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputFalloff = value
			End Set
		#tag EndSetter
		InputFalloff As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E7075742066616C6C6F66662070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputFalloffDict<> nil then return FilterAttributes.InputFalloffDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputFalloffDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E70757420696D61676520636F6E76657274656420746F20616E204170706C65496D616765
		#tag Getter
			Get
			  return new appleimage(InputCIImage)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  InputCIImage = new AppleCIImage(value.CGImage)
			End Set
		#tag EndSetter
		InputImage As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420696D6167652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputImageDict <> nil then return FilterAttributes.InputImageDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputImageDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696E74656E73697479206F6620746865206566666563742E2044656661756C7420312E302E
		#tag Getter
			Get
			  return minputintensity
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputintensity = value
			End Set
		#tag EndSetter
		InputIntensity As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420696E74656E736974792070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputIntensityDict <> nil then return FilterAttributes.InputIntensityDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputIntensityDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207669676E657474652072616469757320696E20706F696E74732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return minputRadius
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mInputRadius = value
			End Set
		#tag EndSetter
		InputRadius As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E707574207261646975732070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputRadiusDict <> nil then return FilterAttributes.InputRadiusDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputRadiusDescription As Text
	#tag EndComputedProperty


	#tag Constant, Name = kCIVignetteEffect, Type = Text, Dynamic = False, Default = \"CIVignetteEffect", Scope = Private
	#tag EndConstant


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
			Name="InputCenterDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputFalloff"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputFalloffDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputImageDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputIntensity"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputIntensityDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputRadius"
			Group="Behavior"
			Type="double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputRadiusDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFilterName"
			Group="Behavior"
			Type="Text"
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
	#tag EndViewBehavior
End Class
#tag EndClass
