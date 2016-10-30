#tag Class
Protected Class AppleImageView
Inherits AppleControl
	#tag Event , Description = 4669726573207768656E206120737562766965772077617320616464656420746F2074686520766965772E
		Sub DidAddSubview(Subview as appleview)
		  #pragma unused Subview
		End Sub
	#tag EndEvent

	#tag Event , Description = 4669726573207768656E2074686520766965772077696C6C2072656D6F7665206120737562766965772E
		Sub willRemoveSubview(Subview as AppleView)
		  #pragma unused Subview
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 437265617465732061206E657720696D616765766965772066726F6D20616E20696D6167652E
		Sub Constructor(anImage as appleimage, DontRegisterEvents as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  dim mclassptr as ptr = if (DontRegisterEvents, OrigClassPtr, classptr)
		  if RespondsToSelector("imageViewWithImage:", mclassptr) then
		    Super.Constructor(imageViewWithImage (mclassptr, animage.id), true, true)
		    if not DontRegisterEvents then registeridentity(self)
		  else
		    Constructor (FoundationFrameWork.NSMakeRect (0,0,anImage.Width, anImage.Height), DontRegisterEvents)
		    self.Image = anImage
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(Frame as FoundationFrameWork.NSRect, DontRegisterEvents as Boolean = false)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  dim mclassptr as ptr = if (DontRegisterEvents, OrigClassPtr, classptr)
		  Super.Constructor(AppKitFramework.initwithFrame(alloc(mclassptr), frame), true)
		  if not DontRegisterEvents then registeridentity(self)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(w as imagewell)
		  // Calling the overridden superclass constructor.
		  // Note that this may need modifications if there are multiple constructor choices.
		  // Possible constructor calls:
		  // Constructor(aControl as control) -- From AppleView
		  // Constructor(Frame as FoundationFrameWork.nsrect) -- From AppleView
		  // Constructor() -- From AppleObject
		  // Constructor(aPtr as Ptr) -- From AppleObject
		  Super.Constructor(ptr(w.Handle))
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function FromControl(c as RectControl) As AppleImageView
		  return new AppleImageView(c)
		End Function
	#tag EndMethod

	#tag ExternalMethod, Flags = &h1
		Protected Declare Function imageViewWithImage Lib AppkitLibName Selector "imageViewWithImage:" (id as ptr, image as ptr) As ptr
	#tag EndExternalMethod

	#tag Method, Flags = &h0
		Shared Function MakefromPtr(aPtr as Ptr) As AppleImageView
		  return if (aptr = nil, nil, new AppleImageView(aptr))
		End Function
	#tag EndMethod


	#tag Note, Name = Untitled, Description = 53746174757320636F6D706C6574652062757420657874656E6461626C65
		
		Only the pure Classptr, no events integrated yet.
	#tag EndNote


	#tag ComputedProperty, Flags = &h0, Description = 4120426F6F6C65616E2076616C756520696E6469636174696E6720776865746865722074686520696D6167652076696577206C657473207468652075736572206375742C20636F70792C20616E642070617374652074686520696D61676520636F6E74656E74732E
		#tag Getter
			Get
			  return AppKitFramework.getallowsCutCopyPaste (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setallowsCutCopyPaste id, value
			End Set
		#tag EndSetter
		AllowsCutCopyPaste As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D6167652076696577206175746F6D61746963616C6C7920706C61797320616E696D6174656420696D616765732E
		#tag Getter
			Get
			  return AppKitFramework.getanimates (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setanimates id, value
			End Set
		#tag EndSetter
		Animates As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  // static mClassPtr as Ptr = FoundationFramework.NSClassFromString ("NSView")
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then
			    dim methods() as TargetClassMethodHelper
			    
			    
			    
			    //NSResponder "delegate" methods
			    methods.Append new TargetClassMethodHelper("acceptsFirstResponder", AddressOf impl_acceptsFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("becomeFirstResponder", AddressOf impl_becomeFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("resignFirstResponder", AddressOf impl_resignFirstResponder, "c@:")
			    methods.Append new TargetClassMethodHelper("smartMagnifyWithEvent:", AddressOf impl_smartMagnifyWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseDown:", AddressOf impl_mouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseDragged:", AddressOf impl_mouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseUp:", AddressOf impl_mouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseMoved:", AddressOf impl_mouseMoved, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseEntered:", AddressOf impl_mouseEntered, "v@:@")
			    methods.Append new TargetClassMethodHelper("mouseExited:", AddressOf impl_mouseExited, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseDown:", AddressOf impl_rightMouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseDragged:", AddressOf impl_rightMouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("rightMouseUp:", AddressOf impl_rightMouseUp, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseDown:", AddressOf impl_otherMouseDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseDragged:", AddressOf impl_otherMouseDragged, "v@:@")
			    methods.Append new TargetClassMethodHelper("otherMouseUp:", AddressOf impl_otherMouseUp, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("keyDown:", AddressOf impl_keyDown, "v@:@")
			    methods.Append new TargetClassMethodHelper("keyUp:", AddressOf impl_keyUp, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("pressureChangeWithEvent:", AddressOf impl_pressureChangeWithEvent, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("flagsChanged:", AddressOf impl_flagsChanged, "v@:@")
			    methods.Append new TargetClassMethodHelper("tabletPoint:", AddressOf impl_tabletPoint, "v@:@")
			    methods.Append new TargetClassMethodHelper("tabletProximity:", AddressOf impl_tabletProximity, "v@:@")
			    methods.Append new TargetClassMethodHelper("scrollWheel:", AddressOf impl_scrollWheel, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("willPresentError:", AddressOf impl_willPresentError, "@@:@")
			    
			    methods.Append new TargetClassMethodHelper("beginGestureWithEvent:", AddressOf impl_beginGestureWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("endGestureWithEvent:", AddressOf impl_endGestureWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("magnifyWithEvent:", AddressOf impl_magnifyWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("rotateWithEvent:", AddressOf impl_rotateWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("swipeWithEvent:", AddressOf impl_swipeWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("touchesBeganWithEvent:", AddressOf impl_touchesBeganWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("touchesMovedWithEvent:", AddressOf impl_touchesMovedWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("touchesCancelledWithEvent:", AddressOf impl_touchesCancelledWithEvent, "v@:@")
			    methods.Append new TargetClassMethodHelper("touchesEndedWithEvent:", AddressOf impl_touchesEndedWithEvent, "v@:@")
			    
			    methods.Append new TargetClassMethodHelper("wantsForwardedScrollEventsForAxis:", AddressOf impl_wantsForwardedScrollEventsForAxis, "v@:i")
			    methods.Append new TargetClassMethodHelper("wantsScrollEventsForSwipeTrackingOnAxis::", AddressOf impl_wantsScrollEventsForSwipeTrackingOnAxis, "v@:i")
			    
			    
			    // CAAnimation "Delegate" methods
			    methods.Append new TargetClassMethodHelper("animationDidStart:", AddressOf impl_animationDidStart, "v@:@")
			    methods.Append new TargetClassMethodHelper("animationDidStop:finished:", AddressOf impl_animationDidStop, "v@:@c")
			    
			    // NSView "delegate" methods
			    methods.Append new TargetClassMethodHelper("viewDidMoveToWindow", AddressOf impl_viewDidMoveToWindow, "v@:")
			    methods.Append new TargetClassMethodHelper("acceptsTouchEvents", AddressOf impl_acceptsTouchEvents, "c@:")
			    // methods.Append new TargetClassMethodHelper("didAddSubview:", AddressOf impl_didAddSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("viewDidMoveToSuperview", AddressOf impl_viewDidMoveToSuperview, "v@:")
			    methods.Append new TargetClassMethodHelper("viewWillMoveToSuperview:", AddressOf impl_viewWillMoveToSuperview, "v@:@")
			    methods.Append new TargetClassMethodHelper("viewWillMoveToWindow:", AddressOf impl_viewWillMoveToWindow, "v@:@")
			    // methods.Append new TargetClassMethodHelper("willRemoveSubview:", AddressOf impl_willRemoveSubview, "v@:@")
			    methods.Append new TargetClassMethodHelper("opaque", AddressOf impl_opaque, "c@:")
			    methods.Append new TargetClassMethodHelper("allowsVibrancy", AddressOf impl_allowsVibrancy, "c@:")
			    methods.Append new TargetClassMethodHelper("viewWillStartLiveResize", AddressOf impl_viewWillStartLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidEndLiveResize", AddressOf impl_viewDidEndLiveResize, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidHide", AddressOf impl_viewDidHide, "v@:")
			    methods.Append new TargetClassMethodHelper("viewDidUnhide", AddressOf impl_viewDidUnhide, "v@:")
			    // methods.Append new TargetClassMethodHelper ("drawRect:", AddressOf impl_DrawRect, "v@:{CGRect}")
			    methods.Append new TargetClassMethodHelper("menuForEvent:", AddressOf impl_menuForEvent, "@@:@")
			    methods.Append new TargetClassMethodHelper("willOpenMenu:withEvent:", AddressOf impl_willOpenMenu, "v@:@@")
			    methods.Append new TargetClassMethodHelper("isFlipped", AddressOf impl_isFlipped, "c@:")
			    
			    mClassPtr = BuildTargetClass ("NSImageView", "OSXLibImageView",methods)
			  end if
			  Return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared ClassPtr As Ptr
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 576865746865722074686520696D6167652076696577206175746F6D61746963616C6C7920706C61797320616E696D6174656420696D616765732E
		#tag Getter
			Get
			  return AppKitFramework.geteditable (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.seteditable id, value
			End Set
		#tag EndSetter
		Editable As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520696D61676520646973706C617965642062792074686520696D61676520766965772E
		#tag Getter
			Get
			  return appleimage.MakeFromPtr(AppKitFramework.getImage (id))
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setImage id, if (value = nil, nil, value.id)
			End Set
		#tag EndSetter
		Image As AppleImage
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 54686520616C69676E6D656E74206F66207468652063656C6CE280997320696D61676520696E736964652074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppKitFramework.getimageAlignment (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageAlignment id, value
			End Set
		#tag EndSetter
		ImageAlignment As appkitframework.NSImageAlignment
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207374796C65206F66206672616D65207468617420617070656172732061726F756E642074686520696D6167652E
		#tag Getter
			Get
			  return AppKitFramework.getimageFrameStyle (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageFrameStyle id, value
			End Set
		#tag EndSetter
		ImageFrameStyle As appkitframework.NSImageFrameStyle
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0, Description = 546865207363616C696E67206D6F6465206170706C69656420746F206D616B65207468652063656C6CE280997320696D6167652066697420746865206672616D65206F662074686520696D61676520766965772E
		#tag Getter
			Get
			  return AppKitFramework.getimageScaling (id)
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  AppKitFramework.setimageScaling id, value
			End Set
		#tag EndSetter
		ImageScaling As appkitframework.NSImagescaling
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h1
		#tag Getter
			Get
			  // static
			  // return mClassPtr
			  
			  static mClassPtr as ptr
			  if mClassPtr = Nil then mClassPtr = FoundationFramework.NSClassFromString ("NSImageView")
			  Return mClassPtr
			  
			  
			End Get
		#tag EndGetter
		Protected Shared OrigClassPtr As Ptr
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Alignment"
			Group="Behavior"
			Type="AppleText.NSTextAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Left"
				"2 - Center"
				"1 - Right"
				"3 - Justified"
				"4 - Natural"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowExpansionTooltips"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsCutCopyPaste"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowsEditingTextAttributes"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Alpha"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Animates"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoresizesSubviews"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BaseWritingDirection"
			Group="Behavior"
			Type="AppleText.NSWritingDirection"
			EditorType="Enum"
			#tag EnumValues
				"1 - Natural"
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BoundsRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDraw"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CanDrawSubviewsIntoLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Continuous"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlSize"
			Group="Behavior"
			Type="NSControlSize"
			EditorType="Enum"
			#tag EnumValues
				"0 - Regular"
				"1 - Small"
				"2 - Mini"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="DebugDescription"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Editable"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstBaselineOffsetFromTop"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FocusRingType"
			Group="Behavior"
			Type="Appkitframework.NSFocusRingType"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - None"
				"2 - Exterior"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameCenterRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FrameRotation"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasAmbiguousLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasOwnership"
			Group="Behavior"
			Type="boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HeightAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Hidden"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlighted"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IgnoresMultiClick"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageAlignment"
			Group="Behavior"
			Type="appkitframework.NSImageAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Center"
				"1 - Top"
				"2 - TopLeft"
				"3 - TopRight"
				"4 - Left"
				"5 - Bottom"
				"6 - BottomLeft"
				"7 - BottomRight"
				"8 - Right"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageFrameStyle"
			Group="Behavior"
			Type="appkitframework.NSImageFrameStyle"
			EditorType="Enum"
			#tag EnumValues
				"0 - None"
				"1 - Photo"
				"2 - GrayBezel"
				"3 - Groove"
				"4 - Button"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImageScaling"
			Group="Behavior"
			Type="appkitframework.NSImagescaling"
			EditorType="Enum"
			#tag EnumValues
				"0 - ProportionallyDown"
				"1 - AxesIndependently"
				"2 - None"
				"3 - ProportionallyUpOrDown"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImportsGraphics"
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
			Name="Int32Value"
			Group="Behavior"
			Type="Int32"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IntegerValue"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDrawingFindIndicator"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsFlipped"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHiddenOrHasHiddenAncestor"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInFullScreenMode"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsInLiveResize"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsRotatedOrScaledFromBase"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastBaselineOffsetFromBottom"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsPlacement"
			Group="Behavior"
			Type="NSViewLayerContentsPlacement"
			EditorType="Enum"
			#tag EnumValues
				"0 - ScaleAxesIndependently"
				"1 - ScaleProprtionallyToFit"
				"2 - ScaleProprtionallyToFill"
				"3 - Center"
				"4 - Top"
				"5 - TopRight"
				"6 - Right"
				"7 - BottomRight"
				"8 - Bottom"
				"9 - BottomLeft"
				"10 - Left"
				"11 - TopLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerContentsRedrawPolicy"
			Group="Behavior"
			Type="NSViewLayerContentsRedrawPolicy"
			EditorType="Enum"
			#tag EnumValues
				"0 - Never"
				"1 - OnSetNeedsDisplay"
				"2 - DuringResize"
				"3 - BeforeResize"
				"4 - Crossfade"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="LayerUsesCoreImageFilters"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LineBreakMode"
			Group="Behavior"
			Type="AppleText.NSLineBreakMode"
			EditorType="Enum"
			#tag EnumValues
				"0 - WordWrap"
				"1 - CharacterWrap"
				"2 - Clip"
				"3 - TruncateHead"
				"4 - TruncateTail"
				"5 - TruncateMiddle"
			#tag EndEnumValues
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
			Name="NeedsDisplay"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsLayout"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NeedsUpdateConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsBoundsChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PostsFrameChangedNotifications"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RefusesFirstResponder"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RetainCount"
			Group="Behavior"
			Type="UInteger"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleValue"
			Group="Behavior"
			Type="Single"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tag"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextValue"
			Group="Behavior"
			Type="text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ToolTip"
			Group="Behavior"
			Type="Text"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TranslatesAutoresizingMaskIntoConstraints"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserInterfaceLayoutdirection"
			Group="Behavior"
			Type="Appkitframework.NSUserInterfaceLayoutdirection"
			EditorType="Enum"
			#tag EnumValues
				"0 - LeftToRight"
				"1 - RightToLeft"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="WantsLayer"
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="WidthAdjustLimit"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
