.class public Lcom/sec/android/app/camera/CameraSettings;
.super Ljava/lang/Object;
.source "CameraSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;,
        Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
    }
.end annotation


# static fields
.field public static final ANTISHAKE_OFF:I = 0x0

.field public static final ANTISHAKE_ON:I = 0x1

.field public static final AUTOCONTRAST_OFF:I = 0x0

.field public static final AUTOCONTRAST_ON:I = 0x1

.field public static final BLINKDETECTION_OFF:I = 0x0

.field public static final BLINKDETECTION_ON:I = 0x1

.field public static final CAMERA_SELF_OFF:I = 0x0

.field public static final CAMERA_SELF_ON:I = 0x1

.field protected static final CAMERA_SETTINGS_NOTOFICATION:I = 0x0

.field public static final DEFAULT_CAMCORDER_AUDIORECORDING:Z = true

.field protected static final DEFAULT_CAMCORDER_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_CAMCORDER_FLASH:I = 0x0

.field protected static final DEFAULT_CAMCORDER_QUALITY:I = 0x0

.field protected static final DEFAULT_CAMCORDER_SETUP_REVIEW:I = 0x0

.field protected static final DEFAULT_CAMERA_ANTISHAKE:I = 0x0

.field protected static final DEFAULT_CAMERA_AUTOCONTRAST:I = 0x0

.field protected static final DEFAULT_CAMERA_BLINKDETECTION:I = 0x0

.field protected static final DEFAULT_CAMERA_EXPOSUREMETER:I = 0x0

.field protected static final DEFAULT_CAMERA_FLASH:I = 0x2

.field protected static final DEFAULT_CAMERA_FOCUS:I = 0x1

.field protected static final DEFAULT_CAMERA_ISO:I = 0x0

.field protected static final DEFAULT_CAMERA_OBJECTTRACKING:I = 0x0

.field protected static final DEFAULT_CAMERA_QUALITY:I = 0x0

.field protected static final DEFAULT_CONTRAST:I = 0x2

.field public static final DEFAULT_CONTRAST_VALUE:I = 0x2

.field protected static final DEFAULT_EFFECT:I = 0x0

.field protected static final DEFAULT_EXPOSUREVALUE:I = 0x0

.field public static final DEFAULT_EXPOSURE_VALUE:I = 0x0

.field protected static final DEFAULT_RECORDINGMODE:I = 0x0

.field protected static final DEFAULT_SATURATION:I = 0x2

.field public static final DEFAULT_SATURATION_VALUE:I = 0x2

.field protected static final DEFAULT_SCENEMODE:I = 0x0

.field protected static final DEFAULT_SETUP_GUIDELINE:I = 0x0

.field protected static final DEFAULT_SETUP_REVIEW:I = 0x0

.field protected static final DEFAULT_SETUP_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_SETUP_STORAGE:I = 0x0

.field protected static final DEFAULT_SHARPNESS:I = 0x2

.field public static final DEFAULT_SHARPNESS_VALUE:I = 0x2

.field protected static final DEFAULT_SHOOTINGMODE:I = 0x0

.field protected static final DEFAULT_SHUTTERSOUND:I = 0x1

.field protected static final DEFAULT_TIMER:I = 0x0

.field public static final DEFAULT_VIDEO_DURATION_VALUE:I = 0x3c

.field protected static final DEFAULT_VINTAGEMODE:I = 0x4

.field protected static final DEFAULT_WHITEBALANCE:I = 0x0

.field public static final DEFAULT_ZOOM_VALUE:I = 0x0

.field public static final EFFECT_ANTIQUE:I = 0x5

.field public static final EFFECT_AQUA:I = 0x4

.field public static final EFFECT_BW:I = 0x2

.field public static final EFFECT_EMBOSS:I = 0x7

.field public static final EFFECT_NEGATIVE:I = 0x1

.field public static final EFFECT_NONE:I = 0x0

.field public static final EFFECT_OUTLINE:I = 0x8

.field public static final EFFECT_SEPIA:I = 0x3

.field public static final EFFECT_SHARPEN:I = 0x6

.field public static final EV_0:I = 0x0

.field public static final EV_MINUS_0_5:I = -0x1

.field public static final EV_MINUS_1_0:I = -0x2

.field public static final EV_MINUS_1_5:I = -0x3

.field public static final EV_MINUS_2_0:I = -0x4

.field public static final EV_PLUS_0_5:I = 0x1

.field public static final EV_PLUS_1_0:I = 0x2

.field public static final EV_PLUS_1_5:I = 0x3

.field public static final EV_PLUS_2_0:I = 0x4

.field public static final EXPOSUREMETER_CENTER:I = 0x0

.field public static final EXPOSUREMETER_MATRIX:I = 0x2

.field public static final EXPOSUREMETER_SPOT:I = 0x1

.field public static final FLASHMODE_AUTO:I = 0x2

.field public static final FLASHMODE_OFF:I = 0x0

.field public static final FLASHMODE_ON:I = 0x1

.field public static final FLASHMODE_REDEYE:I = 0x3

.field public static final FOCUSMODE_AF:I = 0x1

.field public static final FOCUSMODE_FACEDETECTION:I = 0x3

.field public static final FOCUSMODE_MACRO:I = 0x2

.field public static final FOCUSMODE_OFF:I = 0x0

.field public static final FRAME_01:I = 0x0

.field public static final FRAME_02:I = 0x1

.field public static final FRAME_03:I = 0x2

.field public static final FRAME_04:I = 0x3

.field public static final FRAME_05:I = 0x4

.field public static final FRAME_06:I = 0x5

.field public static final FRAME_07:I = 0x6

.field public static final FRAME_08:I = 0x7

.field public static final FRAME_09:I = 0x8

.field public static final FRAME_10:I = 0x9

.field public static final FRAME_11:I = 0xa

.field public static final FRAME_12:I = 0xb

.field public static final FRAME_13:I = 0xc

.field public static final FRAME_14:I = 0xd

.field public static final FRAME_15:I = 0xe

.field public static final FRAME_16:I = 0xf

.field public static final FRAME_17:I = 0x10

.field public static final FRAME_18:I = 0x11

.field public static final FRAME_19:I = 0x12

.field public static final FRAME_20:I = 0x13

.field public static final GPS_OFF:I = 0x0

.field public static final GPS_ON:I = 0x1

.field public static final GUIDELINE_OFF:I = 0x0

.field public static final GUIDELINE_ON:I = 0x1

.field public static final ISO_100:I = 0x2

.field public static final ISO_1200:I = 0x6

.field public static final ISO_1600:I = 0x7

.field public static final ISO_200:I = 0x3

.field public static final ISO_2400:I = 0x8

.field public static final ISO_3200:I = 0x9

.field public static final ISO_400:I = 0x4

.field public static final ISO_50:I = 0x1

.field public static final ISO_800:I = 0x5

.field public static final ISO_AUTO:I = 0x0

.field public static final ISO_FIREWORKS:I = 0xd

.field public static final ISO_MOVIE:I = 0xc

.field public static final ISO_NIGHT:I = 0xb

.field public static final ISO_SPORTS:I = 0xa

.field protected static final KEY_CAMCORDER_AUTOCONTRAST:Ljava/lang/String; = "pref_camcorder_autocontrast_key"

.field protected static final KEY_CAMCORDER_FLASH:Ljava/lang/String; = "pref_camcorder_flash_key"

.field protected static final KEY_CAMCORDER_QUALITY:Ljava/lang/String; = "pref_camera_videoquality_key"

.field protected static final KEY_CAMCORDER_RESOLUTION:Ljava/lang/String; = "pref_camcorder_resolution_key"

.field protected static final KEY_CAMCORDER_SETUP_REVIEW:Ljava/lang/String; = "pref_setup_camcorder_review_key"

.field protected static final KEY_CAMERA_ANTISHAKE:Ljava/lang/String; = "pref_camera_antishake_key"

.field protected static final KEY_CAMERA_AUTOCONTRAST:Ljava/lang/String; = "pref_camera_autocontrast_key"

.field protected static final KEY_CAMERA_BLINKDETECTION:Ljava/lang/String; = "pref_camera_blinkdetection_key"

.field protected static final KEY_CAMERA_EXPOSUREMETER:Ljava/lang/String; = "pref_camera_exposuremeter_key"

.field protected static final KEY_CAMERA_FLASH:Ljava/lang/String; = "pref_camera_flash_key"

.field protected static final KEY_CAMERA_FOCUS:Ljava/lang/String; = "pref_camera_focus_key"

.field protected static final KEY_CAMERA_ISO:Ljava/lang/String; = "pref_camera_iso_key"

.field protected static final KEY_CAMERA_OBJECTTRACKING:Ljava/lang/String; = "pref_camera_objecttracking_key"

.field protected static final KEY_CAMERA_QUALITY:Ljava/lang/String; = "pref_camera_quality_key"

.field protected static final KEY_CAMERA_RESOLUTION:Ljava/lang/String; = "pref_camera_resolution_key"

.field protected static final KEY_SETUP_GUIDELINE:Ljava/lang/String; = "pref_setup_guideline_key"

.field protected static final KEY_SETUP_REVIEW:Ljava/lang/String; = "pref_setup_review_key"

.field protected static final KEY_SETUP_SHUTTERSOUND:Ljava/lang/String; = "pref_setup_shuttersound_key"

.field protected static final KEY_SETUP_STORAGE:Ljava/lang/String; = "pref_setup_storage_key"

.field protected static final KEY_VIDEO_DURATION:Ljava/lang/String; = "pref_camera_video_duration_key"

.field public static final LOCKED:I = 0x1

.field public static final MAX_MMS_VIDEO_FILE_SIZE:I = 0x11f800

.field public static final MENUID_ADJUST:I = 0x17

.field public static final MENUID_ANTISHAKE:I = 0xd

.field public static final MENUID_ATTACH_MODE:I = 0x21

.field public static final MENUID_AUTOCONTRAST:I = 0xe

.field public static final MENUID_BACK:I = 0x1c

.field public static final MENUID_BLINKDETECTION:I = 0xf

.field public static final MENUID_CAMCORDER_ADJUST:I = 0x71

.field public static final MENUID_CAMCORDER_AUDIORECORDING:I = 0x76

.field public static final MENUID_CAMCORDER_AUTOCONTRAST:I = 0x6e

.field public static final MENUID_CAMCORDER_CONTRAST:I = 0x72

.field public static final MENUID_CAMCORDER_EFFECT:I = 0x6c

.field public static final MENUID_CAMCORDER_EXPOSUREVALUE:I = 0x6d

.field public static final MENUID_CAMCORDER_FLASHMODE:I = 0x67

.field public static final MENUID_CAMCORDER_FOCUSMODE:I = 0x69

.field public static final MENUID_CAMCORDER_MODE:I = 0x64

.field public static final MENUID_CAMCORDER_OUTDOOR_VISIABILITY:I = 0x78

.field public static final MENUID_CAMCORDER_QUALITY:I = 0x6f

.field public static final MENUID_CAMCORDER_RECORDINGMODE:I = 0x65

.field public static final MENUID_CAMCORDER_RESET:I = 0x75

.field public static final MENUID_CAMCORDER_RESOLUTION:I = 0x68

.field public static final MENUID_CAMCORDER_REVIEW:I = 0x77

.field public static final MENUID_CAMCORDER_SATURATION:I = 0x73

.field public static final MENUID_CAMCORDER_SCENEMODE:I = 0x66

.field public static final MENUID_CAMCORDER_SHARPNESS:I = 0x74

.field public static final MENUID_CAMCORDER_TIMER:I = 0x6a

.field public static final MENUID_CAMCORDER_WB:I = 0x6b

.field public static final MENUID_CAMCORDER_ZOOM:I = 0x70

.field public static final MENUID_CONTRAST:I = 0x18

.field public static final MENUID_EFFECT:I = 0x8

.field public static final MENUID_EXPOSUREMETER:I = 0xb

.field public static final MENUID_EXPOSUREVALUE:I = 0x7

.field public static final MENUID_FLASHMODE:I = 0x3

.field public static final MENUID_FOCUSMODE:I = 0x5

.field public static final MENUID_GPS:I = 0x14

.field public static final MENUID_GUIDELINE:I = 0x13

.field public static final MENUID_IMAGEVIEWER:I = 0x1d

.field public static final MENUID_ISO:I = 0xa

.field public static final MENUID_LOCK:I = 0x22

.field public static final MENUID_MODE:I = 0x0

.field public static final MENUID_OBJECTTRACKING:I = 0xc

.field public static final MENUID_OUTDOOR_VISIABILITY:I = 0x23

.field public static final MENUID_QUALITY:I = 0x10

.field public static final MENUID_RESET:I = 0x1e

.field public static final MENUID_RESOLUTION:I = 0x4

.field public static final MENUID_REVIEW:I = 0x11

.field public static final MENUID_SATURATION:I = 0x19

.field public static final MENUID_SCENEMODE:I = 0x2

.field public static final MENUID_SELTSHOT:I = 0x24

.field public static final MENUID_SETTINGS:I = 0x1b

.field public static final MENUID_SHARPNESS:I = 0x1a

.field public static final MENUID_SHOOTINGMODE:I = 0x1

.field public static final MENUID_SHUTTER:I = 0x20

.field public static final MENUID_SHUTTERSOUND:I = 0x15

.field public static final MENUID_STORAGE:I = 0x16

.field public static final MENUID_TIMER:I = 0x6

.field public static final MENUID_VINTAGE:I = 0x1f

.field public static final MENUID_WB:I = 0x9

.field public static final MENUID_ZOOM:I = 0x12

#the value of this static final field might be set in the static constructor
.field protected static final MMS_VIDEO_DURATION:I = 0x0

.field public static final MODE_CAMCORDER:I = 0x1

.field public static final MODE_CAMERA:I = 0x0

.field public static final MOSAIC_01:I = 0x0

.field public static final MOSAIC_02:I = 0x1

.field public static final MOSAIC_03:I = 0x2

.field public static final MOSAIC_04:I = 0x3

.field public static final MOSAIC_05:I = 0x4

.field public static final MOSAIC_06:I = 0x5

.field public static final MOSAIC_07:I = 0x6

.field public static final MOSAIC_08:I = 0x7

.field public static final MOSAIC_09:I = 0x8

.field public static final MOSAIC_10:I = 0x9

.field public static final MOSAIC_11:I = 0xa

.field public static final MOSAIC_12:I = 0xb

.field public static final MOSAIC_13:I = 0xc

.field public static final MOSAIC_14:I = 0xd

.field public static final MOSAIC_15:I = 0xe

.field public static final MOSAIC_16:I = 0xf

.field public static final MOSAIC_17:I = 0x10

.field public static final MOSAIC_18:I = 0x11

.field public static final OBJECTTRACKING_OFF:I = 0x0

.field public static final OBJECTTRACKING_ON:I = 0x1

.field public static final OUTDOOR_VISIBILITY_OFF:I = 0x0

.field public static final OUTDOOR_VISIBILITY_ON:I = 0x1

.field public static final QUALITY_FINE:I = 0x1

.field public static final QUALITY_NORMAL:I = 0x2

.field public static final QUALITY_SUPERFINE:I = 0x0

.field public static final RECORDINGMODE_MMS:I = 0x1

.field public static final RECORDINGMODE_NORMAL:I = 0x0

.field public static final RECORDINGMODE_SLOWMOTION:I = 0x2

.field public static final REVIEW_2SEC:I = 0x1

.field public static final REVIEW_OFF:I = 0x0

.field public static final REVIEW_ON:I = 0x2

.field public static final SCENEMODE_BACKLIGHT:I = 0xd

.field public static final SCENEMODE_BEACHSNOW:I = 0x6

.field public static final SCENEMODE_CANDLELIGHT:I = 0xc

.field public static final SCENEMODE_DAWNDUSK:I = 0x8

.field public static final SCENEMODE_FALLCOLOR:I = 0x9

.field public static final SCENEMODE_FIREWORK:I = 0xa

.field public static final SCENEMODE_INDOOR:I = 0x5

.field public static final SCENEMODE_LANDSCAPE:I = 0x2

.field public static final SCENEMODE_NIGHT:I = 0x3

.field public static final SCENEMODE_NONE:I = 0x0

.field public static final SCENEMODE_PORTRAIT:I = 0x1

.field public static final SCENEMODE_SPORTS:I = 0x4

.field public static final SCENEMODE_SUNSET:I = 0x7

.field public static final SCENEMODE_TEXT:I = 0xb

.field public static final SHOOTINGMODE_ACTION_SHOT:I = 0xa

.field public static final SHOOTINGMODE_ADD_ME:I = 0x9

.field public static final SHOOTINGMODE_BEAUTY:I = 0x7

.field public static final SHOOTINGMODE_CARTOON:I = 0xd

.field public static final SHOOTINGMODE_CONTINUOUS:I = 0x1

.field public static final SHOOTINGMODE_FRAME:I = 0x5

.field public static final SHOOTINGMODE_MOSAIC:I = 0x4

.field public static final SHOOTINGMODE_PANORAMA:I = 0x2

.field public static final SHOOTINGMODE_SELF:I = 0x6

.field public static final SHOOTINGMODE_SINGLE:I = 0x0

.field public static final SHOOTINGMODE_SMILE:I = 0x3

.field public static final SHOOTINGMODE_STOP_MOTION:I = 0xb

.field public static final SHOOTINGMODE_VINTAGE:I = 0x8

.field public static final SHOOTINGMODE_VINTAGE_COOL:I = 0x2

.field public static final SHOOTINGMODE_VINTAGE_MONO:I = 0x3

.field public static final SHOOTINGMODE_VINTAGE_NORMAL:I = 0x0

.field public static final SHOOTINGMODE_VINTAGE_OFF:I = 0x4

.field public static final SHOOTINGMODE_VINTAGE_WARM:I = 0x1

.field public static final SHUTTER_CAMCORDER:I = 0x1

.field public static final SHUTTER_CAMERA:I = 0x0

.field public static final SHUTTER_SOUND_1:I = 0x1

.field public static final SHUTTER_SOUND_2:I = 0x2

.field public static final SHUTTER_SOUND_3:I = 0x3

.field public static final SHUTTER_SOUND_OFF:I = 0x0

.field public static final STORAGE_MMC:I = 0x1

.field public static final STORAGE_PHONE:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "CameraSettings"

.field public static final TIMER_10S:I = 0x3

.field public static final TIMER_2S:I = 0x1

.field public static final TIMER_5S:I = 0x2

.field public static final TIMER_OFF:I = 0x0

.field public static final UNLOCKED:I = 0x2

.field public static final WB_AUTO:I = 0x0

.field public static final WB_CLOUDY:I = 0x2

.field public static final WB_DAYLIGHT:I = 0x1

.field public static final WB_FLUORESCENT:I = 0x4

.field public static final WB_HORIZON:I = 0x6

.field public static final WB_INCANDESCENT:I = 0x3

.field public static final WB_SHADE:I = 0x5


# instance fields
.field protected mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

.field private mAntishake:I

.field private mAttachMMSMode:Z

.field private mAttachMode:Z

.field private mAutocontrast:I

.field private mBlinkdetection:I

.field private mCamcorderAudioRecording:Z

.field private mCamcorderAutocontrast:I

.field private mCamcorderContrast:I

.field private mCamcorderEffect:I

.field private mCamcorderExposureValue:I

.field private mCamcorderFlashMode:I

.field private mCamcorderOutdoorVisibility:I

.field private mCamcorderQuality:I

.field private mCamcorderResolution:I

.field private mCamcorderReview:I

.field private mCamcorderSaturation:I

.field private mCamcorderSharpness:I

.field private mCamcorderTimer:I

.field private mCamcorderWB:I

.field private mCamcorderZoomValue:I

.field private mContrast:I

.field private mEffect:I

.field private mExposureValue:I

.field private mExposuremeter:I

.field private mFlashMode:I

.field private mFocusMode:I

.field private mFrame:I

.field private mGuideline:I

.field private mISO:I

.field private mIsSelectedBacklight:Z

.field private mLock:I

.field private mMainCameraSelected:Z

.field private mMode:I

.field private mMosaic:I

.field protected mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

.field private mNumberOfCsShotCaptured:I

.field private mNumberOfCsShotSaved:I

.field private mObjecttracking:I

.field protected mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOutdoorVisibility:I

.field protected mPreferences:Landroid/content/SharedPreferences;

.field private mPreviousFlashMode:I

.field private mPreviousSceneMode:I

.field protected mProp:Ljava/util/Properties;

.field private mQuality:I

.field private mRecordingMode:I

.field private mResolution:I

.field private mReview:I

.field private mSaturation:I

.field private mSceneMode:I

.field private mSelfMode:I

.field private mSharpness:I

.field private mShootingMode:I

.field private mShootingVintageMode:I

.field private mShutterSound:I

.field private mStorage:I

.field private mTempShootingMode:I

.field private mTimer:I

.field private mVideoDuration:I

.field private mWB:I

.field private mZoomValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 461
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 4
    .parameter "activityContext"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    .line 93
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 98
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 116
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 125
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 142
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 143
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSceneMode:I

    .line 151
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    .line 163
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 180
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 190
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 202
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 283
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 284
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 285
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 287
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 316
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 369
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 376
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 377
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 379
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 380
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 383
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 384
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 385
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 386
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 387
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 388
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 389
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 390
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 391
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 393
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 394
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 396
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 398
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 399
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 400
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    .line 494
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    .line 497
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 498
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1480
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "none"

    .line 1568
    packed-switch p0, :pswitch_data_0

    .line 1578
    const-string v0, "none"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1570
    :pswitch_0
    const-string v0, "none"

    move-object v0, v1

    goto :goto_0

    .line 1572
    :pswitch_1
    const-string v0, "negative"

    goto :goto_0

    .line 1574
    :pswitch_2
    const-string v0, "mono"

    goto :goto_0

    .line 1576
    :pswitch_3
    const-string v0, "sepia"

    goto :goto_0

    .line 1568
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getExposuremeterString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "center"

    .line 1631
    packed-switch p0, :pswitch_data_0

    .line 1639
    const-string v0, "center"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1633
    :pswitch_0
    const-string v0, "center"

    move-object v0, v1

    goto :goto_0

    .line 1635
    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    .line 1637
    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    .line 1631
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getFlashModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1539
    packed-switch p0, :pswitch_data_0

    .line 1547
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1541
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1543
    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    .line 1545
    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    .line 1539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getFocusModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1553
    packed-switch p0, :pswitch_data_0

    .line 1563
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1555
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1557
    :pswitch_1
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1559
    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    .line 1561
    :pswitch_3
    const-string v0, "facedetect"

    goto :goto_0

    .line 1553
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getIntPreference(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defaultValue"

    .prologue
    .line 604
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 606
    :goto_0
    return v1

    .line 605
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, p2

    .line 606
    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1600
    packed-switch p0, :pswitch_data_0

    .line 1626
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1602
    :pswitch_1
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1604
    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    .line 1606
    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    .line 1608
    :pswitch_4
    const-string v0, "200"

    goto :goto_0

    .line 1610
    :pswitch_5
    const-string v0, "400"

    goto :goto_0

    .line 1612
    :pswitch_6
    const-string v0, "800"

    goto :goto_0

    .line 1614
    :pswitch_7
    const-string v0, "1600"

    goto :goto_0

    .line 1616
    :pswitch_8
    const-string v0, "3200"

    goto :goto_0

    .line 1618
    :pswitch_9
    const-string v0, "fireworks"

    goto :goto_0

    .line 1620
    :pswitch_a
    const-string v0, "sports"

    goto :goto_0

    .line 1622
    :pswitch_b
    const-string v0, "night"

    goto :goto_0

    .line 1624
    :pswitch_c
    const-string v0, "movie"

    goto :goto_0

    .line 1600
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method

.method public static getModeString(I)Ljava/lang/String;
    .locals 6
    .parameter "key"

    .prologue
    const-string v5, "flash-mode"

    const-string v4, "exposure-compensation"

    const-string v3, "effect"

    const-string v2, "contrast"

    const-string v1, "wdr"

    .line 1405
    sparse-switch p0, :sswitch_data_0

    .line 1475
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1407
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 1409
    :sswitch_1
    const-string v0, "flash-mode"

    move-object v0, v5

    goto :goto_0

    .line 1411
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 1413
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 1415
    :sswitch_4
    const-string v0, "exposure-compensation"

    move-object v0, v4

    goto :goto_0

    .line 1417
    :sswitch_5
    const-string v0, "effect"

    move-object v0, v3

    goto :goto_0

    .line 1419
    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    .line 1421
    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    .line 1423
    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 1425
    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    .line 1427
    :sswitch_a
    const-string v0, "metering"

    goto :goto_0

    .line 1429
    :sswitch_b
    const-string v0, "anti-shake"

    goto :goto_0

    .line 1431
    :sswitch_c
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1433
    :sswitch_d
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1435
    :sswitch_e
    const-string v0, "obj-tracking"

    goto :goto_0

    .line 1437
    :sswitch_f
    const-string v0, "contrast"

    move-object v0, v2

    goto :goto_0

    .line 1439
    :sswitch_10
    const-string v0, "saturation"

    goto :goto_0

    .line 1441
    :sswitch_11
    const-string v0, "sharpness"

    goto :goto_0

    .line 1443
    :sswitch_12
    const-string v0, "flash-mode"

    move-object v0, v5

    goto :goto_0

    .line 1445
    :sswitch_13
    const-string v0, "picture-size"

    goto :goto_0

    .line 1447
    :sswitch_14
    const-string v0, "exposure-compensation"

    move-object v0, v4

    goto :goto_0

    .line 1449
    :sswitch_15
    const-string v0, "effect"

    move-object v0, v3

    goto :goto_0

    .line 1451
    :sswitch_16
    const-string v0, "whitebalance"

    goto :goto_0

    .line 1453
    :sswitch_17
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1455
    :sswitch_18
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 1457
    :sswitch_19
    const-string v0, "zoom"

    goto :goto_0

    .line 1459
    :sswitch_1a
    const-string v0, "contrast"

    move-object v0, v2

    goto :goto_0

    .line 1461
    :sswitch_1b
    const-string v0, "saturation"

    goto :goto_0

    .line 1463
    :sswitch_1c
    const-string v0, "sharpness"

    goto :goto_0

    .line 1405
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x5 -> :sswitch_3
        0x7 -> :sswitch_4
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_a
        0xc -> :sswitch_e
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_8
        0x12 -> :sswitch_9
        0x18 -> :sswitch_f
        0x19 -> :sswitch_10
        0x1a -> :sswitch_11
        0x67 -> :sswitch_12
        0x68 -> :sswitch_13
        0x6b -> :sswitch_16
        0x6c -> :sswitch_15
        0x6d -> :sswitch_14
        0x6e -> :sswitch_17
        0x6f -> :sswitch_18
        0x70 -> :sswitch_19
        0x72 -> :sswitch_1a
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1c
    .end sparse-switch
.end method

.method private getPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 590
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 593
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getQualityString(I)I
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x64

    .line 1644
    packed-switch p0, :pswitch_data_0

    .line 1652
    :goto_0
    :pswitch_0
    return v0

    .line 1648
    :pswitch_1
    const/16 v0, 0x46

    goto :goto_0

    .line 1650
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 1644
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getSceneModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1504
    packed-switch p0, :pswitch_data_0

    .line 1534
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1506
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1508
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 1510
    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    .line 1512
    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    .line 1514
    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    .line 1516
    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    .line 1518
    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    .line 1520
    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    .line 1522
    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    .line 1524
    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    .line 1526
    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    .line 1528
    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    .line 1530
    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    .line 1532
    :pswitch_d
    const-string v0, "back-light"

    goto :goto_0

    .line 1504
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public static getVintageModeString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "normal"

    .line 1488
    packed-switch p0, :pswitch_data_0

    .line 1500
    const-string v0, "normal"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1490
    :pswitch_0
    const-string v0, "normal"

    move-object v0, v1

    goto :goto_0

    .line 1492
    :pswitch_1
    const-string v0, "warm"

    goto :goto_0

    .line 1494
    :pswitch_2
    const-string v0, "cool"

    goto :goto_0

    .line 1496
    :pswitch_3
    const-string v0, "bnw"

    goto :goto_0

    .line 1498
    :pswitch_4
    const-string v0, "off"

    goto :goto_0

    .line 1488
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getVintageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1484
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1583
    packed-switch p0, :pswitch_data_0

    .line 1595
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1585
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1587
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 1589
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 1591
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 1593
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 1583
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1763
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1764
    return-void
.end method

.method public getAntishake()I
    .locals 3

    .prologue
    .line 870
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttachMMSMode()Z
    .locals 1

    .prologue
    .line 1339
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAttachMode()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    return v0
.end method

.method public getBlinkdetection()I
    .locals 3

    .prologue
    .line 921
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_blinkdetection_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderAudioRecording()Z
    .locals 1

    .prologue
    .line 1262
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    return v0
.end method

.method public getCamcorderAutocontrast()I
    .locals 3

    .prologue
    .line 904
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderContrast()I
    .locals 1

    .prologue
    .line 1226
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    return v0
.end method

.method public getCamcorderEffect()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    return v0
.end method

.method public getCamcorderExposureValue()I
    .locals 1

    .prologue
    .line 725
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    return v0
.end method

.method public getCamcorderFlashMode()I
    .locals 3

    .prologue
    .line 1095
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_flash_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderOutdoorVisibility()I
    .locals 1

    .prologue
    .line 1364
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_videoquality_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderResolution()I
    .locals 3

    .prologue
    .line 1124
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderReview()I
    .locals 3

    .prologue
    .line 1275
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_camcorder_review_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCamcorderSaturation()I
    .locals 1

    .prologue
    .line 1238
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    return v0
.end method

.method public getCamcorderSharpness()I
    .locals 1

    .prologue
    .line 1250
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    return v0
.end method

.method public getCamcorderTimer()I
    .locals 1

    .prologue
    .line 1112
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    return v0
.end method

.method public getCamcorderWB()I
    .locals 1

    .prologue
    .line 1166
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    return v0
.end method

.method public getCamcorderZoomValue()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    return v0
.end method

.method public getCameraAutocontrast()I
    .locals 3

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraContrast()I
    .locals 1

    .prologue
    .line 1010
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    return v0
.end method

.method public getCameraEffect()I
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    return v0
.end method

.method public getCameraExposureValue()I
    .locals 1

    .prologue
    .line 713
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getCameraFlashMode()I
    .locals 3

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_flash_key"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraOutdoorVisibility()I
    .locals 1

    .prologue
    .line 1347
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    .prologue
    .line 938
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraResolution()I
    .locals 3

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCameraSaturation()I
    .locals 1

    .prologue
    .line 1022
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    return v0
.end method

.method public getCameraSharpness()I
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    return v0
.end method

.method public getCameraTimer()I
    .locals 1

    .prologue
    .line 754
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getCameraWB()I
    .locals 1

    .prologue
    .line 795
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getCameraZoomValue()I
    .locals 1

    .prologue
    .line 1047
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .locals 1

    .prologue
    .line 1128
    const-string v0, "720x480"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    .prologue
    .line 770
    const-string v0, "2560x1920"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExposuremeter()I
    .locals 3

    .prologue
    .line 836
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getExposuremeterFromSceneMode(I)I
    .locals 1
    .parameter "sceneMode"

    .prologue
    .line 1767
    const/4 v0, 0x0

    .line 1769
    .local v0, nExposuremeter:I
    packed-switch p1, :pswitch_data_0

    .line 1791
    :goto_0
    :pswitch_0
    return v0

    .line 1783
    :pswitch_1
    const/4 v0, 0x2

    .line 1784
    goto :goto_0

    .line 1786
    :pswitch_2
    const/4 v0, 0x1

    .line 1787
    goto :goto_0

    .line 1769
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getFocusMode()I
    .locals 3

    .prologue
    .line 737
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFrame()I
    .locals 1

    .prologue
    .line 1292
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrame:I

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    .line 955
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getISO()I
    .locals 3

    .prologue
    .line 819
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_iso_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIsSelectedBacklight()Z
    .locals 3

    .prologue
    .line 702
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getIsSelectedBacklight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    return v0
.end method

.method public getLock()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1320
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMaxVideoDurationInMs()I
    .locals 3

    .prologue
    .line 563
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 565
    .local v0, microsec:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 569
    sget v1, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 572
    :goto_0
    return v1

    :cond_0
    const v1, 0xea60

    mul-int/2addr v1, v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getMosaicFrame()I
    .locals 1

    .prologue
    .line 1300
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMosaic:I

    return v0
.end method

.method public getNumberOfCsShotCaptured()I
    .locals 1

    .prologue
    .line 1743
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    return v0
.end method

.method public getNumberOfCsShotSaved()I
    .locals 1

    .prologue
    .line 1751
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    return v0
.end method

.method public getObjecttracking()I
    .locals 3

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_camera_objecttracking_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getPreviousFlashMode()I
    .locals 3

    .prologue
    .line 696
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPreviousFlashMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    .prologue
    .line 1072
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getReview()I
    .locals 3

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_review_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSceneMode()I
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getSelfMode()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    return v0
.end method

.method public getShootingMode()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    return v0
.end method

.method public getShootingVintageMode()I
    .locals 1

    .prologue
    .line 1308
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    return v0
.end method

.method public getShutterSound()I
    .locals 3

    .prologue
    .line 993
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_shuttersound_key"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getStorage()I
    .locals 3

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pref_setup_storage_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected handleNotification(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1397
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1399
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 1402
    :cond_0
    return-void
.end method

.method public initializeCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 535
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 536
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 537
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 538
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 539
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 540
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 541
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 542
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 543
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 544
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 545
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 546
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 547
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 548
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 550
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 553
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 555
    return-void
.end method

.method public initializeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 501
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 502
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 503
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 504
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 505
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 506
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 507
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 508
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 509
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 510
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 511
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 512
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 513
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 515
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 518
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 519
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 520
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 523
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 525
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    .line 527
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 530
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    .line 532
    return-void
.end method

.method public isMainCameraSelected()Z
    .locals 1

    .prologue
    .line 1759
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    return v0
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1386
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"
    .parameter "syncmode"

    .prologue
    .line 1389
    if-eqz p3, :cond_0

    .line 1390
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 1394
    :goto_0
    return-void

    .line 1392
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 560
    return-void
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1382
    return-void
.end method

.method public resetCamcorderSettingsToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1709
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1710
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1712
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    .line 1713
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1714
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 1716
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 1717
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderWB(I)V

    .line 1718
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 1719
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    .line 1720
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 1722
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 1723
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 1724
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 1725
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 1727
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 1729
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1730
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 1731
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    .line 1735
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 1736
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v6, "pref_camera_resolution_key"

    .line 1664
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1665
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1666
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1667
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1668
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1669
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1670
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1672
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setResolutionAndShootingModeToDefault()V

    .line 1673
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1674
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1677
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 1678
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1679
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1680
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 1681
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    .line 1683
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1684
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1685
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 1686
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1687
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 1688
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 1689
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 1690
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 1691
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1693
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1694
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1695
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 1697
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 1699
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1700
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 1701
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 1702
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1705
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 1087
    if-nez p1, :cond_1

    .line 1088
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1090
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    goto :goto_0
.end method

.method public setAntishake(I)V
    .locals 5
    .parameter "antishake"

    .prologue
    const-string v4, "pref_camera_antishake_key"

    .line 874
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    .line 875
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    if-eq v1, p1, :cond_0

    .line 876
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAntishake "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    .line 878
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 879
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 880
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 882
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 884
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1343
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 1344
    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1335
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 1336
    return-void
.end method

.method public setBlinkdetection(I)V
    .locals 5
    .parameter "blinkdetection"

    .prologue
    const-string v4, "pref_camera_blinkdetection_key"

    .line 925
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_blinkdetection_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    .line 926
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    if-eq v1, p1, :cond_0

    .line 927
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBlinkdetection "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    .line 929
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 930
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_blinkdetection_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 931
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 935
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(Z)V
    .locals 3
    .parameter "audioRecording"

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    if-eq v0, p1, :cond_0

    .line 1267
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderAudioRecording "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 1270
    const/16 v0, 0x76

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1272
    :cond_0
    return-void

    .line 1270
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCamcorderAutocontrast(I)V
    .locals 5
    .parameter "autocontrast"

    .prologue
    const-string v4, "pref_camera_autocontrast_key"

    .line 908
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 909
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    if-eq v1, p1, :cond_0

    .line 910
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderAutocontrast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 912
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 913
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_autocontrast_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 914
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 916
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 918
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 1230
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    if-eq v0, p1, :cond_0

    .line 1231
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1233
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1235
    :cond_0
    return-void
.end method

.method public setCamcorderEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/4 v3, 0x0

    .line 1188
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eq v0, p1, :cond_0

    .line 1189
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1191
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1194
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    if-eqz v0, :cond_0

    .line 1195
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 1196
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1199
    :cond_0
    return-void
.end method

.method public setCamcorderExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 729
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    if-eq v0, p1, :cond_0

    .line 730
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 732
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 734
    :cond_0
    return-void
.end method

.method public setCamcorderFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const-string v4, "pref_camcorder_flash_key"

    .line 1099
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_flash_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1100
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    if-eq v1, p1, :cond_0

    .line 1101
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1103
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1104
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1107
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1109
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 1368
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 1369
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1371
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1373
    if-nez p1, :cond_1

    .line 1374
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1378
    :cond_0
    :goto_0
    return-void

    .line 1376
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_0
.end method

.method public setCamcorderQuality(I)V
    .locals 5
    .parameter "quality"

    .prologue
    const-string v4, "pref_camera_videoquality_key"

    .line 1153
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1154
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    .line 1155
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1157
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1158
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1159
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1161
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1163
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderResolution(I)Z
    .locals 6
    .parameter "resolution"

    .prologue
    const/4 v4, 0x1

    const-string v5, "pref_camcorder_resolution_key"

    .line 1133
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1134
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 1135
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1137
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1139
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1141
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 1142
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    move v1, v4

    .line 1145
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCamcorderReview(I)V
    .locals 5
    .parameter "review"

    .prologue
    const-string v4, "pref_setup_camcorder_review_key"

    .line 1279
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_camcorder_review_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1280
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    if-eq v1, p1, :cond_0

    .line 1281
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCamcorderReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1283
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1284
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_camcorder_review_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1287
    const/16 v1, 0x77

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1289
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 1242
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    if-eq v0, p1, :cond_0

    .line 1243
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1245
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1247
    :cond_0
    return-void
.end method

.method public setCamcorderSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1254
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    if-eq v0, p1, :cond_0

    .line 1255
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1257
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1259
    :cond_0
    return-void
.end method

.method public setCamcorderTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 1116
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    if-eq v0, p1, :cond_0

    .line 1117
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1119
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1121
    :cond_0
    return-void
.end method

.method public setCamcorderWB(I)V
    .locals 4
    .parameter "whitebalance"

    .prologue
    const/4 v3, 0x0

    .line 1170
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    if-eq v0, p1, :cond_0

    .line 1171
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderWB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 1173
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1176
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eqz v0, :cond_0

    .line 1177
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1178
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1181
    :cond_0
    return-void
.end method

.method public setCamcorderZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 1063
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1064
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCamcorderZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1066
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1068
    :cond_0
    return-void
.end method

.method public setCameraAutocontrast(I)V
    .locals 5
    .parameter "autocontrast"

    .prologue
    const-string v4, "pref_camera_autocontrast_key"

    .line 891
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    .line 892
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    if-eq v1, p1, :cond_0

    .line 893
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraAutocontrast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 896
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_autocontrast_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 897
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 899
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 901
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 1014
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    if-eq v0, p1, :cond_0

    .line 1015
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraContrast "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 1017
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1019
    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 811
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_0

    .line 812
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraEffect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 814
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 816
    :cond_0
    return-void
.end method

.method public setCameraExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 717
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    .line 718
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraExposureValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 720
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 722
    :cond_0
    return-void
.end method

.method public setCameraFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const-string v4, "pref_camera_flash_key"

    .line 675
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flash_key"

    const/4 v2, 0x2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 676
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_0

    .line 677
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraFlashMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 680
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 681
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 683
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 685
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 1351
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 1352
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraOutdoorVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 1354
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1356
    if-nez p1, :cond_1

    .line 1357
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1361
    :cond_0
    :goto_0
    return-void

    .line 1359
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_0
.end method

.method public setCameraQuality(I)V
    .locals 5
    .parameter "quality"

    .prologue
    const-string v4, "pref_camera_quality_key"

    .line 942
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 943
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    .line 944
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraQuality "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 946
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 947
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 948
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 950
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 952
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    .line 791
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v0

    return v0
.end method

.method public setCameraResolution(IZ)Z
    .locals 5
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    const-string v4, "pref_camera_resolution_key"

    .line 775
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 776
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v1, p1, :cond_0

    .line 777
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCameraResolution "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 779
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 780
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 781
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 783
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 784
    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 785
    const/4 v1, 0x1

    .line 787
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCameraSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 1026
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    if-eq v0, p1, :cond_0

    .line 1027
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSaturation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 1029
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1031
    :cond_0
    return-void
.end method

.method public setCameraSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1038
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    if-eq v0, p1, :cond_0

    .line 1039
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraSharpness "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 1041
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1043
    :cond_0
    return-void
.end method

.method public setCameraTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 758
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 759
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraTimer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 761
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 763
    :cond_0
    return-void
.end method

.method public setCameraWB(I)V
    .locals 3
    .parameter "whitebalance"

    .prologue
    .line 799
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    .line 800
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraWB "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 802
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 804
    :cond_0
    return-void
.end method

.method public setCameraZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 1051
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1052
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraZoomValue "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 1054
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1056
    :cond_0
    return-void
.end method

.method public setExposuremeter(I)V
    .locals 5
    .parameter "exposuremeter"

    .prologue
    const-string v4, "pref_camera_exposuremeter_key"

    .line 840
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 841
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    if-eq v1, p1, :cond_0

    .line 842
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposuremeter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 844
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 845
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 846
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 848
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 850
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFocusMode(I)V
    .locals 5
    .parameter "focusMode"

    .prologue
    const-string v4, "pref_camera_focus_key"

    .line 741
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 742
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    .line 743
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 745
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 746
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 747
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 749
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 751
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 1296
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrame:I

    .line 1297
    return-void
.end method

.method public setGps(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 989
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 990
    return-void
.end method

.method public setGuideline(I)V
    .locals 5
    .parameter "guideline"

    .prologue
    const-string v4, "pref_setup_guideline_key"

    .line 959
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    .line 960
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    if-eq v1, p1, :cond_0

    .line 961
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setGuideline "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    .line 963
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 964
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 965
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 967
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 969
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setISO(I)V
    .locals 5
    .parameter "iso"

    .prologue
    const-string v4, "pref_camera_iso_key"

    .line 823
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_iso_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 824
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v1, p1, :cond_0

    .line 825
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setISO "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 827
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 828
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_iso_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 829
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 831
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 833
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setIsSelectedBacklight(Z)V
    .locals 3
    .parameter "onOff"

    .prologue
    .line 708
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsSelectedBacklight "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    .line 710
    return-void
.end method

.method public setLock(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1324
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    if-eq v0, v1, :cond_0

    .line 1325
    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 1326
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1328
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 1324
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1325
    goto :goto_1
.end method

.method public setMainCameraSelected(Z)V
    .locals 0
    .parameter "mMainCameraSelected"

    .prologue
    .line 1755
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 1756
    return-void
.end method

.method public setMaxVideoDurationInMs(I)V
    .locals 5
    .parameter "videoDuration"

    .prologue
    const-string v4, "pref_camera_video_duration_key"

    .line 577
    const-string v1, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 578
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    .line 579
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaxVideoDurationInMs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 581
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 582
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 583
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 585
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 615
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    .line 616
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 618
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 620
    :cond_0
    return-void
.end method

.method public setMosaicFrame(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 1304
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMosaic:I

    .line 1305
    return-void
.end method

.method public setNumberOfCsShotCaptured(I)V
    .locals 0
    .parameter "mNumberOfCsShotCaptured"

    .prologue
    .line 1739
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 1740
    return-void
.end method

.method public setNumberOfCsShotSaved(I)V
    .locals 0
    .parameter "mNumberOfCsShotSaved"

    .prologue
    .line 1747
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 1748
    return-void
.end method

.method public setObjecttracking(I)V
    .locals 5
    .parameter "objecttracking"

    .prologue
    const-string v4, "pref_camera_objecttracking_key"

    .line 857
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_objecttracking_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    .line 858
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    if-eq v1, p1, :cond_0

    .line 859
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setObjecttracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    .line 861
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 862
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_objecttracking_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 863
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 865
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 867
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setPreviousFlashMode(I)V
    .locals 3
    .parameter "flashMode"

    .prologue
    .line 690
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviousFlashMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    .line 692
    return-void
.end method

.method public setRecordingMode(I)V
    .locals 3
    .parameter "recordingMode"

    .prologue
    .line 1076
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    .line 1077
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRecordingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1080
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 1082
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1084
    :cond_0
    return-void
.end method

.method public setReview(I)V
    .locals 5
    .parameter "review"

    .prologue
    const-string v4, "pref_setup_review_key"

    .line 976
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 977
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    .line 978
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setReview "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 981
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_review_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 982
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 984
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 986
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 662
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    .line 663
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSceneMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSceneMode:I

    .line 665
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 666
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 668
    :cond_0
    return-void
.end method

.method public setSelfMode(I)V
    .locals 3
    .parameter "selfMode"

    .prologue
    .line 627
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    if-eq v0, p1, :cond_0

    .line 628
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelfMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 630
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 631
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    .line 632
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 637
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 1
    .parameter "shootingMode"

    .prologue
    .line 644
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    .line 645
    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 3
    .parameter "shootingMode"
    .parameter "exiting"

    .prologue
    .line 648
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-eq v0, p1, :cond_0

    .line 649
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 651
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 652
    if-nez p2, :cond_0

    .line 653
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 655
    :cond_0
    return-void
.end method

.method public setShootingVintageMode(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1312
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    if-eq v0, p1, :cond_0

    .line 1313
    const-string v0, "CameraSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShootingVintageMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 1315
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1317
    :cond_0
    return-void
.end method

.method public setShutterSound(I)V
    .locals 5
    .parameter "shuttersound"

    .prologue
    const-string v4, "pref_setup_shuttersound_key"

    .line 997
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_shuttersound_key"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 998
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 999
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShutterSound "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1001
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1002
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_shuttersound_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1003
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1005
    const/16 v1, 0x15

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1007
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 5
    .parameter "storage"

    .prologue
    const-string v4, "pref_setup_storage_key"

    .line 1206
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1207
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    .line 1208
    const-string v1, "CameraSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStorage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1210
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1211
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1212
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1214
    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1215
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setDefaultStorageStatus()V

    .line 1216
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 1223
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
