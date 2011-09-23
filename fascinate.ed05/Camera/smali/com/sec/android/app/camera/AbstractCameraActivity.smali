.class public abstract Lcom/sec/android/app/camera/AbstractCameraActivity;
.super Landroid/app/Activity;
.source "AbstractCameraActivity.java"

# interfaces
.implements Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;
.implements Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;
.implements Lcom/sec/android/app/camera/CameraResolutionMenu$OnCameraResolutionChangedListener;
.implements Lcom/sec/android/app/camera/CamcorderResolutionMenu$OnCamcorderResolutionChangedListener;
.implements Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;
.implements Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;
.implements Lcom/sec/android/app/camera/EffectMenu$OnEffectChangedListener;
.implements Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;
.implements Lcom/sec/android/app/camera/ReviewMenu$OnReviewChangedListener;
.implements Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;
.implements Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;
.implements Lcom/sec/android/app/camera/ShootingModeMenu$OnShootingModeChangedListener;
.implements Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;
.implements Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;
.implements Lcom/sec/android/app/camera/ISOMenu$OnISOChangedListener;
.implements Lcom/sec/android/app/camera/ExposuremeterMenu$OnExposuremeterChangedListener;
.implements Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;
.implements Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;
.implements Lcom/sec/android/app/camera/StorageMenu$OnStorageChangedListener;
.implements Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;
.implements Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;
.implements Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;
.implements Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;
.implements Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_COMPLETED:Ljava/lang/String; = "com.sec.android.app.camerafirmware.CameraFirmwareService.UPDATE_COMPLETED"

.field private static final CAMERA_ACTIVATED:I = 0x40

.field private static final CHARGINGBLOCK_CLEAR_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/chargingblock_clear"

.field protected static final DLG_HIDE:Z = false

.field protected static final DLG_SHOW:Z = true

.field protected static final INACTIVITY_TIMEOUT:I = 0x78

.field protected static final INACTIVITY_TIMER_EXPIRED:I = 0x1

.field public static final KEY_BLINK_DETECTION:Ljava/lang/String; = "blinkdetection"

.field public static final KEY_FROM_APP:Ljava/lang/String; = "from_app"

.field public static final KEY_QUICK_VIEW:Ljava/lang/String; = "quickview"

.field public static final KEY_REVIEW_ON:Ljava/lang/String; = "reviewon"

.field protected static final MDNIE_CAMERA_MODE:I = 0x4

.field protected static final MDNIE_UI_MODE:I = 0x0

.field protected static final MILLIS_IN_SEC:I = 0x3e8

.field public static final REQUEST_ATTACH_IMAGE:I = 0x7d1

.field public static final REQUEST_ATTACH_VIDEO:I = 0x7d2

.field public static final REQUEST_BLINKDETECT_IMAGE:I = 0x7d3

.field protected static final SCREEN_AUTOBRIGHTNESS_OFF:I = 0x0

.field protected static final SCREEN_AUTOBRIGHTNESS_ON:I = 0x1

.field protected static final STORAGE_STATUS_LOW:I = 0x1

.field protected static final STORAGE_STATUS_NONE:I = 0x2

.field protected static final STORAGE_STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AbstractCameraActivity"

.field protected static mSelectedMode:I


# instance fields
.field protected final CHECK_CALL_DLG:I

.field protected final CHECK_CAMERA_FIRMWARE_UPDATING_DLG:I

.field protected final NUM_OF_DLG:I

.field protected final STORAGE_CHANGE_DLG:I

.field protected final STORAGE_STATUS_DLG:I

.field protected bTurnOnScrAB:Z

.field protected mAutomatic:I

.field protected mBaseLayout:Landroid/view/ViewGroup;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field protected mCheckCalling:Z

.field protected mCheckCameraFirmwareUpdating:Z

.field protected mChkKeyFromApp:Ljava/lang/String;

.field private mDlgStatus:[Z

.field private mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

.field protected mInactivityHandler:Landroid/os/Handler;

.field protected mIsViewerRunning:Z

.field protected mLowBatteryPopup:Landroid/app/AlertDialog;

.field protected mLowBatteryWarningLevel:I

.field private mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

.field protected mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected mStorageStatus:I

.field protected mViewStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/sec/android/app/camera/MenuBase;",
            ">;"
        }
    .end annotation
.end field

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mSelectedMode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    .line 126
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    .line 127
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->STORAGE_STATUS_DLG:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->STORAGE_CHANGE_DLG:I

    .line 129
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->CHECK_CALL_DLG:I

    .line 130
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->CHECK_CAMERA_FIRMWARE_UPDATING_DLG:I

    .line 131
    iput v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->NUM_OF_DLG:I

    .line 133
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    .line 142
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 143
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 144
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCameraFirmwareUpdating:Z

    .line 151
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mChkKeyFromApp:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsViewerRunning:Z

    .line 154
    new-instance v0, Lcom/sec/android/app/camera/MenuDimController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/MenuDimController;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 155
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 160
    iput-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 169
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutomatic:I

    .line 170
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 175
    new-instance v0, Lcom/sec/android/app/camera/AbstractCameraActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$1;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityHandler:Landroid/os/Handler;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/AbstractCameraActivity;)Lcom/sec/android/app/camera/CameraSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method private batteryChargingblock_clear(Z)V
    .locals 14
    .parameter "value"

    .prologue
    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const-string v13, "AbstractCameraActivity"

    .line 973
    const/4 v3, 0x0

    .line 974
    .local v3, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 975
    .local v1, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 976
    .local v9, out:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 980
    .local v6, in:Ljava/io/BufferedReader;
    const-string v11, "AbstractCameraActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryChargingblock_clear "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    invoke-direct {v2, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 984
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d

    .line 986
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 987
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 988
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 990
    .local v5, icb:I
    if-eqz p1, :cond_5

    .line 991
    const-string v11, "AbstractCameraActivity"

    const-string v12, "Camera/Camcorder start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    or-int/lit8 v5, v5, 0x40

    .line 999
    :goto_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e

    .line 1000
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_3
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    .line 1001
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_10

    .line 1005
    if-eqz v7, :cond_0

    .line 1007
    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 1013
    :cond_0
    :goto_1
    if-eqz v10, :cond_1

    .line 1015
    :try_start_6
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 1022
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 1024
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    .line 1031
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1033
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_c

    :cond_3
    :goto_4
    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .line 1039
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :cond_4
    :goto_5
    return-void

    .line 995
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_5
    :try_start_9
    const-string v11, "AbstractCameraActivity"

    const-string v12, "Camera/Camcorder stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e

    .line 996
    and-int/lit8 v5, v5, -0x41

    goto :goto_0

    .line 1002
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 1003
    .local v0, e:Ljava/lang/Exception;
    :goto_6
    :try_start_a
    const-string v11, "AbstractCameraActivity"

    const-string v12, " Can\'t open /sys/class/power_supply/battery/chargingblock_clear"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1005
    if-eqz v6, :cond_6

    .line 1007
    :try_start_b
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    .line 1013
    :cond_6
    :goto_7
    if-eqz v9, :cond_7

    .line 1015
    :try_start_c
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 1022
    :cond_7
    :goto_8
    if-eqz v1, :cond_8

    .line 1024
    :try_start_d
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    .line 1031
    :cond_8
    :goto_9
    if-eqz v3, :cond_4

    .line 1033
    :try_start_e
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_5

    .line 1034
    :catch_1
    move-exception v0

    .line 1035
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1005
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_a
    if-eqz v6, :cond_9

    .line 1007
    :try_start_f
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    .line 1013
    :cond_9
    :goto_b
    if-eqz v9, :cond_a

    .line 1015
    :try_start_10
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    .line 1022
    :cond_a
    :goto_c
    if-eqz v1, :cond_b

    .line 1024
    :try_start_11
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4

    .line 1031
    :cond_b
    :goto_d
    if-eqz v3, :cond_c

    .line 1033
    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    .line 1005
    :cond_c
    :goto_e
    throw v11

    .line 1008
    :catch_2
    move-exception v0

    .line 1009
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v12, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1016
    .end local v0           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 1017
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v12, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 1025
    .end local v0           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v0

    .line 1026
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v12, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 1034
    .end local v0           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 1035
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v12, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 1008
    :catch_6
    move-exception v0

    .line 1009
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1016
    :catch_7
    move-exception v0

    .line 1017
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1025
    :catch_8
    move-exception v0

    .line 1026
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 1008
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_9
    move-exception v0

    .line 1009
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1016
    .end local v0           #e:Ljava/lang/Exception;
    :catch_a
    move-exception v0

    .line 1017
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1025
    .end local v0           #e:Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 1026
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1034
    .end local v0           #e:Ljava/lang/Exception;
    :catch_c
    move-exception v0

    .line 1035
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v11, "AbstractCameraActivity"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1005
    .end local v0           #e:Ljava/lang/Exception;
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    .restart local v6       #in:Ljava/io/BufferedReader;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto/16 :goto_a

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catchall_2
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto/16 :goto_a

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catchall_3
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto/16 :goto_a

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catchall_4
    move-exception v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto/16 :goto_a

    .line 1002
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v11

    move-object v0, v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_e
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto/16 :goto_6

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catch_f
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto/16 :goto_6

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_10
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto/16 :goto_6
.end method


# virtual methods
.method public CannotStartCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 617
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v0, :cond_0

    .line 618
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 623
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCameraFirmwareUpdating:Z

    if-eqz v0, :cond_1

    .line 624
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 629
    :goto_1
    return-void

    .line 620
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_1
.end method

.method public IsCalling()Z
    .locals 4

    .prologue
    .line 663
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 665
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 666
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 667
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 668
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 673
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 670
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 671
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AbstractCameraActivity"

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 673
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public OpenHardwareFailed()V
    .locals 3

    .prologue
    .line 581
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$2;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$2;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 591
    return-void
.end method

.method public RecordingFailed()V
    .locals 3

    .prologue
    .line 594
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$3;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 604
    return-void
.end method

.method public abstract cancelShutterTimer()V
.end method

.method public abstract changeContrastPreview(I)V
.end method

.method public abstract changeEffectPreview(I)V
.end method

.method public abstract changeSaturationPreview(I)V
.end method

.method public abstract changeSceneModePreview(I)V
.end method

.method public abstract changeSharpnessPreview(I)V
.end method

.method public abstract changeWhiteBalancePreview(I)V
.end method

.method public checkCameraStartConditionCameraFirmwareUpdating()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 648
    iput-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCameraFirmwareUpdating:Z

    .line 650
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "camera_update_is_in_progress"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCameraFirmwareUpdating:Z

    .line 652
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 653
    iget-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCameraFirmwareUpdating:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :goto_1
    return v1

    :cond_0
    move v1, v3

    .line 650
    goto :goto_0

    .line 654
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 656
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "AbstractCameraActivity"

    const-string v2, "to get camera_update_is_in_progress failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v3

    .line 658
    goto :goto_1
.end method

.method public checkCameraStartCondition_Call()Z
    .locals 4

    .prologue
    .line 632
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 634
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 635
    .local v1, phoneServ:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 636
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->CannotStartCamera()V

    .line 638
    iget-boolean v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    .end local v1           #phoneServ:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return v2

    .line 640
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 641
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AbstractCameraActivity"

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 643
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkStorage(ZZ)V
    .locals 2
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 850
    if-eqz p1, :cond_1

    .line 851
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 870
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 871
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->mediaStorageDialog()V

    .line 872
    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 863
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    goto :goto_0
.end method

.method public abstract checkStorageLow()V
.end method

.method public dumpViewStack()Ljava/lang/String;
    .locals 4

    .prologue
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 347
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 348
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #view:Lcom/sec/android/app/camera/MenuBase;
    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    .line 349
    .restart local v2       #view:Lcom/sec/android/app/camera/MenuBase;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, " => "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v3, "(Z:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    const-string v3, ",C:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    const-string v3, ",P:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 359
    const-string v3, ")\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 361
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getAvailableStorage()J
    .locals 4

    .prologue
    .line 841
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v0

    .line 843
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 844
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 846
    :cond_0
    return-wide v0
.end method

.method public getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    return-object v0
.end method

.method public abstract getChkKeyFromApp()Ljava/lang/String;
.end method

.method public getDepth()I
    .locals 1

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 323
    :goto_0
    return v0

    .line 320
    :catch_0
    move-exception v0

    .line 323
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMemoryStatus()I
    .locals 1

    .prologue
    .line 918
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    return v0
.end method

.method public getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    return-object v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public getViewerRunning()Z
    .locals 1

    .prologue
    .line 406
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsViewerRunning:Z

    return v0
.end method

.method protected handleLowBattery()V
    .locals 3

    .prologue
    .line 922
    const-string v1, "AbstractCameraActivity"

    const-string v2, "handleLowBattery"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 969
    :goto_0
    return-void

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideAllDlg()V

    .line 931
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 932
    .local v0, dialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 933
    const v1, 0x7f070013

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 935
    const v1, 0x7f070014

    new-instance v2, Lcom/sec/android/app/camera/AbstractCameraActivity$12;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$12;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 944
    new-instance v1, Lcom/sec/android/app/camera/AbstractCameraActivity$13;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$13;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 967
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 968
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public abstract handleResolutionChanged(IZ)V
.end method

.method public hideAllDlg()V
    .locals 3

    .prologue
    .line 909
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 911
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 912
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 909
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 915
    :cond_1
    return-void
.end method

.method public hideDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 898
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 899
    if-ne v0, p1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    aget-boolean v1, v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 901
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v0

    .line 902
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->dismissDialog(I)V

    .line 898
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 906
    :cond_1
    return-void
.end method

.method public abstract hideReviewButton()V
.end method

.method public abstract hideShutterButton()V
.end method

.method public abstract hideSideMenu()V
.end method

.method public abstract hideTrayButton()V
.end method

.method public invalidatePreview()V
    .locals 2

    .prologue
    .line 576
    const v1, 0x7f0a00ab

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 577
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->invalidate()V

    .line 578
    return-void
.end method

.method public isCaptureEnabled()Z
    .locals 1

    .prologue
    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isCaptureEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 341
    :goto_0
    return v0

    .line 338
    :catch_0
    move-exception v0

    .line 341
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreviewTouchEnabled()Z
    .locals 1

    .prologue
    .line 328
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/MenuBase;->isPreviewTouchEnabled()Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 332
    :goto_0
    return v0

    .line 329
    :catch_0
    move-exception v0

    .line 332
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mediaStorageDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 607
    iget v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDlg(I)V

    .line 610
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideDlg(I)V

    goto :goto_0
.end method

.method protected abstract onActivityResult(IILandroid/content/Intent;)V
.end method

.method public onAntishakeChanged(I)V
    .locals 0
    .parameter "antishake"

    .prologue
    .line 238
    return-void
.end method

.method public onBlinkdetectionChanged(I)V
    .locals 0
    .parameter "blinkdetection"

    .prologue
    .line 241
    return-void
.end method

.method public onCamcorderAutocontrastChanged(I)V
    .locals 0
    .parameter "autocontrast"

    .prologue
    .line 240
    return-void
.end method

.method public onCamcorderQualityChanged(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 243
    return-void
.end method

.method public onCamcorderResolutionChanged(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 223
    return-void
.end method

.method public onCameraAutocontrastChanged(I)V
    .locals 0
    .parameter "autocontrast"

    .prologue
    .line 239
    return-void
.end method

.method public onCameraQualityChanged(I)V
    .locals 0
    .parameter "quality"

    .prologue
    .line 242
    return-void
.end method

.method public onCameraResolutionChanged(I)V
    .locals 0
    .parameter "resolution"

    .prologue
    .line 222
    return-void
.end method

.method public onContrastChanged(I)V
    .locals 0
    .parameter "contrast"

    .prologue
    .line 226
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 528
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 530
    const-string v1, "power"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 531
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "AbstractCameraActivity"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 532
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 9
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    const v8, 0x7f070014

    const v5, 0x7f070005

    const/4 v7, 0x0

    .line 677
    packed-switch p1, :pswitch_data_0

    move-object v5, v6

    .line 794
    :goto_0
    return-object v5

    .line 679
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 680
    .local v0, builder1:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070006

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$5;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$5;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$4;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$4;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 711
    .end local v0           #builder1:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 712
    .local v1, builder2:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0700ce

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700aa

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$8;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$8;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0700ab

    new-instance v7, Lcom/sec/android/app/camera/AbstractCameraActivity$7;

    invoke-direct {v7, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$7;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$6;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$6;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto :goto_0

    .line 739
    .end local v1           #builder2:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 740
    .local v2, builder3:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f070015

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$10;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$10;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v8, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$9;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$9;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 765
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 768
    .end local v2           #builder3:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.sec.android.app.camerafirmware.CameraFirmwareService.UPDATE_COMPLETED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 769
    .local v4, filter:Landroid/content/IntentFilter;
    new-instance v5, Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    invoke-direct {v5, p0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;Lcom/sec/android/app/camera/AbstractCameraActivity$1;)V

    iput-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    .line 770
    iget-object v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    invoke-virtual {p0, v5, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 772
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 773
    .local v3, builder4:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f070004

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/sec/android/app/camera/AbstractCameraActivity$11;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/AbstractCameraActivity$11;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    goto/16 :goto_0

    .line 677
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mFirmwareUpdateCompleted:Lcom/sec/android/app/camera/AbstractCameraActivity$CameraFirmwareUpdateReceiver;

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 563
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 564
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mMenuDimController:Lcom/sec/android/app/camera/MenuDimController;

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 567
    iput-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 570
    return-void
.end method

.method public onEffectChanged(I)V
    .locals 0
    .parameter "effect"

    .prologue
    .line 224
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 0
    .parameter "exposureValue"

    .prologue
    .line 231
    return-void
.end method

.method public onExposuremeterChanged(I)V
    .locals 0
    .parameter "exposuremeter"

    .prologue
    .line 236
    return-void
.end method

.method public onFlashModeChanged(I)V
    .locals 0
    .parameter "flashMode"

    .prologue
    .line 218
    return-void
.end method

.method public onFocusModeChanged(I)V
    .locals 0
    .parameter "focusMode"

    .prologue
    .line 217
    return-void
.end method

.method public onGpsChanged(I)V
    .locals 0
    .parameter "gps"

    .prologue
    .line 245
    return-void
.end method

.method public onGuidelineChanged(I)V
    .locals 0
    .parameter "guideline"

    .prologue
    .line 244
    return-void
.end method

.method public onISOChanged(I)V
    .locals 0
    .parameter "iso"

    .prologue
    .line 235
    return-void
.end method

.method public onInflatedMenuHidden()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onModechanged()V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method public onObjecttrackingChanged(I)V
    .locals 0
    .parameter "objecttracking"

    .prologue
    .line 237
    return-void
.end method

.method public onOutdoorVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 251
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "AbstractCameraActivity"

    .line 473
    const-string v0, "AbstractCameraActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause : SCREEN_BRIGHTNESS_MODE - mAutomatic:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutomatic:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bTurnOnScrAB:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 475
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    if-eqz v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 482
    :cond_0
    const-string v0, "AbstractCameraActivity"

    const-string v0, "onPause : batteryChargingblock_clear set false in Camera/Camcorder"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->batteryChargingblock_clear(Z)V

    .line 486
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCheckCalling:Z

    if-eqz v0, :cond_1

    .line 488
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 489
    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 525
    :goto_0
    return-void

    .line 492
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 494
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mLowBatteryPopup:Landroid/app/AlertDialog;

    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 506
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 510
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 514
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->IsCalling()Z

    move-result v0

    if-nez v0, :cond_6

    .line 516
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 518
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 520
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 524
    :cond_6
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 798
    packed-switch p1, :pswitch_data_0

    .line 819
    :goto_0
    return-void

    .line 800
    :pswitch_0
    const v3, 0x7f070006

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 813
    .local v2, message:Ljava/lang/String;
    iget v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 814
    const v3, 0x7f070007

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 816
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/app/AlertDialog;

    move-object v1, v0

    .line 817
    .local v1, builder:Landroid/app/AlertDialog;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onRecordingModeChanged(I)V
    .locals 0
    .parameter "recordingMode"

    .prologue
    .line 233
    return-void
.end method

.method protected onResume()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "screen_brightness_mode"

    const-string v4, "AbstractCameraActivity"

    .line 414
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onResume()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 422
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 427
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 428
    iget-object v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 431
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutomatic:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 438
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutomatic:I

    if-ne v2, v5, :cond_3

    .line 439
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 444
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 445
    .local v1, intentExtras:Landroid/os/Bundle;
    if-eqz v1, :cond_5

    .line 446
    const-string v2, "TurnOnScrAB"

    invoke-virtual {v1, v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 447
    const-string v2, "AbstractCameraActivity"

    const-string v2, "onResume : TurnOnScrAB set true "

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iput-boolean v5, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    .line 457
    :cond_4
    :goto_2
    const-string v2, "AbstractCameraActivity"

    const-string v2, "onPause : batteryChargingblock_clear set true in Camera/Camcorder"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->batteryChargingblock_clear(Z)V

    .line 461
    const-string v2, "AbstractCameraActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume : SCREEN_BRIGHTNESS_MODE - mAutomatic:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mAutomatic:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bTurnOnScrAB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->bTurnOnScrAB:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 464
    return-void

    .line 433
    .end local v1           #intentExtras:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 435
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "AbstractCameraActivity"

    const-string v2, "to get SCREEN_BRIGHTNESS_MODE failed"

    invoke-static {v4, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 452
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v1       #intentExtras:Landroid/os/Bundle;
    :cond_5
    const-string v2, "AbstractCameraActivity"

    const-string v2, "onResume : intentExtras is null"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 417
    .end local v1           #intentExtras:Landroid/os/Bundle;
    :catch_1
    move-exception v2

    goto/16 :goto_0
.end method

.method public onReviewChanged(I)V
    .locals 0
    .parameter "cameraReview"

    .prologue
    .line 229
    return-void
.end method

.method public onSaturationChanged(I)V
    .locals 0
    .parameter "saturation"

    .prologue
    .line 227
    return-void
.end method

.method public onSceneModeChanged(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 232
    return-void
.end method

.method public onSelfModechanged()V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onSharpnessChanged(I)V
    .locals 0
    .parameter "sharpness"

    .prologue
    .line 228
    return-void
.end method

.method public onShootingModeChanged(I)V
    .locals 0
    .parameter "shootingMode"

    .prologue
    .line 219
    return-void
.end method

.method public onShutterSoundChanged(I)V
    .locals 0
    .parameter "shutterSound"

    .prologue
    .line 230
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 536
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->onStop()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 543
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 548
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 549
    return-void

    .line 539
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStorageChanged(I)V
    .locals 0
    .parameter "storage"

    .prologue
    .line 246
    return-void
.end method

.method public onTimerChanged(I)V
    .locals 0
    .parameter "timer"

    .prologue
    .line 220
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 247
    return-void
.end method

.method public onVintageChanged(I)V
    .locals 0
    .parameter "vintage"

    .prologue
    .line 248
    return-void
.end method

.method public onWhiteBalanceChanged(I)V
    .locals 0
    .parameter "whiteBalance"

    .prologue
    .line 225
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 467
    if-eqz p1, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restartInactivityTimer()V

    .line 469
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 470
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 0
    .parameter "zoomValue"

    .prologue
    .line 221
    return-void
.end method

.method protected pauseAudioPlayback()V
    .locals 3

    .prologue
    .line 877
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 878
    .local v0, i:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v1, "from"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 881
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 882
    return-void
.end method

.method public abstract playCameraSound(II)V
.end method

.method protected popMenu(I)V
    .locals 1
    .parameter "zOrder"

    .prologue
    .line 305
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 315
    :cond_0
    return-void
.end method

.method public processBack()V
    .locals 4

    .prologue
    .line 278
    const/4 v2, 0x0

    .line 281
    .local v2, view:Lcom/sec/android/app/camera/MenuBase;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    move-object v2, v0
    :try_end_0
    .catch Ljava/util/EmptyStackException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 289
    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 292
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 295
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->restoreInitialState()V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_1

    .line 301
    :cond_0
    :goto_1
    return-void

    .line 282
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 284
    .local v1, e:Ljava/util/EmptyStackException;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    goto :goto_0

    .line 297
    .end local v1           #e:Ljava/util/EmptyStackException;
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method public pushMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 265
    :try_start_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->getZorder()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->popMenu(I)V

    .line 267
    invoke-virtual {p1}, Lcom/sec/android/app/camera/MenuBase;->isFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    return-void

    .line 270
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public resetStorageMedia()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 836
    iput v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 838
    :cond_0
    return-void
.end method

.method protected abstract resetToDefaultSettings()V
.end method

.method public abstract resizeForPreviewAspectRatio()Z
.end method

.method protected restartInactivityTimer()V
    .locals 2

    .prologue
    .line 375
    const-string v0, "AbstractCameraActivity"

    const-string v1, "restarting inactivity timer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V

    .line 377
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->startInactivityTimer()V

    .line 378
    return-void
.end method

.method public abstract restoreInitialState()V
.end method

.method public setDefaultStorageStatus()V
    .locals 1

    .prologue
    .line 885
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mStorageStatus:I

    .line 886
    return-void
.end method

.method public setViewerRunning(Z)V
    .locals 0
    .parameter "isRunning"

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mIsViewerRunning:Z

    .line 403
    return-void
.end method

.method public showDlg(I)V
    .locals 3
    .parameter "nId"

    .prologue
    .line 889
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 890
    if-ne v0, p1, :cond_0

    .line 891
    iget-object v1, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mDlgStatus:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 892
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showDialog(I)V

    .line 889
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_1
    return-void
.end method

.method public abstract showReviewButton()V
.end method

.method public abstract showShutterButton()V
.end method

.method public abstract showTrayButton()V
.end method

.method protected startInactivityTimer()V
    .locals 4

    .prologue
    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 372
    :cond_0
    return-void
.end method

.method protected stopInactivityTimer()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/AbstractCameraActivity;->mInactivityHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 384
    :cond_0
    return-void
.end method

.method public abstract updateRemainStorageIndicator()V
.end method
