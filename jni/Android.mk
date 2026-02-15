LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)
LOCAL_MODULE    := Apollon
LOCAL_SRC_FILES := main.cpp \
                   ImGui/imgui.cpp \
                   ImGui/imgui_draw.cpp \
                   ImGui/imgui_widgets.cpp \
                   ImGui/imgui_tables.cpp \
                   ImGui/backends/imgui_impl_android.cpp \
                   ImGui/backends/imgui_impl_opengl3.cpp
LOCAL_LDLIBS    := -llog -landroid -lGLESv3 -lEGL -lz
LOCAL_CPPFLAGS  := -std=c++17 -fexceptions -frtti
LOCAL_C_INCLUDES := $(LOCAL_PATH) $(LOCAL_PATH)/ImGui
include $(BUILD_SHARED_LIBRARY)
