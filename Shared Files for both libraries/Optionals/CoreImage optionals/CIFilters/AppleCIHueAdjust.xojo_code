#tag Class
Protected Class AppleCIHueAdjust
Inherits AppleCIFilter
	#tag Method, Flags = &h1000, CompatibilityFlags = (TargetConsole and (Target32Bit or Target64Bit)) or  (TargetWeb and (Target32Bit or Target64Bit)) or  (TargetDesktop and (Target32Bit or Target64Bit)) or  (TargetIOS and (Target32Bit or Target64Bit)), Description = 437265617465732061206E6577204875652041646A7573746D656E742066696C7465722C2073657474696E6720496E707574496D61676520616E642048756520416E676C652076616C756520696E20646567726565732E
		Sub Constructor(inputImage as picture = nil, AngleDegrees as double = 0.0)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor() -- From AppleCIFilter
		  // Constructor(FilterName as CFStringRef) -- From AppleCIFilter
		  // Constructor() -- From AppleObject
		  // Constructor(AnId as Ptr) -- From AppleObject
		  dim mytype as text = kCIHueAdjust
		  if coloradjustmentfilternames.ContainsText(mytype) then
		    super.Constructor (mytype)
		  else
		    MakeCIFIlterNotAvailableException (mytype)
		  end if
		  
		  if inputImage <> nil then InputCIImage = new AppleCIImage(inputImage)
		  InputAngleDegrees = AngleDegrees
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F6620746865206566666563742E2028696E206465677265657329
		#tag Getter
			Get
			  return InputAngleRadians.RadiansToDegrees
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  InputAngleRadians = value.DegreesToRadians
			End Set
		#tag EndSetter
		InputAngleDegrees As double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E20666F722074686520696E70757420616E676C652070726F70657274792E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  if FilterAttributes.InputAngleDict <> nil then return FilterAttributes.InputAngleDict.LocalizedDescription
			End Get
		#tag EndGetter
		InputAngleDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616E676C65206F66207468652065666665637420696E2072616469616E732E2044656661756C7420302E302E
		#tag Getter
			Get
			  return minputangle
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  minputangle = value
			End Set
		#tag EndSetter
		InputAngleRadians As double
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


	#tag Constant, Name = kCIHueAdjust, Type = Text, Dynamic = False, Default = \"CIHueAdjust", Scope = Private
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
			Name="InputImageDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputPower"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InputPowerDescription"
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
