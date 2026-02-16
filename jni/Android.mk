LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := Apollon

LOCAL_SRC_FILES := main.cpp \
                   ImGui/imgui.cpp \
                   ImGui/imgui_draw.cpp \
                   ImGui/imgui_widgets.cpp \
                   ImGui/imgui_tables.cpp \
                   ImGui/backends/imgui_impl_android.cpp \
                   ImGui/backends/imgui_impl_opengl3.cpp \
                   KittyMemory/MemoryPatch.cpp \
                   KittyMemory/KittyMemory.cpp \
                   KittyScanner/KittyScanner.cpp

LOCAL_LDLIBS := -llog -lGLESv2 -lEGL -landroid
LOCAL_CPPFLAGS  := -std=c++17 -fexceptions -frtti -Wno-error=format-security
LOCAL_CFLAGS    := -DIMGUI_IMPL_OPENGL_ES2

LOCAL_C_INCLUDES := $(LOCAL_PATH) \
                    $(LOCAL_PATH)/ImGui \
                    $(LOCAL_PATH)/Includes \
                    $(LOCAL_PATH)/Images \
                    $(LOCAL_PATH)/KittyMemory \
                    $(LOCAL_PATH)/KittyScanner \
                    $(LOCAL_PATH)/ENCRYPT \
                    $(LOCAL_PATH)/ghc \
                    $(LOCAL_PATH)/glm \
                    $(LOCAL_PATH)/Arm64 \
                    $(LOCAL_PATH)/Substrate \
                    $(LOCAL_PATH)/libraries

include $(BUILD_SHARED_LIBRARY)
