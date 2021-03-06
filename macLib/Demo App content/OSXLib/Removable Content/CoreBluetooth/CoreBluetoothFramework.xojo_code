#tag Module
Protected Module CoreBluetoothFramework
	#tag Method, Flags = &h0, Description = 436F6E766572747320616E204170706C6541727261792077697468204342755549447320746F204170706C654342757549442829
		Function CBPeripheralsToXojoArray(extends a as AppleArray) As AppleCBPeripheral()
		  dim result() as AppleCBPeripheral
		  dim count as uinteger = a.Count -1
		  for q  as uinteger = 0 to count
		    result.Append new AppleCBPeripheral (a.PtrAtIndex(q))
		  next
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320616E204170706C6541727261792077697468204342755549447320746F204170706C654342757549442829
		Function CBServicesToXojoArray(extends a as AppleArray) As AppleCBService()
		  dim result() as AppleCBService
		  dim count as uinteger = a.Count -1
		  for q  as uinteger = 0 to count
		    result.Append new AppleCBService (a.PtrAtIndex(q))
		  next
		  return result
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 436F6E766572747320616E204170706C6541727261792077697468204342755549447320746F204170706C654342757549442829
		Function CBUUIDtoXojoArray(extends a as AppleArray) As AppleCBUUID()
		  dim result() as AppleCBUUID
		  dim count as uinteger = a.Count -1
		  for q  as uinteger = 0 to count
		    result.Append new AppleCBUUID (a.PtrAtIndex(q))
		  next
		  return result
		  
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getcharacteristic Lib CoreBluetoothLibName Selector "characteristic" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getUUID Lib CoreBluetoothLibName Selector "UUID" (id as ptr) As ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Function getValue Lib CoreBluetoothLibName Selector "value" (id as ptr) As Ptr
	#tag EndExternalMethod

	#tag ExternalMethod, Flags = &h1
		Attributes( hidden ) Protected Declare Sub setUUID Lib CoreBluetoothLibName Selector "setUUID:" (id as ptr, value as ptr)
	#tag EndExternalMethod


	#tag Constant, Name = CoreBluetoothLibName, Type = Text, Dynamic = False, Default = \"IOBluetooth.framework", Scope = Public
	#tag EndConstant

	#tag Constant, Name = CoreBluetoothPath, Type = Text, Dynamic = False, Default = \"com.apple.CoreBluetooth", Scope = Public
	#tag EndConstant


	#tag Enum, Name = CBATTError, Type = Integer, Flags = &h0
		Success
		  InvalidHandle
		  ReadNotPermitted
		  WriteNotPermitted
		  InvalidPdu
		  InsufficientAuthentication
		  RequestNotSupported
		  InvalidOffset
		  InsufficientAuthorization
		  PrepareQueueFull
		  AttributeNotFound
		  AttributeNotLong
		  InsufficientEncryptionKeySize
		  InvalidAttributeValueLength
		  UnlikelyError
		  InsufficientEncryption
		  UnsupportedGroupType
		InsufficientResources
	#tag EndEnum


	#tag ViewBehavior
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
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
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
End Module
#tag EndModule
