#tag Class
Protected Class CIFilterAttributeDictionary
Inherits AppleDictionary
	#tag Method, Flags = &h0, Description = 46696C74657243617465676F7269657320617320546578742041727261792E
		Function FilterCategoryKeys() As Text()
		  return FilterCategories.toTextArray
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As CIFilterAttributeDictionary
		  return if (aptr = nil, nil, new CIFilterAttributeDictionary(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Status complete
		macOS 10.12
		This is a helper dictionary subclass for easier access to CIFilter attribute dictionaries.
		
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 496620737570706C69656420617320612076616C756520666F72206120706172616D657465722C2074686520706172616D6574657220686173206E6F20656666656374206F6E2074686520696E70757420696D6167652E
		#tag Getter
			Get
			  try
			    dim result as AppleNumber= Applenumber.MakeFromPtr (me.PtrForKey(kCIAttributeIdentity))
			    if result <> nil then return result.DoubleValue.ToText
			  Catch
			    try
			      dim result1 as AppleCIVector = AppleCIVector.MakefromPtr(me.PtrForKey(kCIAttributeIdentity))
			      if result1 <> nil then Return result1.StringRepresentation
			    catch
			      try
			        return me.TextForKey (kCIAttributeIdentity)
			      catch
			      end try
			    end try
			  end try
			  
			End Get
		#tag EndGetter
		AttributeIdentity As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E616D65206F6620746865206174747269627574652E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeName)
			End Get
		#tag EndGetter
		AttributeName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 4F6E65206F6620746865206174747269627574652074797065732064657363726962656420696E2044617461205479706520417474726962757465732E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeType)
			End Get
		#tag EndGetter
		AttributeType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520694F532076657273696F6E20696E207768696368207468652066696C74657220666972737420626563616D6520617661696C61626C652E
		#tag Getter
			Get
			  if not kCIAttributeFilterAvailable_iOS.empty then return me.TextForKey (kCIAttributeFilterAvailable_iOS)
			End Get
		#tag EndGetter
		AvailableSinceIOS As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865204F5320582076657273696F6E20696E207768696368207468652066696C74657220666972737420626563616D6520617661696C61626C652E
		#tag Getter
			Get
			  if not kCIAttributeFilterAvailable_Mac.empty then return me.TextForKey (kCIAttributeFilterAvailable_Mac)
			End Get
		#tag EndGetter
		AvailableSinceMacOS As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520636C617373206E616D65206F66207468652066696C7465722E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeClass)
			End Get
		#tag EndGetter
		ClassName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652064656661756C742076616C756520666F7220612066696C74657220706172616D65746572
		#tag Getter
			Get
			  dim result as  applenumber =  AppleNumber.MakeFromPtr(me.PtrForKey (kCIAttributeDefault))
			  if result <> nil then return result.DoubleValue
			End Get
		#tag EndGetter
		DefaultValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 416E206172726179206F662066696C7465722063617465676F7279206B65797320746861742073706563696669657320616C6C207468652063617465676F7269657320696E207768696368207468652066696C7465722069732061206D656D6265722E
		#tag Getter
			Get
			  return applearray.MakeFromPtr(me.PtrForKey (kCIAttributeFilterCategories))
			End Get
		#tag EndGetter
		FilterCategories As AppleArray
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5468652066696C746572206E616D652E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeFilterName)
			End Get
		#tag EndGetter
		FilterName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349496D616765206F626A65637420746861742073706563696669657320616E20656E7669726F6E6D656E74206D6170207769746820616C7068612076616C7565732E205479706963616C6C79207468697320696D61676520636F6E7461696E7320686967686C6967687420616E6420736861646F772E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputShadingImageKey))
			End Get
		#tag EndGetter
		InpuShadingkImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C756520746861742073706563696669657320616E20616E676C652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputAngleKey))
			End Get
		#tag EndGetter
		InputAngleDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C7565207468617420737065636966696573207468652061737065637420726174696F2E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputAspectRatioKey))
			End Get
		#tag EndGetter
		InputAspectRatioDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349496D616765206F626A65637420746F207573652061732061206261636B67726F756E6420696D6167652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputBackgroundImageKey))
			End Get
		#tag EndGetter
		InputBackgroundImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652074686174207370656369666965732061206272696768746E657373206C6576656C2E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputBrightnessKey))
			End Get
		#tag EndGetter
		InputBrightnessDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349566563746F72206F626A656374207468617420737065636966696573207468652063656E746572206F662074686520617265612C206173207820616E6420792D20636F6F7264696E617465732C20746F2062652066696C74657265642E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputCenterKey))
			End Get
		#tag EndGetter
		InputCenterDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349436F6C6F72206F626A656374207468617420737065636966696573206120636F6C6F722076616C75652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputColorKey))
			End Get
		#tag EndGetter
		InputColorDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C7565207468617420737065636966696573206120636F6E7472617374206C6576656C2E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputContrastKey))
			End Get
		#tag EndGetter
		InputContrastDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652020746861742073706563696669657320686F77206D616E7920462D73746F7073206272696768746572206F72206461726B65722074686520696D6167652073686F756C642062652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputEVKey))
			End Get
		#tag EndGetter
		InputEVDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349566563746F72206F626A65637420746861742073706563696669657320612072656374616E676C65207468617420646566696E65732074686520657874656E74206F6620746865206566666563742E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputExtentKey))
			End Get
		#tag EndGetter
		InputExtentDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349496D616765206F626A65637420746861742073706563696669657320616E20656E7669726F6E6D656E74206D6170207769746820616C7068612E205479706963616C6C792C207468697320696D61676520636F6E7461696E7320686967686C6967687420616E6420736861646F772E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputGradientImageKey))
			End Get
		#tag EndGetter
		InputGradientImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E672074686520204349496D616765206F626A65637420746F2075736520617320616E20696E70757420696D6167652E20466F722066696C74657273207468617420616C736F207573652061206261636B67726F756E6420696D6167652C2074686973206B65792072656665727320746F2074686520666F726567726F756E6420696D6167652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputImageKey))
			End Get
		#tag EndGetter
		InputImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C756520746861742073706563696669657320616E20696E74656E736974792076616C75652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputIntensityKey))
			End Get
		#tag EndGetter
		InputIntensityDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349496D616765206F626A65637420746F207573652061732061206D61736B2E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputMaskImageKey))
			End Get
		#tag EndGetter
		InputMaskImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C7565207468617420737065636966696573207468617420737065636966696573207468652064697374616E63652066726F6D207468652063656E746572206F6620616E206566666563742E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputRadiusKey))
			End Get
		#tag EndGetter
		InputRadiusDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652074686174207370656369666965732074686520696E646578206F662072656672616374696F6E206F6620746865206D6174657269616C20287375636820617320676C61737329207573656420696E20746865206566666563742E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputRefractionKey))
			End Get
		#tag EndGetter
		InputRefractionDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652074686174207370656369666965732074686520616D6F756E7420746F2061646A757374207468652073617475726174696F6E2E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputSaturationKey))
			End Get
		#tag EndGetter
		InputSaturationDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652074686174207370656369666965732074686520616D6F756E74206F6620746865206566666563742E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputScaleKey))
			End Get
		#tag EndGetter
		InputScaleDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652074686174207370656369666965732074686520616D6F756E74206F66207368617270656E696E6720746F206170706C792E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputSharpnessKey))
			End Get
		#tag EndGetter
		InputSharpnessDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865204349496D616765206F626A6563742074686174206973207468652074617267657420696D61676520666F722061207472616E736974696F6E2E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputTargetImageKey))
			End Get
		#tag EndGetter
		InputTargetImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C75652074686174207370656369666965732074686520416666696E65207472616E73666F726D206D61747269782E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputTransformKey))
			End Get
		#tag EndGetter
		InputTransformDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C756520746861742073706563696669657320612076657273696F6E206E756D6265722E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputVersionKey))
			End Get
		#tag EndGetter
		InputVersionDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E672061204349566563746F72206F626A656374207468617420646573637269626573206120776569676874206D617472697820666F72207573652077697468206120636F6E766F6C7574696F6E2066696C7465722E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputWeightsKey))
			End Get
		#tag EndGetter
		InputWeightsDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E67207468652076616C756520746861742073706563696669657320746865207769647468206F6620746865206566666563742E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputWidthKey))
			End Get
		#tag EndGetter
		InputWidthDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeClass", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeClass As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeDefault", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeDefault As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeDescription", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeDisplayName", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeDisplayName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  try
			    static result as text
			    if result.empty then result = SystemConstantName ("kCIAttributeFilterAvailable_iOS", CoreImagePath)
			    return result
			  catch
			  end try
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeFilterAvailable_iOS As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  try
			    static result as text
			    if result.empty then result = SystemConstantName ("kCIAttributeFilterAvailable_Mac", CoreImagePath)
			    return result
			  catch
			  end try
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeFilterAvailable_Mac As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeFilterCategories", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeFilterCategories As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeFilterDisplayName", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeFilterDisplayName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeFilterName", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeFilterName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeIdentity", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeIdentity As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeMax", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeMax As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeMin", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeMin As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeName", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeReferenceDocumentation", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeReferenceDocumentation As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeSliderMax", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeSliderMax As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeSliderMin", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeSliderMin As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIAttributeType", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIAttributeType As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputAngleKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputAngleKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputAspectRatioKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputAspectRatioKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputBackgroundImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputBackgroundImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputBrightnessKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputBrightnessKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputCenterKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputCenterKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputColorKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputColorKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputContrastKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputContrastKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputEVKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputEVKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputExtentKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputExtentKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputGradientImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputGradientImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputIntensityKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputIntensityKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputMaskImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputMaskImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputRadiusKey", CoreImagePath)
			  return result
			  
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputRadiusKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputRefractionKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputRefractionKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputSaturationKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputSaturationKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputScaleKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputScaleKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputShadingImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputShadingImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputSharpnessKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputSharpnessKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputTargetImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputTargetImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputTimeKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputTimeKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputTransformKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputTransformKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputVersionKey", CoreImagePath)
			  return result
			  
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputVersionKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputWeightsKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputWeightsKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIInputWidthKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIInputWidthKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  static result as text
			  if result.empty then result = SystemConstantName ("kCIOutputImageKey", CoreImagePath)
			  return result
			End Get
		#tag EndGetter
		Attributes( hidden ) Shared kCIOutputImageKey As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A656420646973706C6179206E616D65206F6620746865206174747269627574652E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeDisplayName)
			End Get
		#tag EndGetter
		LocalizedAttributeName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E206F66207468652066696C7465722E2054686973206465736372697074696F6E2073686F756C6420696E666F726D2074686520656E6420757365722077686174207468652066696C74657220646F657320616E642062652073686F727420656E6F75676820746F20646973706C617920696E20746865207573657220696E7465726661636520666F72207468652066696C7465722E204974206973206E6F7420696E74656E64656420746F20626520746563686E6963616C6C792064657461696C65642E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeDescription)
			End Get
		#tag EndGetter
		LocalizedDescription As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A65642076657273696F6E206F66207468652066696C746572206E616D652E
		#tag Getter
			Get
			  return me.TextForKey (kCIAttributeFilterDisplayName)
			End Get
		#tag EndGetter
		LocalizedFilterName As Text
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206C6F63616C697A6564206465736372697074696F6E206F66207468652066696C7465722E2054686973206465736372697074696F6E2073686F756C6420696E666F726D2074686520656E6420757365722077686174207468652066696C74657220646F657320616E642062652073686F727420656E6F75676820746F20646973706C617920696E20746865207573657220696E7465726661636520666F72207468652066696C7465722E204974206973206E6F7420696E74656E64656420746F20626520746563686E6963616C6C792064657461696C65642E
		#tag Getter
			Get
			  return appleurl.MakefromPtr (me.PtrForKey (kCIAttributeReferenceDocumentation))
			End Get
		#tag EndGetter
		LocalizedReference As Appleurl
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2076616C756520666F7220612066696C74657220706172616D65746572
		#tag Getter
			Get
			  dim result as  applenumber =  AppleNumber.MakeFromPtr(me.PtrForKey (kCIAttributeMax))
			  if result <> nil then return result.DoubleValue
			End Get
		#tag EndGetter
		MaximumValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2076616C756520666F7220612066696C74657220706172616D65746572
		#tag Getter
			Get
			  dim result as  applenumber =  AppleNumber.MakeFromPtr(me.PtrForKey (kCIAttributeMin))
			  if result <> nil then return result.DoubleValue
			End Get
		#tag EndGetter
		MinimumValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865206F757470757420696D61676520617474726962757465732E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIOutputImageKey))
			End Get
		#tag EndGetter
		OutputImageDict As CIFilterAttributeDictionary
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D6178696D756D2076616C756520746F2075736520666F72206120736C69646572207468617420636F6E74726F6C7320696E7075742076616C75657320666F7220612066696C74657220706172616D657465722E
		#tag Getter
			Get
			  dim result as  applenumber =  AppleNumber.MakeFromPtr(me.PtrForKey (kCIAttributeSliderMax))
			  if result <> nil then return result.DoubleValue
			End Get
		#tag EndGetter
		SliderMaximumValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206D696E696D756D2076616C756520746F2075736520666F72206120736C69646572207468617420636F6E74726F6C7320696E7075742076616C75657320666F7220612066696C74657220706172616D657465722E
		#tag Getter
			Get
			  dim result as  applenumber =  AppleNumber.MakeFromPtr(me.PtrForKey (kCIAttributeSliderMin))
			  if result <> nil then return result.DoubleValue
			End Get
		#tag EndGetter
		SliderMinimumValue As Double
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 412064696374696F6E6172792064657363726962696E6720746865207A207363616C61722076616C756520284E534E756D6265722920746861742073706563696669657320612074696D652E
		#tag Getter
			Get
			  return CIFilterAttributeDictionary.MakeFromPtr(me.PtrForKey (kCIInputTimeKey))
			End Get
		#tag EndGetter
		TimeDict As CIFilterAttributeDictionary
	#tag EndComputedProperty


	#tag Constant, Name = kNaN, Type = Text, Dynamic = False, Default = \"Not available", Scope = Private, Attributes = \"hidden"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="AttributeIdentity"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AttributeName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AttributeType"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvailableSinceIOS"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AvailableSinceMacOS"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClassName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Count"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DefaultValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FilterName"
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
			Name="LocalizedAttributeName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LocalizedFilterName"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximumValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="mHasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimumValue"
			Group="Behavior"
			Type="Double"
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
			Name="SliderMaximumValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SliderMinimumValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StringsFileFormat"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
