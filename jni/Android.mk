LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := Apollon
# Liệt kê các file .cpp của bạn ở đây
LOCAL_SRC_FILES := main.cpp \
                   ImGui/imgui.cpp \
                   ImGui/imgui_draw.cpp \
                   ImGui/imgui_widgets.cpp \
                   ImGui/imgui_tables.cpp \
                   ImGui/backends/imgui_impl_android.cpp \
                   ImGui/backends/imgui_impl_opengl3.cpp

LOCAL_LDLIBS    := -llog -landroid -lGLESv3 -lEGL
LOCAL_CPPFLAGS  := -std=c++17 -fexceptions -frtti

include $(BUILD_SHARED_LIBRARY)
