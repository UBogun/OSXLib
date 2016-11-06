#tag Class
Protected Class AppleSCNLookAtConstraint
Inherits AppleSCNConstraint
	#tag Method, Flags = &h1021
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000, Description = 437265617465732061206C6F6F6B2D617420636F6E73747261696E7420666F7220612073706563696669656420746172676574206E6F64652E
		Sub Constructor(Target As AppleSCNNode)
		  Declare function lookAtConstraintWithTarget Lib SceneKitLibname selector "lookAtConstraintWithTarget:" (id as ptr, Target as ptr) as ptr
		  super.Constructor (lookAtConstraintWithTarget(classptr, target.id))
		  RetainClassObject
		End Sub
	#tag EndMethod


	#tag Note, Name = status completed
		
		iOS 9.0
	#tag EndNote


	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  static mClassPtr as Ptr
			  if mClassPtr = nil then mClassPtr = FoundationFramework.NSClassFromString ("SCNLookAtConstraint")
			  return mClassPtr
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 5768657468657220636F6E73747261696E6564206E6F6465732061726520616C6C6F77656420746F20726F746174652E
		#tag Getter
			Get
			  Declare function gimbalLockEnabled Lib SceneKitLibname selector "gimbalLockEnabled" (id as ptr) as Boolean
			  return gimbalLockEnabled (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Declare Sub setGimbalLockEnabled Lib SceneKitLibname selector "setGimbalLockEnabled:" (id as ptr, value as Boolean)
			  setGimbalLockEnabled id, value
			End Set
		#tag EndSetter
		GimbalLockEnabled As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865206E6F646520746F7761726420776869636820636F6E73747261696E6564206E6F6465732077696C6C20706F696E74206166746572206265696E672072656F7269656E7465642E2028726561642D6F6E6C7929
		#tag Getter
			Get
			  Declare function target Lib SceneKitLibname selector "target" (id as ptr) as ptr
			  return  AppleSCNNode.MakefromPtr (target (id))
			End Get
		#tag EndGetter
		Target As AppleSCNNode
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="GimbalLockEnabled"
			Group="Behavior"
			Type="Boolean"
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
End Class
#tag EndClass
