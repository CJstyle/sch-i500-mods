.class public Lcom/sec/android/app/camera/Camera;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camera.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;
.implements Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;
.implements Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;
.implements Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;
.implements Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnActionShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnAddMeEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnBlinkDetectionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnContinuousShotEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnPanoramaEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnStopMotionEventListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnObjectTrackingMsgListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnCartoonShotEventListener;
.implements Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
.implements Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;
.implements Lcom/sec/android/seccamera/SecCamera$OnSmileShotDetectionSuccessListener;
.implements Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camera$LastContentUriCallback;,
        Lcom/sec/android/app/camera/Camera$MainHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MOVE_SENSITIVITY:I = 0x5

.field private static CONTINUOUS_SHOT_DELAYED_SAVING:I = 0x0

.field private static CONTINUOUS_SHOT_SAVE_DELAY:I = 0x0

.field private static FOCUS_TEXT_DURATION:I = 0x0

.field private static FOCUS_TEXT_TIMER_EXPIRED:I = 0x0

.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_BASE:I = 0x0

.field public static final OBJECT_TRACKING_STATUS_FAIL:I = 0x3

.field public static final OBJECT_TRACKING_STATUS_MISSING:I = 0x4

.field public static final OBJECT_TRACKING_STATUS_PROGRESSING:I = 0x1

.field public static final OBJECT_TRACKING_STATUS_SUCCESS:I = 0x2

.field protected static final TAG:Ljava/lang/String; = "Camera"

.field private static mScanToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field private PreviewNotEnded:Z

.field private args:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mActionMoveCount:I

.field private mBlinkDetectionRects:[[I

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

.field private mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mChkAllowFocusTouch:Z

.field private mChkBlinkDection:Z

.field private mChkLaunchGallery:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCropValue:Ljava/lang/String;

.field private mFocusText:Landroid/widget/TextView;

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsImageCaptureIntent:Z

.field private mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

.field private mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

.field private mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

.field private mReturnUri:Z

.field private mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

.field private mSaveUri:Landroid/net/Uri;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mSetPreviewInvisible:Z

.field private mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

.field private mTouchAutoFocusActive:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    const/16 v0, 0x1388

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    .line 158
    const/16 v0, 0x1f4

    sput v0, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_SAVE_DELAY:I

    .line 160
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    .line 161
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 119
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 122
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 125
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 126
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 127
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 129
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 131
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 132
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 133
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 136
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 137
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 141
    const/16 v1, 0x8

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 146
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 153
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 155
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 166
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 171
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->PreviewNotEnded:Z

    .line 176
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    .line 188
    new-instance v1, Lcom/sec/android/app/camera/Camera$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/Camera$1;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 199
    new-instance v1, Lcom/sec/android/app/camera/Camera$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$1;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1041
    new-instance v1, Lcom/sec/android/app/camera/Camera$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$2;-><init>(Lcom/sec/android/app/camera/Camera;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 2726
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2728
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 97
    sget v0, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/ThumbnailController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/Camera;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateLastImage()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/Camera;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/Camera;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camera;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/MenuResourceData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/Camera;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/Camera;)Lcom/sec/android/app/camera/CameraBaseIndicators;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/Camera;Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    return-void
.end method

.method private changeResolutionToPreviewSize(Z)Z
    .locals 3
    .parameter "restartPreview"

    .prologue
    .line 1442
    const-string v1, "800x480"

    invoke-static {v1}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1445
    const/4 v0, 0x7

    .line 1449
    .local v0, resolution:I
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(IZ)Z

    move-result v1

    return v1

    .line 1447
    .end local v0           #resolution:I
    :cond_0
    const/16 v0, 0xc

    .restart local v0       #resolution:I
    goto :goto_0
.end method

.method private createCaptureBitmap([B)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "data"

    .prologue
    .line 2865
    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getTempJpegPath()Ljava/lang/String;

    move-result-object v2

    .line 2866
    .local v2, filepath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 2867
    .local v1, degree:I
    invoke-virtual {p0, v2, p1}, Lcom/sec/android/app/camera/Camera;->saveDataToFile(Ljava/lang/String;[B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2868
    invoke-static {v2}, Lcom/sec/android/app/camera/ImageManager;->getExifOrientation(Ljava/lang/String;)I

    move-result v1

    .line 2869
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2873
    :cond_0
    const v3, 0xc800

    invoke-static {p1, v3}, Lcom/sec/android/app/camera/Util;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2874
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2875
    return-object v0
.end method

.method private static dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 3413
    sget-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->ALL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1844
    const-string v4, "status"

    invoke-virtual {p1, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1845
    .local v3, battStatus:I
    const-string v4, "scale"

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1846
    .local v2, battScale:I
    const-string v4, "level"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1847
    .local v0, battLevel:I
    const-string v4, "plugged"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1849
    .local v1, battPlugged:I
    const-string v4, "Camera"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleBatteryChanged : Level = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", battPlugged = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget v4, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-ge v0, v4, :cond_0

    if-eq v3, v8, :cond_0

    .line 1852
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->handleLowBattery()V

    .line 1855
    :cond_0
    if-eq v1, v8, :cond_1

    if-ne v1, v7, :cond_2

    .line 1856
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryCharging()V

    .line 1861
    :goto_0
    return-void

    .line 1860
    :cond_2
    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    mul-int/lit8 v5, v0, 0x64

    div-int/2addr v5, v2

    invoke-virtual {v4, v5}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setBatteryLevel(I)V

    goto :goto_0
.end method

.method private handleShutterKey()Z
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "Camera"

    .line 2486
    const-string v2, "Camera"

    const-string v2, "handleShutterKey"

    invoke-static {v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    const-string v2, "CameraPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Shot2Shot][Begin] - Shutter key presed::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2489
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v2, v2, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v2

    if-ne v2, v9, :cond_0

    .line 2490
    const-string v2, "Camera"

    const-string v2, "handleShutterKey - CE_STATE_STARTING_PREVIEW"

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v7

    .line 2529
    :goto_0
    return v2

    .line 2494
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCaptureAfterCancelAF()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2495
    const-string v2, "Camera"

    const-string v2, "returning because it is wating the message of autofocus callback."

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2496
    goto :goto_0

    .line 2499
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2502
    :cond_2
    const-string v2, "Camera"

    const-string v2, "returning because it is capturing.."

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v6

    .line 2503
    goto :goto_0

    .line 2506
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v9, :cond_5

    .line 2507
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030036

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/SmileShotView;

    .line 2508
    .local v1, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/SmileShotView;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V

    .line 2509
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2510
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v6

    .line 2511
    goto :goto_0

    :cond_4
    move v2, v7

    .line 2513
    goto :goto_0

    .line 2515
    .end local v1           #smileView:Lcom/sec/android/app/camera/SmileShotView;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6

    .line 2516
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v6

    .line 2517
    goto :goto_0

    .line 2518
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_8

    .line 2519
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030026

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2520
    .local v0, panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/Panoramax1View;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V

    .line 2521
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->isPanoramaCapturing()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2522
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    move v2, v6

    .line 2523
    goto/16 :goto_0

    :cond_7
    move v2, v7

    .line 2525
    goto/16 :goto_0

    .end local v0           #panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    :cond_8
    move v2, v7

    .line 2529
    goto/16 :goto_0
.end method

.method private handleShutterKeyReleased()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "Camera"

    .line 2533
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2535
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2536
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased - returning because it is capturing.."

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2580
    :goto_0
    return v2

    .line 2540
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 2541
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2543
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased - continuous shot is not started"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2544
    goto :goto_0

    .line 2547
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2548
    const-string v2, "Camera"

    const-string v2, "handleShutterKeyReleased - the saving for continuous shot is deleayed"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 2549
    goto :goto_0

    .line 2551
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 2552
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030036

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/SmileShotView;

    .line 2553
    .local v1, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/SmileShotView;->setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V

    .line 2554
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->isDetecting()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2555
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->isStopping()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 2556
    goto :goto_0

    .line 2558
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->stopSmileShot()V

    .line 2559
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 2560
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    :goto_1
    move v2, v5

    .line 2566
    goto :goto_0

    .line 2562
    :cond_4
    invoke-virtual {v1}, Lcom/sec/android/app/camera/SmileShotView;->startDetect()V

    .line 2563
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartSmileDetection()V

    .line 2564
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_1

    .line 2567
    .end local v1           #smileView:Lcom/sec/android/app/camera/SmileShotView;
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 2568
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030026

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2569
    .local v0, panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->isPostCaptureLayoutVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v5

    .line 2570
    goto/16 :goto_0

    .line 2572
    .end local v0           #panoramaxView:Lcom/sec/android/app/camera/Panoramax1View;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_7

    move v2, v6

    .line 2573
    goto/16 :goto_0

    .line 2576
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v2, :cond_8

    .line 2577
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReviewButton;->setButtonLocked()V

    :cond_8
    move v2, v6

    .line 2580
    goto/16 :goto_0
.end method

.method private initBlinkdetection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 448
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 449
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 450
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 451
    return-void
.end method

.method private initIntentFilter()V
    .locals 3

    .prologue
    .line 361
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 364
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 365
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 366
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v2, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 371
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 372
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 376
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 377
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/Camera;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 380
    return-void
.end method

.method private initIntentReceive()V
    .locals 3

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 437
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 438
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 439
    const-string v1, "crop"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 440
    const-string v1, "return-uri"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mReturnUri:Z

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    const-string v1, "Camera"

    const-string v2, "Extra is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initRemains()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 396
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnFocusStateChangedListener(Lcom/sec/android/app/camera/CameraEngine$OnFocusStateChangedListener;)V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 401
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->initCameraSound()V

    .line 402
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 404
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/Camera;->checkStorage(ZZ)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraIndicators;->initIndicators()V

    .line 407
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->pauseAudioPlayback()V

    .line 408
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 409
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setViewerRunning(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 412
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 413
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForInitialLastContentUri()V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 6

    .prologue
    .line 3334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    .line 3335
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_1

    .line 3337
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-nez v2, :cond_0

    .line 3338
    new-instance v2, Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    .line 3339
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 3350
    :cond_0
    :goto_0
    return-void

    .line 3346
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3347
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 3348
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTouchAutoFocusEnabled()Z
    .locals 3

    .prologue
    .line 1077
    const/4 v0, 0x0

    .line 1079
    .local v0, shootingmode:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    if-nez v2, :cond_0

    move v1, v0

    .line 1089
    .end local v0           #shootingmode:Z
    .local v1, shootingmode:I
    :goto_0
    return v1

    .line 1082
    .end local v1           #shootingmode:I
    .restart local v0       #shootingmode:Z
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :goto_1
    move v1, v0

    .line 1089
    .restart local v1       #shootingmode:I
    goto :goto_0

    .line 1086
    .end local v1           #shootingmode:I
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_1

    .line 1082
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private onChkImageCaptureIntent()Z
    .locals 2

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onChkImageCaptureIntentWithNoCropping()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 428
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 429
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 430
    const-string v1, "nocrop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 431
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private resetFocusDueToZoom()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1027
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 1028
    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    .line 1030
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1031
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1033
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideFocusIndicator()V

    .line 1034
    return-void
.end method

.method private setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 348
    const v2, 0x7f0a00ad

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 349
    .local v1, image:Landroid/widget/ImageView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 352
    if-nez p1, :cond_0

    .line 353
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030016

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EmptyView;

    .line 354
    .local v0, emptyview:Lcom/sec/android/app/camera/EmptyView;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 355
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EmptyView;->showMenu()V

    .line 357
    .end local v0           #emptyview:Lcom/sec/android/app/camera/EmptyView;
    :cond_0
    return-void
.end method

.method private setLastPictureThumb([BILandroid/net/Uri;)V
    .locals 7
    .parameter "data"
    .parameter "degree"
    .parameter "uri"

    .prologue
    const-string v6, "Camera"

    .line 3427
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 3428
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/16 v3, 0x14

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 3429
    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3430
    .local v1, lastPictureThumb:Landroid/graphics/Bitmap;
    invoke-static {v1, p2}, Lcom/sec/android/app/camera/Util;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3431
    const-string v3, "Camera"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lastPictureThumb is...."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3432
    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v3, p3, v1}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3436
    .end local v1           #lastPictureThumb:Landroid/graphics/Bitmap;
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-void

    .line 3433
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3434
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setLastPictureThumb Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private showHelptextPopup()V
    .locals 4

    .prologue
    .line 1436
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030020

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/HelptextForShootingMode;

    .line 1437
    .local v0, menu:Lcom/sec/android/app/camera/HelptextForShootingMode;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->showMenu()V

    .line 1438
    return-void
.end method

.method private switchToCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1715
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1716
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TurnOnScrAB"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->bTurnOnScrAB:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 1727
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1728
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->startActivity(Landroid/content/Intent;)V

    .line 1730
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->bTurnOnScrAB:Z

    .line 1731
    const-string v1, "Camera"

    const-string v2, "Camera finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 1735
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camera;->overridePendingTransition(II)V

    .line 1736
    return-void
.end method

.method private updateLastImage()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v10, 0x1

    const-string v11, "Camera"

    .line 3374
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/camera/ImageManager;->CAMERA_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v7, v8, v10, v10, v9}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v4

    .line 3376
    .local v4, list:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 3377
    .local v0, count:I
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/camera/Camera;->dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/camera/ImageManager;->CAMERA_SD_IMAGE_BUCKET_ID:Ljava/lang/String;

    invoke-static {v7, v8, v10, v10, v9}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v5

    .line 3379
    .local v5, listsd:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    .line 3381
    .local v1, countsd:I
    const-string v7, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateLastImage - count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " countsd :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3382
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 3383
    const-string v7, "Camera"

    const-string v7, "updateLastImage - count > 0 && countsd >0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    sub-int v7, v0, v10

    invoke-interface {v4, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 3385
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    sub-int v7, v1, v10

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 3386
    .local v3, imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v7

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 3387
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3388
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 3408
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 3409
    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 3410
    return-void

    .line 3390
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    .restart local v3       #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_0
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3391
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3393
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 3394
    const-string v7, "Camera"

    const-string v7, "updateLastImage - count == 0 &&countsd ==0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v7, v12, v12}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3396
    :cond_2
    if-nez v1, :cond_3

    .line 3397
    const-string v7, "Camera"

    const-string v7, "updateLastImage - countsd == 0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    sub-int v7, v0, v10

    invoke-interface {v4, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 3399
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3400
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3402
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    const-string v7, "Camera"

    const-string v7, "updateLastImage - count <= 0 || countsd < 0"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    sub-int v7, v1, v10

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 3404
    .restart local v3       #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 3405
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelCapturePanorama()V
    .locals 1

    .prologue
    .line 3212
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 3213
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 3135
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doCancelShutterTimer()V

    .line 3138
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3139
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 3140
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->setButtonUnlocked()V

    .line 3143
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 3144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showTrayButton()V

    .line 3150
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x18

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1662
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 1543
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1545
    if-eqz p1, :cond_0

    .line 1546
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1547
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1671
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x19

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1672
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 2
    .parameter "sceneMode"

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1224
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 1680
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x1a

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1681
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1564
    if-eqz p1, :cond_0

    .line 1565
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->onCameraSettingsChanged(II)V

    .line 1566
    :cond_0
    return-void
.end method

.method protected checkLowBattery()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1828
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1829
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "status"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1830
    .local v3, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1831
    .local v2, battScale:I
    const-string v5, "level"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1832
    .local v0, battLevel:I
    const-string v5, "plugged"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1834
    .local v1, battPlugged:I
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkLowBattery : Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", battPlugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1836
    iget v5, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    if-ge v0, v5, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    move v5, v9

    .line 1840
    :goto_0
    return v5

    :cond_0
    move v5, v8

    goto :goto_0
.end method

.method public checkStorage(ZZ)V
    .locals 0
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 3293
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 3294
    return-void
.end method

.method public checkStorageLow()V
    .locals 6

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getAvailableStorage()J

    move-result-wide v0

    .line 3279
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 3280
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3290
    :goto_0
    return-void

    .line 3283
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getMaxSizeOfImage(II)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 3285
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0

    .line 3288
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    goto :goto_0
.end method

.method public clearContinuousPostCaptureLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 508
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 510
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->isPostCaptureLayoutVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-nez v1, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 514
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showTrayButton()V

    .line 526
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->resetCapture()V

    .line 527
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showCaptureLayout()V

    .line 528
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hidePostCaptureLayout()V

    .line 529
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 531
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 533
    :cond_1
    return-void
.end method

.method public clearPostCaptureLayout()V
    .locals 1

    .prologue
    .line 536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 541
    :goto_0
    return-void

    .line 538
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearContinuousPostCaptureLayout()V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public decreaseRemainCount()V
    .locals 2

    .prologue
    .line 3230
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getRemainCount()I

    move-result v0

    .line 3231
    .local v0, nRemainCount:I
    if-lez v0, :cond_0

    .line 3232
    add-int/lit8 v0, v0, -0x1

    .line 3234
    :cond_0
    if-gtz v0, :cond_1

    .line 3235
    const/4 v0, 0x0

    .line 3236
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->mediaStorageDialog()V

    .line 3239
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 3240
    return-void
.end method

.method public doStopContinuousSync()V
    .locals 2

    .prologue
    .line 3317
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3318
    const-string v0, "Camera"

    const-string v1, "doStopContinuousSync - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :goto_0
    return-void

    .line 3322
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doStopContinuousSync()V

    goto :goto_0
.end method

.method public doTerminateContinuous()V
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->doTerminateContinuous()V

    .line 505
    :cond_0
    return-void
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2584
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method public getIsLaunchGallery()Z
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    return v0
.end method

.method public getOrientationOnTake()I
    .locals 1

    .prologue
    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getOrientationOnTake()I

    move-result v0

    return v0
.end method

.method public getPreviewStatus()Z
    .locals 1

    .prologue
    .line 3456
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->PreviewNotEnded:Z

    return v0
.end method

.method public getTouchAutoFocusActive()Z
    .locals 1

    .prologue
    .line 1070
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    return v0
.end method

.method public handleResolutionChanged(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1484
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(IZ)V

    .line 1485
    return-void
.end method

.method public handleResolutionChanged(IZ)V
    .locals 4
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    .line 1488
    const-string v1, "Camera"

    const-string v2, "handleResolutionChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 1492
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->lockResolutionChanging()V

    .line 1494
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1495
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1497
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1500
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1502
    :cond_0
    return-void
.end method

.method public handleShootingModeChanged(I)V
    .locals 20
    .parameter "shootingMode"

    .prologue
    .line 1261
    const-string v16, "Camera"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "handleShootingModeChanged: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 1264
    const-string v16, "CameraPerformance"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[Switching][Begin] - Shooting mode change start::"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_0
    const/4 v11, 0x0

    .line 1270
    .local v11, resolutionChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f03000f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1273
    .local v5, cameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1274
    const/16 v16, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1276
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 1282
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v11

    .line 1283
    if-eqz p1, :cond_2

    .line 1284
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 1287
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 1290
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    .line 1294
    packed-switch p1, :pswitch_data_0

    .line 1420
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1423
    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 1432
    :goto_2
    return-void

    .line 1278
    :cond_4
    const/16 v16, 0x6

    move/from16 v0, p1

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_0

    .line 1296
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030026

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/camera/Panoramax1View;

    .line 1298
    .local v10, panoramaView:Lcom/sec/android/app/camera/Panoramax1View;
    move-object v0, v10

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Panoramax1View;->setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V

    .line 1299
    invoke-virtual {v10}, Lcom/sec/android/app/camera/Panoramax1View;->showMenu()V

    .line 1300
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1302
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1303
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto :goto_1

    .line 1307
    .end local v10           #panoramaView:Lcom/sec/android/app/camera/Panoramax1View;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f03001d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/camera/FrameShotMenu;

    .line 1310
    .local v8, frameShotMenu:Lcom/sec/android/app/camera/FrameShotMenu;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FrameShotMenu;->setOnFrameShotMenuChangedListener(Lcom/sec/android/app/camera/FrameShotMenu$OnFrameShotMenuChangedListener;)V

    .line 1311
    invoke-virtual {v8}, Lcom/sec/android/app/camera/FrameShotMenu;->showMenu()V

    .line 1313
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1315
    goto/16 :goto_1

    .line 1317
    .end local v8           #frameShotMenu:Lcom/sec/android/app/camera/FrameShotMenu;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030024

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/camera/MosaicShotMenu;

    .line 1320
    .local v9, mosaicShotMenu:Lcom/sec/android/app/camera/MosaicShotMenu;
    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MosaicShotMenu;->setOnMosaicShotMenuChangedListener(Lcom/sec/android/app/camera/MosaicShotMenu$OnMosaicShotMenuChangedListener;)V

    .line 1321
    invoke-virtual {v9}, Lcom/sec/android/app/camera/MosaicShotMenu;->showMenu()V

    .line 1323
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1325
    goto/16 :goto_1

    .line 1327
    .end local v9           #mosaicShotMenu:Lcom/sec/android/app/camera/MosaicShotMenu;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030011

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1329
    .local v7, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v7}, Lcom/sec/android/app/camera/ContinuousShotView;->showMenu()V

    .line 1330
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1332
    invoke-virtual {v5, v7}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1333
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1334
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    goto/16 :goto_1

    .line 1338
    .end local v7           #continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030036

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v13

    check-cast v13, Lcom/sec/android/app/camera/SmileShotView;

    .line 1340
    .local v13, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v13}, Lcom/sec/android/app/camera/SmileShotView;->showMenu()V

    .line 1341
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_1

    .line 1345
    .end local v13           #smileView:Lcom/sec/android/app/camera/SmileShotView;
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030037

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 1347
    .local v14, stopMotion:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v14}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 1348
    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionPreviewEventListener(Lcom/sec/android/app/camera/StopMotionPreview$OnStopMotionPreviewEventListener;)V

    .line 1349
    invoke-virtual {v14}, Lcom/sec/android/app/camera/StopMotionPreview;->showMenu()V

    .line 1350
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1352
    invoke-virtual {v5, v14}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1353
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1354
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1358
    .end local v14           #stopMotion:Lcom/sec/android/app/camera/StopMotionPreview;
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const/high16 v17, 0x7f03

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/ActionShotView;

    .line 1360
    .local v3, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    move-object v0, v3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ActionShotView;->setActionShotCancelListener(Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;)V

    .line 1361
    invoke-virtual {v3}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 1362
    invoke-virtual {v3}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 1363
    invoke-virtual {v3}, Lcom/sec/android/app/camera/ActionShotView;->showMenu()V

    .line 1364
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1365
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1366
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1367
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1371
    .end local v3           #actionShot:Lcom/sec/android/app/camera/ActionShotView;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f03003d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/camera/VintageShotView;

    .line 1373
    .local v15, vintage:Lcom/sec/android/app/camera/VintageShotView;
    invoke-virtual {v15}, Lcom/sec/android/app/camera/VintageShotView;->showMenu()V

    .line 1374
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1376
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraSettings;->getShootingVintageMode()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_5

    .line 1377
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 1379
    :cond_5
    invoke-virtual {v5, v15}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_1

    .line 1383
    .end local v15           #vintage:Lcom/sec/android/app/camera/VintageShotView;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030001

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/AddMeView;

    .line 1385
    .local v4, addMeView:Lcom/sec/android/app/camera/AddMeView;
    invoke-virtual {v4}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 1386
    invoke-virtual {v4}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 1387
    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AddMeView;->setOnAddMeCancelListener(Lcom/sec/android/app/camera/AddMeView$OnAddMeCancelListener;)V

    .line 1388
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1389
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1390
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1396
    .end local v4           #addMeView:Lcom/sec/android/app/camera/AddMeView;
    :pswitch_a
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    goto/16 :goto_1

    .line 1399
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030010

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/CartoonShotView;

    .line 1401
    .local v6, cartoonShot:Lcom/sec/android/app/camera/CartoonShotView;
    invoke-virtual {v6}, Lcom/sec/android/app/camera/CartoonShotView;->showMenu()V

    .line 1402
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1403
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->showHelptextPopup()V

    goto/16 :goto_1

    .line 1406
    .end local v6           #cartoonShot:Lcom/sec/android/app/camera/CartoonShotView;
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    move-object/from16 v16, v0

    const v17, 0x7f030030

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/camera/SelfShotView;

    .line 1408
    .local v12, self:Lcom/sec/android/app/camera/SelfShotView;
    invoke-virtual {v12}, Lcom/sec/android/app/camera/SelfShotView;->showMenu()V

    .line 1409
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1410
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/Camera;->changeResolutionToPreviewSize(Z)Z

    move-result v11

    .line 1414
    goto/16 :goto_1

    .line 1425
    .end local v12           #self:Lcom/sec/android/app/camera/SelfShotView;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->needToResizeForPreviewAspectRatio()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 1426
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    goto/16 :goto_2

    .line 1430
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto/16 :goto_2

    .line 1294
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_c
        :pswitch_a
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method public handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V
    .locals 12
    .parameter "event"

    .prologue
    const-string v11, "]"

    const-string v10, "Camera"

    const-string v9, " "

    .line 1093
    const-string v7, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleTouchAutoFocusEvent: XY-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v3, v7

    .line 1101
    .local v3, ptX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v4, v7

    .line 1102
    .local v4, ptY:I
    const/4 v2, 0x0

    .line 1104
    .local v2, previewWidth:I
    const/4 v6, 0x0

    .line 1105
    .local v6, screenWidth:I
    const/4 v5, 0x0

    .line 1106
    .local v5, screenHeight:I
    const/4 v0, 0x0

    .line 1107
    .local v0, allowLeftMargin:I
    const/4 v1, 0x0

    .line 1109
    .local v1, allowTopMargin:I
    const-string v7, "800x480"

    const-string v8, "400x240"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1111
    const/16 v2, 0x190

    .line 1117
    :goto_1
    const/16 v6, 0x190

    .line 1118
    const/16 v5, 0xf0

    .line 1119
    const/16 v0, 0x1e

    .line 1120
    const/16 v1, 0x1e

    .line 1135
    :goto_2
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getTouchRectWidth()I

    move-result v0

    .line 1136
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->getTouchRectHeight()I

    move-result v1

    .line 1138
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    if-lt v3, v7, :cond_0

    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    if-gt v3, v7, :cond_0

    .line 1139
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    if-gt v3, v7, :cond_8

    .line 1140
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    add-int v3, v7, v0

    .line 1144
    :cond_2
    :goto_3
    if-gt v4, v1, :cond_9

    .line 1145
    move v4, v1

    .line 1149
    :cond_3
    :goto_4
    const-string v7, "Camera"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adjust XY-["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1152
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1153
    :cond_4
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7, v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->setTouchFocusPosition(II)V

    .line 1154
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraEngine;->startTouchAutoFocus()V

    .line 1155
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideFocusIndicator()V

    .line 1157
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraBaseIndicators;->resetTouchFocusRectView()V

    .line 1158
    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v7, v3, v4, v6, v5}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTouchFocusRectCenter(IIII)V

    .line 1160
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    goto/16 :goto_0

    .line 1114
    :cond_5
    const/16 v2, 0x140

    goto/16 :goto_1

    .line 1122
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v7

    invoke-static {v7}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1123
    const/16 v2, 0x320

    .line 1129
    :goto_5
    const/16 v6, 0x320

    .line 1130
    const/16 v5, 0x1e0

    .line 1131
    const/16 v0, 0x32

    .line 1132
    const/16 v1, 0x32

    goto/16 :goto_2

    .line 1126
    :cond_7
    const/16 v2, 0x280

    goto :goto_5

    .line 1141
    :cond_8
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sub-int/2addr v7, v0

    if-lt v3, v7, :cond_2

    .line 1142
    sub-int v7, v6, v2

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v6, v7

    sub-int v3, v7, v0

    goto/16 :goto_3

    .line 1146
    :cond_9
    sub-int v7, v5, v1

    if-lt v4, v7, :cond_3

    .line 1147
    sub-int v4, v5, v1

    goto/16 :goto_4
.end method

.method public hideFocusText()V
    .locals 2

    .prologue
    .line 3200
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3201
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 3202
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3205
    :cond_0
    return-void
.end method

.method public hideLaunchIcon()V
    .locals 1

    .prologue
    .line 3129
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v0, :cond_0

    .line 3130
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideLaunchIcon()V

    .line 3132
    :cond_0
    return-void
.end method

.method public hideReviewButton()V
    .locals 1

    .prologue
    .line 3172
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 3173
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->hideMenu()V

    .line 3175
    :cond_0
    return-void
.end method

.method public hideReviewMenu()V
    .locals 4

    .prologue
    .line 3031
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_1

    .line 3063
    :cond_0
    :goto_0
    return-void

    .line 3035
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 3037
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3038
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 3040
    iget-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    if-nez v1, :cond_2

    .line 3042
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftMenu()V

    .line 3045
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 3046
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_2

    .line 3047
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 3052
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 3060
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 3061
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 3159
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3160
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3162
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 3091
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3102
    :goto_0
    return-void

    .line 3094
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isLeftSideMenuVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3095
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3096
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    goto :goto_0

    .line 3098
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3099
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftMenu()V

    .line 3100
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public hideTrayButton()V
    .locals 1

    .prologue
    .line 3184
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3185
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideTrayButton()V

    .line 3187
    :cond_0
    return-void
.end method

.method public initCameraSound()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2364
    const-string v0, "Camera"

    const-string v1, "Initialize Camera Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2367
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v6, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aput v5, v0, v5

    .line 2371
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050006

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 2372
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050007

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050008

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v6

    .line 2376
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2379
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2380
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f05

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2383
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 2404
    return-void
.end method

.method public isCapturing()Z
    .locals 2

    .prologue
    .line 3297
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3298
    const-string v0, "Camera"

    const-string v1, "isCapturing - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    const/4 v0, 0x0

    .line 3301
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    goto :goto_0
.end method

.method public isContinuousShotInProgress()Z
    .locals 2

    .prologue
    .line 3309
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_0

    .line 3310
    const-string v0, "Camera"

    const-string v1, "isContinuousShotInProgress - mCameraEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3311
    const/4 v0, 0x0

    .line 3313
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotInProgress()Z

    move-result v0

    goto :goto_0
.end method

.method public isPreviewStarted()Z
    .locals 1

    .prologue
    .line 3305
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isPreviewStarted()Z

    move-result v0

    return v0
.end method

.method public needToResizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    .line 1751
    const/4 v1, 0x0

    .line 1753
    .local v1, result:Z
    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1755
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1756
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ffaaaaaaaaaaaabL

    cmpl-double v2, v2, v4

    if-nez v2, :cond_0

    .line 1757
    const/4 v1, 0x0

    .line 1774
    :goto_0
    const-string v2, "Camera"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToResizeForPreviewAspectRatio : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    return v1

    .line 1759
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1761
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1762
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe8

    cmpl-double v2, v2, v4

    if-nez v2, :cond_2

    .line 1763
    const/4 v1, 0x0

    goto :goto_0

    .line 1765
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 1767
    :cond_3
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getCurAspectRatio()D

    move-result-wide v2

    const-wide v4, 0x3ff5555555555555L

    cmpl-double v2, v2, v4

    if-nez v2, :cond_4

    .line 1768
    const/4 v1, 0x0

    goto :goto_0

    .line 1770
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onActionShotAcquisitionProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2979
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionShotAcquisitionProgress : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2981
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2983
    .local v0, menu:Lcom/sec/android/app/camera/ActionShotView;
    if-ltz p1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 2984
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 2987
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 2988
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->showCaptureLayout()V

    .line 2989
    return-void

    .line 2986
    :cond_1
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ActionShotView;->setAcquisitionProgress(I)V

    goto :goto_0
.end method

.method public onActionShotCaptureCancelled()V
    .locals 4

    .prologue
    .line 3120
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelSeriesActionShot()V

    .line 3122
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 3124
    .local v0, menu:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 3125
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 3126
    return-void
.end method

.method public onActionShotCaptured()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2616
    const-string v0, "Camera"

    const-string v1, "onActionShotCaptured"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 2618
    return-void
.end method

.method public onActionShotCreatingResultCompleted(Z)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2588
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 2589
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2591
    .local v0, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hidePostCaptureLayout()V

    .line 2592
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 2594
    return-void
.end method

.method public onActionShotCreatingResultProgress(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2597
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2599
    .local v0, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ActionShotView;->setPostCaptureProgress(I)V

    .line 2601
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 2602
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2604
    :cond_0
    return-void
.end method

.method public onActionShotCreatingResultStarted()V
    .locals 4

    .prologue
    .line 2607
    const-string v1, "Camera"

    const-string v2, "onActionShotCreatingResultStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const/high16 v2, 0x7f03

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ActionShotView;

    .line 2610
    .local v0, actionShot:Lcom/sec/android/app/camera/ActionShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->hideCaptureLayout()V

    .line 2611
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ActionShotView;->showPostCaptureLayout()V

    .line 2612
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ActionShotView;->setPostCaptureProgressMax(I)V

    .line 2613
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x0

    const/4 v4, -0x1

    const/4 v2, 0x0

    const-string v3, ")"

    const-string v10, "Camera"

    .line 2898
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2900
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2902
    packed-switch p1, :pswitch_data_0

    .line 2976
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2904
    :pswitch_1
    if-ne p2, v4, :cond_5

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2905
    const/4 v7, 0x0

    .line 2906
    .local v7, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2907
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2908
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2909
    :cond_1
    const-string v0, "Camera"

    const-string v0, "Something goes wrong!! Restart attach mode."

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2914
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    if-eqz v0, :cond_4

    const-string v0, "specify-data"

    invoke-virtual {p3, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2915
    const/4 v9, 0x0

    .line 2917
    .local v9, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    .line 2918
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/OutputStream;->write([B)V

    .line 2919
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    .line 2921
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 2922
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setResult(I)V

    .line 2923
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 2927
    :goto_1
    invoke-static {v9}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    .line 2934
    .end local v9           #outputStream:Ljava/io/OutputStream;
    :cond_3
    :goto_2
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camera;->setResult(ILandroid/content/Intent;)V

    .line 2935
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 2927
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    :catchall_0
    move-exception v0

    invoke-static {v9}, Lcom/sec/android/app/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw v0

    .line 2929
    .end local v9           #outputStream:Ljava/io/OutputStream;
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "bitmap-data"

    invoke-virtual {p3, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2930
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCaptureData()Lcom/sec/android/app/camera/CaptureData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CaptureData;->getCaptureData()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->createCaptureBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2931
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const-string v0, "data"

    invoke-virtual {p3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_2

    .line 2936
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_5
    if-nez p2, :cond_0

    .line 2937
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2938
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled attach image file name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2940
    :try_start_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2945
    :goto_3
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled attach image uri name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2947
    :try_start_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2948
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 2949
    .local v8, e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image uri name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2941
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 2942
    .restart local v8       #e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image file name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2956
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :pswitch_2
    if-nez p2, :cond_0

    .line 2957
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2958
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled blink detection image file name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :try_start_3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2965
    :goto_4
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled blink detection image uri name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2967
    :try_start_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 2968
    :catch_2
    move-exception v0

    move-object v8, v0

    .line 2969
    .restart local v8       #e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image uri name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2961
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    :catch_3
    move-exception v0

    move-object v8, v0

    .line 2962
    .restart local v8       #e:Ljava/lang/UnsupportedOperationException;
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error deleting cancelled attach image file name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2924
    .end local v8           #e:Ljava/lang/UnsupportedOperationException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #outputStream:Ljava/io/OutputStream;
    :catch_4
    move-exception v0

    goto/16 :goto_1

    .line 2902
    :pswitch_data_0
    .packed-switch 0x7d1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onAddMeCancelled()V
    .locals 1

    .prologue
    .line 2681
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAddMe()V

    .line 2682
    return-void
.end method

.method public onAddMeCapturedFirstPerson()V
    .locals 4

    .prologue
    .line 2653
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030001

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2656
    .local v0, AddMeView:Lcom/sec/android/app/camera/AddMeView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AddMeView;->setIsCapturedFirstPerson(Z)V

    .line 2657
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2658
    return-void
.end method

.method public onAddMeError(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    .line 2625
    const-string v0, "Camera"

    const-string v1, "onAddMeError - error"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070005

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070087

    new-instance v2, Lcom/sec/android/app/camera/Camera$6;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$6;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2638
    return-void
.end method

.method public onAddMeInit()V
    .locals 4

    .prologue
    .line 2641
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 2643
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030001

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2644
    .local v0, addMeView:Lcom/sec/android/app/camera/AddMeView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 2645
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2646
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2647
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 2649
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 2650
    return-void
.end method

.method public onAddMePositionSwitched(I)V
    .locals 1
    .parameter "setLeft"

    .prologue
    .line 2621
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->switchAddMePosition(I)V

    .line 2622
    return-void
.end method

.method public onAddMeProgressStitching(I)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/16 v5, 0x64

    const/4 v4, 0x1

    .line 2661
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAddMeProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2662
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030001

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AddMeView;

    .line 2664
    .local v0, addMeView:Lcom/sec/android/app/camera/AddMeView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->getIsCapturedFirstPerson()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2678
    :cond_0
    :goto_0
    return-void

    .line 2667
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showPostCaptureLayout()V

    .line 2668
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AddMeView;->setPostCaptureProgressMax(I)V

    .line 2669
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AddMeView;->setPostCaptureProgress(I)V

    .line 2670
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/AddMeView;->onAddMeProgressStitching(I)V

    .line 2672
    if-ne p1, v5, :cond_0

    .line 2673
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraEngine;->setAddMeStichingCompleted(Z)V

    .line 2674
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->reset()V

    .line 2675
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AddMeView;->showMenu()V

    .line 2676
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto :goto_0
.end method

.method public onAntishakeChanged(I)V
    .locals 3
    .parameter "antishake"

    .prologue
    .line 1587
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 1589
    const/4 v0, 0x0

    .line 1590
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1591
    if-eqz v0, :cond_0

    .line 1592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1594
    :cond_0
    return-void
.end method

.method public onBlinkDetectionEvent(I[I[I[I[I)V
    .locals 12
    .parameter "blink_rect_cnt"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2166
    const-string v5, "Camera"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onBlinkDetectionEvent: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 2169
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 2172
    :cond_0
    if-nez p1, :cond_2

    .line 2173
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 2242
    :cond_1
    return-void

    .line 2175
    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    .line 2177
    const/4 v5, 0x4

    new-array v5, v5, [[I

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 2179
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    .line 2180
    .local v3, picWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v5

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v2

    .line 2182
    .local v2, picHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v5, 0x4

    if-ge v0, v5, :cond_3

    .line 2183
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    new-array v6, p1, [I

    aput-object v6, v5, v0

    .line 2182
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2185
    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    .line 2186
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 2188
    .local v4, rect:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CameraEngine;->getStoreImageOrientation()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2210
    :pswitch_0
    aget v5, p2, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2211
    aget v5, p3, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2212
    aget v5, p4, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2213
    aget v5, p5, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 2217
    :goto_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->left:I

    aput v6, v5, v0

    .line 2218
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->top:I

    aput v6, v5, v0

    .line 2219
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->right:I

    aput v6, v5, v0

    .line 2220
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x3

    aget-object v5, v5, v6

    iget v6, v4, Landroid/graphics/Rect;->bottom:I

    aput v6, v5, v0

    .line 2185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2191
    :pswitch_1
    aget v5, p5, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2192
    aget v5, p2, v0

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2193
    aget v5, p3, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2194
    aget v5, p4, v0

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2197
    :pswitch_2
    aget v5, p2, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2198
    aget v5, p3, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2199
    aget v5, p4, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2200
    aget v5, p5, v0

    sub-int v5, v2, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2203
    :pswitch_3
    aget v5, p3, v0

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 2204
    aget v5, p4, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 2205
    aget v5, p5, v0

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 2206
    aget v5, p2, v0

    sub-int v5, v3, v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    .line 2223
    .end local v4           #rect:Landroid/graphics/Rect;
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2224
    .local v1, log:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_5

    .line 2225
    const-string v5, "OnBlinkDetectonRectSave Complete : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2227
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2229
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2231
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v6, 0x3

    aget-object v5, v5, v6

    aget v5, v5, v0

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2233
    const-string v5, "Camera"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2224
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2237
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 2238
    const/4 v0, 0x0

    :goto_4
    if-ge v0, p1, :cond_1

    .line 2239
    iget-object v5, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    new-instance v6, Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v8, 0x0

    aget-object v7, v7, v8

    aget v7, v7, v0

    int-to-float v7, v7

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v9, 0x1

    aget-object v8, v8, v9

    aget v8, v8, v0

    int-to-float v8, v8

    iget-object v9, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v10, 0x2

    aget-object v9, v9, v10

    aget v9, v9, v0

    int-to-float v9, v9

    iget-object v10, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    const/4 v11, 0x3

    aget-object v10, v10, v11

    aget v10, v10, v0

    int-to-float v10, v10

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2238
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 2188
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onBlinkdetectionChanged(I)V
    .locals 1
    .parameter "blinkdetection"

    .prologue
    .line 1607
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 1608
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initBlinkdetection()V

    .line 1609
    return-void
.end method

.method public onCameraAutocontrastChanged(I)V
    .locals 3
    .parameter "autocontrast"

    .prologue
    .line 1597
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 1599
    const/4 v0, 0x0

    .line 1600
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1601
    if-eqz v0, :cond_0

    .line 1602
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1604
    :cond_0
    return-void
.end method

.method public onCameraQualityChanged(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1613
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1614
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1615
    return-void
.end method

.method public onCameraResolutionChanged(I)V
    .locals 1
    .parameter "resolution"

    .prologue
    .line 1478
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraResolution(I)Z

    .line 1479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1480
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1481
    return-void
.end method

.method public onCartoonShotProgressRendering(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 2992
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCartoonShotProgressRendering : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030010

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 2996
    .local v0, menu:Lcom/sec/android/app/camera/CartoonShotView;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CartoonShotView;->setRederingProgress(I)V

    .line 2997
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->showPostCaptureLayout()V

    .line 2999
    const/16 v1, 0x64

    if-ne p1, v1, :cond_0

    .line 3000
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 3002
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Camera"

    .line 263
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 265
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 269
    const-string v0, "Camera"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0

    .line 271
    :cond_2
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 272
    const-string v0, "Camera"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContinuousShotCapturingProgressed(II)V
    .locals 5
    .parameter "curCapturedNum"
    .parameter "maxImageNum"

    .prologue
    const-string v4, "Camera"

    .line 1928
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onContinuousShotCapturingProgressed() - curCapturedNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",maxImageNum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1930
    const-string v1, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed() - not in progress"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1955
    :goto_0
    return-void

    .line 1934
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 1935
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1936
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 1937
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setCaptureProgress(I)V

    .line 1938
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setProgressText(I)V

    .line 1939
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->isContinuousShotStopRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1940
    const-string v1, "Camera"

    const-string v1, "capture progress not expected in continuous shot anymore"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1941
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 1942
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotSaved()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 1943
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showPostCaptureLayout()V

    .line 1944
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hideCaptureLayout()V

    .line 1949
    :cond_1
    if-ne p1, p2, :cond_2

    .line 1950
    const-string v1, "Camera"

    const-string v1, "onContinuousShotCapturingProgressed - test"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1951
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    sget v3, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_SAVE_DELAY:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1954
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showMenu()V

    goto :goto_0
.end method

.method public onContinuousShotCapturingStopped(I)V
    .locals 4
    .parameter "lastImageNum"

    .prologue
    .line 1994
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onContinuousShotCapturingStopped() - lastImageNum:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotStopRequested(Z)V

    .line 1997
    if-nez p1, :cond_0

    .line 2023
    :goto_0
    return-void

    .line 2001
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 2004
    .local v0, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgressMax(I)V

    .line 2005
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->getPostCaptureProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    .line 2006
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->showPostCaptureLayout()V

    .line 2007
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ContinuousShotView;->hideCaptureLayout()V

    .line 2010
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restoreInitialState()V

    .line 2011
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideShutterButton()V

    goto :goto_0
.end method

.method public onContinuousShotSavingCompleted()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "Camera"

    .line 1958
    const-string v1, "Camera"

    const-string v1, "onContinuousShotSavingCompleted"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_1

    .line 1990
    :cond_0
    :goto_0
    return-void

    .line 1962
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 1963
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030011

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 1965
    .local v0, continuousShot:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/ContinuousShotView;->setTouchHandled(Z)V

    .line 1967
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 1969
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 1970
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotCaptured()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 1971
    const-string v1, "Camera"

    const-string v1, "ContinuousShot Deley"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1972
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1974
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotCaptured(I)V

    .line 1976
    const-string v1, "reviewon"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1977
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 1978
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 1979
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleShowReviewScreen()V

    .line 1980
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/16 v2, 0x9c4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleWait(I)V

    .line 1981
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleHideReviewScreen()V

    .line 1982
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    goto :goto_0

    .line 1984
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v1, :cond_0

    .line 1986
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->setButtonUnlocked()V

    goto/16 :goto_0
.end method

.method public onContrastChanged(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1657
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v4, "CameraPerformance"

    .line 278
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 280
    const-string v1, "Camera"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v1, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StartUp][Begin] - onCreate Start::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v1

    if-nez v1, :cond_0

    sget v1, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    if-ne v1, v5, :cond_0

    .line 284
    const v1, 0x7f030003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 288
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    .line 289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->stopInactivityTimer()V

    .line 290
    iput-object v6, p0, Lcom/sec/android/app/camera/Camera;->mInactivityHandler:Landroid/os/Handler;

    .line 339
    :goto_0
    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 295
    .local v0, win:Landroid/view/Window;
    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 297
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 298
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 300
    const v1, 0x7f030022

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setContentView(I)V

    .line 301
    const v1, 0x7f0a00aa

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 302
    const v1, 0x7f0a00ae

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 306
    const-string v1, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StartUp] - onCreate Layout loaded::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 309
    new-instance v1, Lcom/sec/android/app/camera/MenuResourceData;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/MenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 311
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 313
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 314
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030033

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ShutterButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002c

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/ReviewButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->restoreMenu()V

    .line 318
    const-string v1, "CameraPerformance"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[StartUp] - onCreate UI Resource loaded::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 321
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 322
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->showMenu()V

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 325
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 327
    invoke-direct {p0, v6}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 329
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    .line 331
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mLowBatteryWarningLevel:I

    .line 333
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 335
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamera()V

    .line 337
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    .line 338
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initializeFirstTime()V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 667
    const-string v1, "Camera"

    const-string v3, "onDestroy"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    .line 671
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setMainCameraSelected(Z)V

    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 675
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-eqz v1, :cond_0

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuResourceData;->onDestroy()V

    .line 677
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 680
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentPictureSaving()V

    .line 682
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearCaptureImageData()V

    .line 684
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    .line 686
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    .line 687
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 688
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    .line 690
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    if-eqz v1, :cond_2

    .line 691
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->onDestroy()V

    .line 692
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 694
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 695
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 696
    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBlinkDetectionRects:[[I

    .line 697
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    .line 698
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    .line 699
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mSaveUri:Landroid/net/Uri;

    .line 700
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCropValue:Ljava/lang/String;

    .line 701
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    .line 702
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    .line 703
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 704
    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mInactivityHandler:Landroid/os/Handler;

    .line 706
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 707
    return-void
.end method

.method public onEffectChanged(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1534
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1535
    if-eqz p1, :cond_0

    .line 1536
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1540
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    .line 1173
    return-void
.end method

.method public onExposuremeterChanged(I)V
    .locals 1
    .parameter "exposuremeter"

    .prologue
    .line 1577
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1579
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1580
    return-void
.end method

.method public onFlashModeChanged(I)V
    .locals 3
    .parameter "flashMode"

    .prologue
    const/4 v2, 0x1

    .line 1176
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 1178
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1179
    const/4 p1, 0x1

    .line 1181
    :cond_0
    if-ne p1, v2, :cond_1

    .line 1182
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1186
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1191
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1192
    return-void

    .line 1184
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    goto :goto_0

    .line 1189
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    goto :goto_1
.end method

.method public onFocusModeChanged(I)V
    .locals 1
    .parameter "focusMode"

    .prologue
    .line 1453
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 1457
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1461
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 1462
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1466
    :cond_0
    return-void
.end method

.method public onFocusStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 1864
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFocusStateChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1867
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getTouchFocusPositioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1868
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setFocusIndicator(I)V

    .line 1874
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    .line 1896
    :cond_2
    :goto_1
    return-void

    .line 1871
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setFocusIndicator(I)V

    goto :goto_0

    .line 1882
    :cond_4
    if-nez p1, :cond_2

    .line 1883
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v0

    if-nez v0, :cond_2

    .line 1884
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1885
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 1886
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 1888
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 1889
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTouchFocusIndicator()V

    .line 1890
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    goto :goto_1
.end method

.method public onFrameShotMenuChanged(I)V
    .locals 6
    .parameter "frameindex"

    .prologue
    .line 2146
    const-string v1, "Camera"

    const-string v2, "onFrameShotMenuChanged(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001c

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FrameCaptureMenu;

    .line 2149
    .local v0, frameView:Lcom/sec/android/app/camera/FrameCaptureMenu;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2151
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/FrameCaptureMenu;->setImage(I)V

    .line 2152
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FrameCaptureMenu;->showMenu()V

    .line 2153
    return-void
.end method

.method public onGuidelineChanged(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 1618
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1619
    return-void
.end method

.method public onISOChanged(I)V
    .locals 1
    .parameter "iso"

    .prologue
    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 1572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1573
    return-void
.end method

.method protected onImageStoringCompleted(Ljava/lang/Object;)V
    .locals 12
    .parameter "lock"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 2275
    const-string v6, "Camera"

    const-string v7, "onImageStoringCompleted"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2277
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-eqz v6, :cond_0

    .line 2345
    :goto_0
    return-void

    .line 2280
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->decreaseRemainCount()V

    .line 2281
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateQuickViewButtonDimmed()V

    .line 2283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 2284
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotSaved()I

    move-result v4

    .line 2285
    .local v4, saved:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getNumberOfCsShotCaptured()I

    move-result v1

    .line 2286
    .local v1, captured:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v6, v4}, Lcom/sec/android/app/camera/CameraSettings;->setNumberOfCsShotSaved(I)V

    .line 2288
    if-lt v4, v1, :cond_2

    .line 2289
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearContinuousPostCaptureLayout()V

    .line 2290
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v6, :cond_1

    .line 2291
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 2344
    .end local v1           #captured:I
    .end local v4           #saved:I
    :cond_1
    :goto_1
    monitor-enter p1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    :try_start_1
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 2293
    .restart local v1       #captured:I
    .restart local v4       #saved:I
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030011

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ContinuousShotView;

    .line 2295
    .local v2, continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    invoke-virtual {v2}, Lcom/sec/android/app/camera/ContinuousShotView;->getPostCaptureProgress()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/ContinuousShotView;->setPostCaptureProgress(I)V

    goto :goto_1

    .line 2298
    .end local v1           #captured:I
    .end local v2           #continuousView:Lcom/sec/android/app/camera/ContinuousShotView;
    .end local v4           #saved:I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0xb

    if-ne v6, v7, :cond_7

    .line 2299
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030037

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2301
    .local v5, stopMotionPreview:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v5}, Lcom/sec/android/app/camera/StopMotionPreview;->hideStopMotionProgressLayout()V

    .line 2302
    invoke-virtual {v5}, Lcom/sec/android/app/camera/StopMotionPreview;->reset()V

    .line 2318
    .end local v5           #stopMotionPreview:Lcom/sec/android/app/camera/StopMotionPreview;
    :cond_4
    :goto_3
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v6, :cond_5

    .line 2319
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    .line 2322
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2323
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 2324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 2327
    :cond_6
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    if-nez v6, :cond_b

    .line 2328
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    if-eqz v6, :cond_a

    .line 2329
    const-string v6, "blinkdetection"

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 2303
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    if-ne v6, v10, :cond_8

    .line 2304
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030026

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2306
    .local v3, panorama:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v3}, Lcom/sec/android/app/camera/Panoramax1View;->hidePostCaptureLayout()V

    .line 2307
    invoke-virtual {v3}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    goto :goto_3

    .line 2308
    .end local v3           #panorama:Lcom/sec/android/app/camera/Panoramax1View;
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/16 v7, 0xd

    if-ne v6, v7, :cond_9

    .line 2309
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v7, 0x7f030010

    iget-object v8, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CartoonShotView;

    .line 2311
    .local v0, CartoonShotView:Lcom/sec/android/app/camera/CartoonShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CartoonShotView;->hidePostCaptureLayout()V

    goto :goto_3

    .line 2312
    .end local v0           #CartoonShotView:Lcom/sec/android/app/camera/CartoonShotView;
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    .line 2313
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v6

    if-eq v6, v9, :cond_4

    .line 2314
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    goto/16 :goto_3

    .line 2331
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v6

    if-ne v6, v10, :cond_1

    .line 2332
    const-string v6, "reviewon"

    invoke-virtual {p0, v6, v11}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2336
    :cond_b
    iget-boolean v6, p0, Lcom/sec/android/app/camera/Camera;->mChkBlinkDection:Z

    if-eqz v6, :cond_c

    .line 2337
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    iget-object v7, p0, Lcom/sec/android/app/camera/Camera;->args:Ljava/util/ArrayList;

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2339
    :cond_c
    iget-object v6, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v6, v11}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    .line 2344
    :catch_0
    move-exception v6

    goto/16 :goto_2
.end method

.method public onInflatedMenuHidden()V
    .locals 2

    .prologue
    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 3209
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const-string v3, "Camera"

    .line 710
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-ne v1, v4, :cond_0

    .line 713
    const-string v1, "Camera"

    const-string v1, "onKeyDown - camera is destroying"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 810
    :goto_0
    return v1

    .line 718
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 719
    goto :goto_0

    .line 721
    :catch_0
    move-exception v1

    .line 725
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    .line 726
    goto :goto_0

    .line 729
    :cond_2
    const/16 v1, 0x1a

	goto :cond_3					# djp952: skip special case for power button (0x1A)
    if-ne p1, v1, :cond_3

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 735
    :cond_3
    const-string v1, "Camera"

    const-string v1, "handling onKeyDown event from Activity class"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    sparse-switch p1, :sswitch_data_0

    .line 810
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    move v1, v4

    .line 742
    goto :goto_0

    .line 744
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    goto :goto_1

    .line 749
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v4

    .line 750
    goto :goto_0

    .line 752
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 753
    const-string v1, "Camera"

    const-string v1, "returning because it is launch gallery"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 754
    goto :goto_0

    .line 756
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_6

    .line 757
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v1, v4

    .line 758
    goto :goto_0

    .line 761
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-lez v1, :cond_7

    move v1, v4

    goto :goto_0

    .line 762
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKey()Z

    move-result v1

    if-nez v1, :cond_9

    .line 766
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getTouchAutoFocusActive()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-eqz v1, :cond_8

    .line 770
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 774
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    :cond_9
    move v1, v4

    .line 776
    goto/16 :goto_0

    .line 781
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030041

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 782
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->updateSlider()V

    .line 783
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 784
    const/16 v1, 0x18

    if-ne p1, v1, :cond_b

    .line 785
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomOut()V

    .line 792
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 793
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ZoomMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V

    .line 795
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_a

    .line 800
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 801
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    :cond_a
    move v1, v4

    .line 804
    goto/16 :goto_0

    .line 787
    :cond_b
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomIn()V

    goto :goto_2

    .line 790
    :cond_c
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->showMenu()V

    goto :goto_2

    .line 737
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_2				#djp952: was sswitch_0. 0x1A = Power button
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x50 -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const-string v3, "Camera"

    .line 814
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyUp()-keyCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-ne v0, v2, :cond_0

    .line 817
    const-string v0, "Camera"

    const-string v0, "onKeyUp - camera is destroying"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 889
    :goto_0
    return v0

    .line 822
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 823
    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 829
    :cond_1
    const/16 v0, 0x1a

	goto :cond_2					# djp952: skip special case for power button (0x1A)
    if-ne p1, v0, :cond_2

    .line 831
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 833
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 843
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 844
    goto :goto_0

    .line 836
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 837
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 838
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_1

    .line 847
    :cond_4
    const-string v0, "Camera"

    const-string v0, "handling onKeyUp event from Activity class"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    sparse-switch p1, :sswitch_data_0

    .line 889
    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 851
    :sswitch_0
    const-string v0, "Camera"

    const-string v0, "BACK KEY PRESSED!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isStartingPreview()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 853
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTimerCounting()Z

    move-result v0

    if-nez v0, :cond_7

    .line 856
    const-string v0, "Camera"

    const-string v0, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 857
    goto/16 :goto_0

    .line 860
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    move v0, v2

    .line 861
    goto/16 :goto_0

    :sswitch_1
    move v0, v2

    .line 863
    goto/16 :goto_0

    .line 867
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 868
    goto/16 :goto_0

    .line 870
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 871
    const-string v0, "Camera"

    const-string v0, "returning because it is launch gallery"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 872
    goto/16 :goto_0

    .line 874
    :cond_9
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v0, :cond_a

    .line 875
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/Camera;->showDlg(I)V

    move v0, v2

    .line 876
    goto/16 :goto_0

    .line 878
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v0

    if-nez v0, :cond_5

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto :goto_2

    :sswitch_3
    move v0, v2

    .line 885
    goto/16 :goto_0

    .line 849
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
		0x1a -> :sswitch_2					# djp952: Added line. 0x1A = power button
        0x1b -> :sswitch_2
        0x42 -> :sswitch_2
        0x52 -> :sswitch_1
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "keyValue"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, rectlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/graphics/RectF;>;"
    const-string v2, "Camera"

    .line 2699
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLaunchGallery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    if-nez p1, :cond_0

    .line 2717
    :goto_0
    return-void

    .line 2704
    :cond_0
    new-instance v0, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;-><init>(Lcom/sec/android/app/camera/Camera;Ljava/lang/String;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2706
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2708
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 2709
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    goto :goto_0

    .line 2711
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2712
    const-string v0, "Camera"

    const-string v0, "IllegalStateException."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 2715
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->searchForLastContentUri()V

    goto :goto_0
.end method

.method public onModechanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "Camera"

    .line 1684
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 1686
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CameraEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1687
    const-string v0, "Camera"

    const-string v0, "changeMode failed - engine not started"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :goto_0
    return-void

    .line 1691
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1693
    :cond_1
    const-string v0, "Camera"

    const-string v0, "changeMode failed - image capturing"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1697
    :cond_2
    const-string v0, "Camera"

    const-string v0, "changeMode Started"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getIsSelectedBacklight()Z

    move-result v0

    if-ne v0, v3, :cond_3

    .line 1700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setIsSelectedBacklight(Z)V

    .line 1701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getPreviousFlashMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1710
    :cond_3
    sput v3, Lcom/sec/android/app/camera/Camera;->mSelectedMode:I

    .line 1711
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->switchToCamcorder()V

    goto :goto_0
.end method

.method public onMosaicShotMenuChanged(I)V
    .locals 6
    .parameter "frameindex"

    .prologue
    .line 2156
    const-string v1, "Camera"

    const-string v2, "onMosaicShotMenuChanged(%d)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030023

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MosaicCaptureMenu;

    .line 2159
    .local v0, mosaicView:Lcom/sec/android/app/camera/MosaicCaptureMenu;
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 2161
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MosaicCaptureMenu;->setImage(I)V

    .line 2162
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MosaicCaptureMenu;->showMenu()V

    .line 2163
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->setIntent(Landroid/content/Intent;)V

    .line 419
    return-void
.end method

.method public onObjectTrackingStatus(I)V
    .locals 4
    .parameter "arg0"

    .prologue
    const-string v3, "]"

    const-string v2, "Camera"

    .line 3072
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectTrackingStatus - msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3073
    packed-switch p1, :pswitch_data_0

    .line 3085
    const-string v0, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onObjectTrackingStatus - undefined msg["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3088
    :pswitch_0
    return-void

    .line 3073
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onObjecttrackingChanged(I)V
    .locals 1
    .parameter "objecttracking"

    .prologue
    .line 1583
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 1584
    return-void
.end method

.method public onOutdoorVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1631
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 1632
    return-void
.end method

.method public onPanoramaCaptureCancelled()V
    .locals 1

    .prologue
    .line 2141
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 2142
    return-void
.end method

.method public onPanoramaCaptured()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "Camera"

    .line 2126
    const-string v1, "Camera"

    const-string v1, "onPanoramaCaptured"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2127
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_0

    .line 2128
    const-string v1, "Camera"

    const-string v1, "onPanoramaCaptured - mMenuResourceData is null"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2138
    :goto_0
    return-void

    .line 2132
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2133
    .local v0, panoramaView:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->setCaptureProgressIncreased()V

    .line 2135
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/camera/Camera;->playCameraSound(II)V

    .line 2137
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->restartCancelTimer()V

    goto :goto_0
.end method

.method public onPanoramaCapturedNew()V
    .locals 3

    .prologue
    .line 2027
    const-string v0, "Camera"

    const-string v1, "onPanoramaCapturedNew"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    return-void
.end method

.method public onPanoramaDirectionChanged(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const-string v4, "Camera"

    .line 2032
    const-string v0, "Camera"

    const-string v0, "onPanoramaDirectionChanged - direct"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v0, :cond_0

    .line 2034
    const-string v0, "Camera"

    const-string v0, "onPanoramaDirectionChanged - mMenuResourceData is null"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2056
    :cond_0
    return-void
.end method

.method public onPanoramaError(I)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v6, 0x1

    const-string v5, "Camera"

    .line 2060
    const-string v1, "Camera"

    const-string v1, "onPanoramaError - error"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v1, :cond_0

    .line 2062
    const-string v1, "Camera"

    const-string v1, "onPanoramaError - mCameraEngine is null"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    :goto_0
    return-void

    .line 2066
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->cancelCaptureForPanorama()V

    .line 2068
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_1

    .line 2069
    const-string v1, "Camera"

    const-string v1, "onPanoramaError - mMenuResourceData is null"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2073
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2074
    .local v0, menu:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hidePostCaptureLayout()V

    .line 2075
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showCaptureLayout()V

    .line 2076
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 2077
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 2079
    const v1, 0x7f070017

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onPanoramaProgressStitching(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x64

    const-string v3, "Camera"

    .line 2099
    const-string v1, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanoramaProgressStitching - Stitch progress:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_0

    .line 2101
    const-string v1, "Camera"

    const-string v1, "onPanoramaProgressStitching - mMenuResourceData is null"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :goto_0
    return-void

    .line 2105
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030026

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/Panoramax1View;

    .line 2107
    .local v0, menu:Lcom/sec/android/app/camera/Panoramax1View;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 2109
    if-ne p1, v4, :cond_1

    .line 2110
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgressMax(I)V

    .line 2111
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgress(I)V

    .line 2112
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showCaptureLayout()V

    .line 2113
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    goto :goto_0

    .line 2115
    :cond_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->hideCaptureLayout()V

    .line 2116
    invoke-virtual {v0}, Lcom/sec/android/app/camera/Panoramax1View;->showPostCaptureLayout()V

    .line 2117
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgressMax(I)V

    .line 2118
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/Panoramax1View;->setPostCaptureProgress(I)V

    .line 2120
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->invalidatePreview()V

    goto :goto_0
.end method

.method public onPanoramaRectChanged(II)V
    .locals 6
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const-string v5, "Camera"

    .line 2084
    const-string v0, "Camera"

    const-string v0, "onPanoramaRectChanged - rect"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v0, :cond_0

    .line 2086
    const-string v0, "Camera"

    const-string v0, "onPanoramaRectChanged - mMenuResourceData is null"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 454
    const-string v1, "Camera"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v2, Lcom/sec/android/app/camera/Camera;->CONTINUOUS_SHOT_DELAYED_SAVING:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeMessages(I)V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 461
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 464
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 465
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForEngineStartingThread()V

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForStartPreviewThreadComplete()V

    .line 469
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->enableStatusBar()V

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 472
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 473
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camera;->onFocusStateChanged(I)V

    .line 474
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideAllDlg()V

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_4

    .line 477
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearTimer()V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v1

    if-ne v1, v4, :cond_3

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopPreviewSync()V

    .line 482
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->doStopEngineSync()V

    .line 483
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 488
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 489
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 490
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 491
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 492
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 496
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v1, :cond_6

    .line 497
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getLastImageThumbPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 499
    :cond_6
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 500
    return-void
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, ""

    const-string v9, "Camera"

    .line 544
    const-string v2, "Camera"

    const-string v2, "onResume"

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const-string v2, "CameraPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[StartUp] - onResume Start::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    const-string v0, ""

    .line 547
    .local v0, status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentFilter()V

    .line 548
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->disableStatusBar()V

    .line 557
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartCondition_Call()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkCameraStartConditionCameraFirmwareUpdating()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 558
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 664
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 563
    const-string v2, "Camera"

    const-string v2, "onResume - MediaScanner is Scanning"

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    .line 565
    const-string v2, ""

    invoke-static {p0, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 569
    :goto_1
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    const v3, 0x7f0700d1

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 570
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 571
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 572
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 573
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 567
    :cond_2
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    .line 576
    :cond_3
    sput-object v8, Lcom/sec/android/app/camera/Camera;->mScanToast:Landroid/widget/Toast;

    .line 579
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 581
    const-string v2, "shared"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 582
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    if-nez v2, :cond_4

    .line 583
    const-string v2, ""

    invoke-static {p0, v10, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    sput-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    .line 587
    :goto_2
    const-string v2, "Camera"

    const-string v2, "onResume - media is present but not mounted, and shared via USB mass storage"

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    const v3, 0x7f0700d3

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 589
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 590
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 591
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 592
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0

    .line 585
    :cond_4
    sget-object v2, Lcom/sec/android/app/camera/Camera;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    goto :goto_2

    .line 614
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 615
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->clearPostCaptureLayout()V

    .line 618
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearRequest()V

    .line 619
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->changeEngineState(I)V

    .line 621
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 622
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 624
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartEngine()V

    .line 625
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->schedulePostInit()V

    .line 626
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSetAllParams()V

    .line 627
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 628
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v2, :cond_6

    .line 629
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/ShutterButton;->updateButton(I)V

    .line 632
    :cond_6
    iput-object v8, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initIntentReceive()V

    .line 635
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->onChkImageCaptureIntent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 636
    const-string v2, "from_app"

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 637
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 638
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    .line 652
    :goto_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 653
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 657
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->initRemains()V

    .line 660
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v2, :cond_7

    .line 661
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateThumbnailButton()V

    .line 662
    :cond_7
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 663
    const-string v2, "CameraPerformance"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[StartUp] - onResume End::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 640
    :cond_8
    iput-object v8, p0, Lcom/sec/android/app/camera/Camera;->mChkKeyFromApp:Ljava/lang/String;

    .line 645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2, v6, v6}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 648
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMode(Z)V

    goto :goto_3
.end method

.method public onReviewChanged(I)V
    .locals 1
    .parameter "review"

    .prologue
    .line 1622
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 1626
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1628
    return-void
.end method

.method public onSaturationChanged(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 1666
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1667
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 986
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 988
    .local v0, newZoomValue:I
    if-gez v0, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 991
    :cond_0
    const/16 v1, 0x1e

    if-le v0, v1, :cond_1

    .line 992
    const/16 v0, 0x1e

    .line 994
    :cond_1
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 996
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 997
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 998
    const/4 v1, 0x0

    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1002
    const-string v2, "Camera"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camera;->mInitialZoomValueOnScaleBegin:I

    .line 1006
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_0

    .line 1007
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 1009
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1010
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1013
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1014
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1015
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1018
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 1019
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 1021
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->resetFocusDueToZoom()V

    .line 1023
    const/4 v2, 0x1

    return v2
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 1037
    const-string v0, "Camera"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1039
    return-void
.end method

.method public onSceneModeChanged(I)V
    .locals 4
    .parameter "sceneMode"

    .prologue
    .line 1195
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSceneModeChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 1212
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1214
    const/4 v0, 0x0

    .line 1216
    .local v0, resolutionChanged:Z
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    move-result v0

    .line 1217
    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->handleResolutionChanged(I)V

    .line 1220
    :cond_0
    return-void
.end method

.method public onSearchingLastContentUriCompleted()V
    .locals 1

    .prologue
    .line 2720
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    if-eqz v0, :cond_0

    .line 2721
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera$LastContentUriCallback;->onCompleted()V

    .line 2722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mLastContentUriCallback:Lcom/sec/android/app/camera/Camera$LastContentUriCallback;

    .line 2724
    :cond_0
    return-void
.end method

.method public onSelfModechanged()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1227
    const-string v0, "Camera"

    const-string v1, "onSelfModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getSelfMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    .line 1234
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1237
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 1238
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1239
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1242
    :cond_0
    return-void

    .line 1231
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    .line 1232
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setSelfMode(I)V

    goto :goto_0
.end method

.method public onSharpnessChanged(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 1677
    return-void
.end method

.method public onShootingModeChanged(I)V
    .locals 3
    .parameter "shootingMode"

    .prologue
    .line 1245
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShootingModeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1249
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 1250
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->updateRemainStorageIndicator()V

    .line 1253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 1254
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1255
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1258
    :cond_0
    return-void
.end method

.method public onShutterSoundChanged(I)V
    .locals 5
    .parameter "shuttersound"

    .prologue
    const/4 v2, 0x1

    .line 1635
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 1636
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1637
    const-string v0, "Camera"

    const-string v1, "onShutterSoundChanged"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotSound(I)V

    .line 1640
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1641
    return-void
.end method

.method public onSmileDetectingStopped()V
    .locals 4

    .prologue
    .line 1907
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopSmileDetection()V

    .line 1908
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030036

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 1909
    .local v0, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->stopDetect()V

    .line 1910
    return-void
.end method

.method public onSmileShotDetectionSuccess()V
    .locals 4

    .prologue
    .line 1913
    const-string v1, "Camera"

    const-string v2, "onOnSmileShotDetectionSuccess"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1915
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->smileDetectionCompleted()V

    .line 1917
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030036

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SmileShotView;

    .line 1918
    .local v0, smileView:Lcom/sec/android/app/camera/SmileShotView;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->isStopping()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1924
    :goto_0
    return-void

    .line 1921
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SmileShotView;->stopSmileShot()V

    .line 1922
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterEvent()V

    .line 1923
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->handleShutterReleaseEvent()V

    goto :goto_0
.end method

.method public onStartingPreviewCompleted()V
    .locals 4

    .prologue
    .line 1813
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000e

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 1814
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->unlockResolutionChanging()V

    .line 1816
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restoreInitialState()V

    .line 1817
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1818
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v1, :cond_0

    .line 1819
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->setButtonUnlocked()V

    .line 1821
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    .line 1822
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonUnlocked()V

    .line 1825
    :cond_1
    return-void
.end method

.method public onStopMotionCaptured([B)V
    .locals 4
    .parameter "jpegData"

    .prologue
    .line 2245
    const-string v1, "Camera"

    const-string v2, "onStopMotionCaptured"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030037

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2250
    .local v0, stopMotion:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/StopMotionPreview;->addThumbnailImage([B)V

    .line 2251
    return-void
.end method

.method public onStopMotionPreviewEditingFinished([BZ)V
    .locals 3
    .parameter "jpegData"
    .parameter "chkAppendFrameComplete"

    .prologue
    .line 2254
    const-string v1, "Camera"

    const-string v2, "onStopMotionPreviewEditingFinished"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    if-eqz p2, :cond_0

    .line 2257
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/Camera$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/android/app/camera/Camera$3;-><init>(Lcom/sec/android/app/camera/Camera;[BZ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2262
    .local v0, thread:Ljava/lang/Thread;
    const-string v1, "stopMotionThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 2263
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2267
    .end local v0           #thread:Ljava/lang/Thread;
    :goto_0
    return-void

    .line 2265
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/CameraEngine;->appendStopMotionFrame([BZ)V

    goto :goto_0
.end method

.method public onStopMotionProgressStitching(I)V
    .locals 5
    .parameter "arg0"

    .prologue
    const/16 v4, 0x64

    .line 2685
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStopMotionProgressStitching - Stitch progress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2687
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030037

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StopMotionPreview;

    .line 2689
    .local v0, stopMotionPreview:Lcom/sec/android/app/camera/StopMotionPreview;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StopMotionPreview;->showStopMotionProgressLayout()V

    .line 2690
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionProgressMax(I)V

    .line 2691
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/StopMotionPreview;->setStopMotionProgress(I)V

    .line 2693
    if-ne p1, v4, :cond_0

    .line 2694
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camera;->setIsLaunchGallery(Z)V

    .line 2696
    :cond_0
    return-void
.end method

.method public onStopMotionRestoreMenu()V
    .locals 2

    .prologue
    .line 2270
    const-string v0, "Camera"

    const-string v1, "onStopMotionRestoreMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2271
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 2272
    return-void
.end method

.method public onStorageChanged(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 1645
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1646
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1647
    return-void
.end method

.method public onTimerChanged(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 1469
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1470
    .local v0, sideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1471
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    .line 1473
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1474
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1899
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 1900
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->showMenu()V

    .line 1901
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/TimerCounting;->updateCountingNum(I)V

    .line 1902
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "Camera"

    .line 895
    if-nez p1, :cond_0

    move v0, v3

    .line 982
    :goto_0
    return v0

    .line 897
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsDestroying:Z

    if-ne v0, v2, :cond_1

    .line 898
    const-string v0, "Camera"

    const-string v0, "onTouchEvent - camera is destroying"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 899
    goto :goto_0

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-nez v0, :cond_2

    .line 903
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 907
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 908
    goto :goto_0

    .line 910
    :catch_0
    move-exception v0

    .line 914
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_5

    .line 916
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 917
    goto :goto_0

    .line 919
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 922
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->isPreviewTouchEnabled()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v2

    .line 923
    goto :goto_0

    .line 926
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    .line 928
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v0, :cond_7

    .line 929
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 931
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    move v0, v2

    .line 933
    goto :goto_0

    .line 937
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 982
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 939
    :pswitch_0
    const-string v0, "Camera"

    const-string v0, "MotionEvent.ACTION_UP"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    if-eqz v0, :cond_a

    .line 944
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->shrinkTouchFocusRect()V

    .line 945
    iput v3, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    .line 946
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->scheduleAutoFocus()V

    .line 951
    :cond_a
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camera;->mChkAllowFocusTouch:Z

    move v0, v2

    .line 952
    goto/16 :goto_0

    .line 954
    :pswitch_1
    const-string v0, "Camera"

    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraEngine;->isCurrentState(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 958
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 959
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 962
    :cond_b
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    :cond_c
    move v0, v2

    .line 965
    goto/16 :goto_0

    .line 968
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isTouchAutoFocusEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 969
    iget v0, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camera;->mActionMoveCount:I

    const/4 v1, 0x5

    if-le v0, v1, :cond_d

    .line 970
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleTouchAutoFocusEvent(Landroid/view/MotionEvent;)V

    :cond_d
    move v0, v2

    .line 974
    goto/16 :goto_0

    .line 976
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 977
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 978
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->updateFocusIndicator()V

    move v0, v2

    .line 979
    goto/16 :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1166
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->restartInactivityTimer()V

    .line 1167
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onUserInteraction()V

    .line 1168
    return-void
.end method

.method public onVintageChanged(I)V
    .locals 4
    .parameter "vintage"

    .prologue
    .line 1739
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setShootingVintageMode(I)V

    .line 1742
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003d

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotView;

    .line 1743
    .local v0, menu:Lcom/sec/android/app/camera/VintageShotView;
    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageModeButton(II)V

    .line 1744
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageText(I)V

    .line 1746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1747
    invoke-virtual {v0}, Lcom/sec/android/app/camera/VintageShotView;->showMenu()V

    .line 1748
    return-void
.end method

.method public onWhiteBalanceChanged(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 1552
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1553
    if-eqz p1, :cond_0

    .line 1554
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1557
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1558
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1652
    return-void
.end method

.method public playCameraSound(II)V
    .locals 7
    .parameter "Sound"
    .parameter "loop"

    .prologue
    const/4 v0, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x3

    .line 2409
    if-ltz p1, :cond_3

    if-ge p1, v0, :cond_3

    .line 2410
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2411
    invoke-static {v2, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2412
    :cond_0
    if-ne p1, v2, :cond_1

    .line 2413
    const/16 v0, 0x8

    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2414
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2415
    const/16 v0, 0xb

    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    .line 2422
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 2443
    return-void

    .line 2416
    :cond_3
    if-lt p1, v0, :cond_4

    const/4 v0, 0x6

    if-gt p1, v0, :cond_4

    .line 2417
    invoke-static {v1, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_0

    .line 2418
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_2

    .line 2419
    invoke-static {v2, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camera;->mStreamVolume:F

    goto :goto_0
.end method

.method public resetContinuousShot()V
    .locals 2

    .prologue
    .line 3216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3217
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 3222
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine;->setContinuousShotInProgress(Z)V

    .line 3223
    return-void
.end method

.method protected resetToDefaultSettings()V
    .locals 3

    .prologue
    .line 2447
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700aa

    new-instance v2, Lcom/sec/android/app/camera/Camera$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camera$5;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/Camera$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camera$4;-><init>(Lcom/sec/android/app/camera/Camera;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 2483
    return-void
.end method

.method public resetTouchFocus()V
    .locals 2

    .prologue
    .line 3105
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->isTouchAutoFocusing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3106
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->forSetOrgFocus()V

    .line 3107
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->stopTouchAutoFocus()V

    .line 3108
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->showFocusIndicator()V

    .line 3109
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTouchFocusIndicator()V

    .line 3112
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->getFocusState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 3113
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->cancelAutoFocus()V

    .line 3115
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraEngine;->clearFocusState()V

    .line 3116
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camera;->setTouchAutoFocusActive(Z)V

    .line 3117
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1779
    const-string v2, "Camera"

    const-string v3, "resizeForPreviewAspectRatio"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    const/4 v1, 0x0

    .line 1785
    .local v1, result:Z
    const v2, 0x7f0a00ab

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camera;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1787
    .local v0, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    if-eqz v2, :cond_0

    .line 1788
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1791
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1792
    const-wide v2, 0x3ffaaaaaaaaaaaabL

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    .line 1802
    :goto_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    if-eqz v2, :cond_1

    .line 1803
    invoke-virtual {v0, v4}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setVisibility(I)V

    .line 1804
    iput-boolean v4, p0, Lcom/sec/android/app/camera/Camera;->mSetPreviewInvisible:Z

    .line 1807
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 1808
    return v1

    .line 1794
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1795
    const-wide/high16 v2, 0x3fe8

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    goto :goto_0

    .line 1798
    :cond_3
    const-wide v2, 0x3ff5555555555555L

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setAspectRatio(D)Z

    move-result v1

    goto :goto_0
.end method

.method public restoreInitialState()V
    .locals 2

    .prologue
    .line 3264
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3275
    :cond_0
    :goto_0
    return-void

    .line 3266
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isInflatedMenuSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3268
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->isLeftSideMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3269
    const-string v0, "Camera"

    const-string v1, "restoreInitialState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3270
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    .line 3271
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftMenu()V

    .line 3272
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public saveDataToFile(Ljava/lang/String;[B)Z
    .locals 5
    .parameter "filePath"
    .parameter "data"

    .prologue
    .line 2879
    const/4 v1, 0x0

    .line 2881
    .local v1, f:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2882
    .end local v1           #f:Ljava/io/FileOutputStream;
    .local v2, f:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2886
    if-eqz v2, :cond_0

    .line 2888
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    .line 2894
    :cond_0
    :goto_0
    const/4 v3, 0x1

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return v3

    .line 2883
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 2884
    .local v0, e:Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 2886
    if-eqz v1, :cond_1

    .line 2888
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 2889
    :catch_1
    move-exception v4

    goto :goto_1

    .line 2886
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_2

    .line 2888
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 2886
    :cond_2
    :goto_4
    throw v3

    .line 2889
    :catch_2
    move-exception v4

    goto :goto_4

    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v3

    goto :goto_0

    .line 2886
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 2883
    .end local v1           #f:Ljava/io/FileOutputStream;
    .restart local v2       #f:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #f:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method public setConnectingStateGPS(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3326
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    if-eqz v0, :cond_0

    .line 3327
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraIndicators:Lcom/sec/android/app/camera/CameraIndicators;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraIndicators;->setConnectingStateGPS(I)V

    .line 3328
    :cond_0
    return-void
.end method

.method public setIsLaunchGallery(Z)V
    .locals 0
    .parameter "chkLaunchGallery"

    .prologue
    .line 1049
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mChkLaunchGallery:Z

    .line 1050
    return-void
.end method

.method public setPreviewStatus(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 3453
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->PreviewNotEnded:Z

    .line 3454
    return-void
.end method

.method public setResolutionAndShootingModeToDefault()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1505
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStopPreview()V

    .line 1507
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1509
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03000f

    iget-object v4, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    .line 1510
    .local v0, cameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1511
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    .line 1515
    .local v1, shootingMode:I
    if-ne v1, v7, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1516
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    .line 1521
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->showFocusText()V

    .line 1522
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/Camera;->setImmutableView(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1524
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6, v1}, Lcom/sec/android/app/camera/CameraEngine;->scheduleChangeParameter(II)V

    .line 1526
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->resizeForPreviewAspectRatio()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1529
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraEngine;->scheduleStartPreview()V

    .line 1531
    :cond_1
    return-void

    .line 1517
    :cond_2
    if-eq v1, v7, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->isMainCameraSelected()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1518
    iget-object v2, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/CameraEngine;->scheduleSwitchCamera(Z)V

    goto :goto_0
.end method

.method public setTouchAutoFocusActive(Z)V
    .locals 0
    .parameter "active"

    .prologue
    .line 1062
    iput-boolean p1, p0, Lcom/sec/android/app/camera/Camera;->mTouchAutoFocusActive:Z

    .line 1066
    return-void
.end method

.method public showFocusText()V
    .locals 4

    .prologue
    .line 3191
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 3192
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mFocusText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3193
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mMainHandler:Lcom/sec/android/app/camera/Camera$MainHandler;

    sget v1, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_TIMER_EXPIRED:I

    sget v2, Lcom/sec/android/app/camera/Camera;->FOCUS_TEXT_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/Camera$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3196
    :cond_0
    return-void
.end method

.method public showReviewButton()V
    .locals 1

    .prologue
    .line 3166
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 3167
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->restoreMenu()V

    .line 3169
    :cond_0
    return-void
.end method

.method public showReviewMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3006
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-nez v1, :cond_0

    .line 3028
    :goto_0
    return-void

    .line 3010
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030027

    iget-object v3, p0, Lcom/sec/android/app/camera/Camera;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/PostView;

    .line 3012
    .local v0, menu:Lcom/sec/android/app/camera/PostView;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/PostView;->setImageUri(Landroid/net/Uri;)V

    .line 3013
    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 3014
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-ne v1, v4, :cond_1

    .line 3015
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_1

    .line 3016
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastCapturedFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PostView;->setImagePath(Ljava/lang/String;)V

    .line 3018
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideFocusText()V

    .line 3019
    invoke-virtual {v0}, Lcom/sec/android/app/camera/PostView;->showMenu()V

    .line 3022
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3023
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    .line 3024
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    goto :goto_0

    .line 3026
    :cond_2
    iput-boolean v4, v0, Lcom/sec/android/app/camera/PostView;->mPrevSideMenuVisible:Z

    goto :goto_0
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 3153
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3154
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 3156
    :cond_0
    return-void
.end method

.method public showTrayButton()V
    .locals 1

    .prologue
    .line 3178
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 3179
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->showTrayButton()V

    .line 3181
    :cond_0
    return-void
.end method

.method public updateQuickViewButtonDimmed()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x1d

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2348
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 2349
    .local v0, dim:Lcom/sec/android/app/camera/MenuDimController;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    if-eqz v1, :cond_2

    .line 2350
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->waitForCurrentSearchingLastContentUri()V

    .line 2351
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2352
    :cond_0
    invoke-virtual {v0, v4, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2353
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v1, v5, v5}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 2355
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    iput-boolean v3, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 2361
    :cond_2
    :goto_0
    return-void

    .line 2357
    :cond_3
    invoke-virtual {v0, v4, v3}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 2358
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    iput-boolean v2, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    goto :goto_0
.end method

.method public updateRemainStorageIndicator()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 3243
    const/4 v0, 0x0

    .line 3244
    .local v0, nRemainCount:I
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eq v1, v4, :cond_0

    .line 3245
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->checkStorageLow()V

    .line 3246
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 3247
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/camera/CheckMemory;->getRemainCount(III)I

    move-result v0

    .line 3251
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3252
    iput v4, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    .line 3256
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camera;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 3257
    const/4 v0, 0x0

    .line 3259
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camera;->mCameraBaseIndicators:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setRemainCount(I)V

    .line 3260
    return-void
.end method

.method public updateThumbnail([BILandroid/net/Uri;)V
    .locals 2
    .parameter "data"
    .parameter "degree"
    .parameter "uri"

    .prologue
    .line 3417
    const-string v0, "Camera1018"

    const-string v1, "updateThumbnail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3418
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3420
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/Camera;->setLastPictureThumb([BILandroid/net/Uri;)V

    .line 3421
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 3423
    :cond_0
    return-void
.end method

.method public updateThumbnailButton()V
    .locals 2

    .prologue
    const-string v1, "Camera"

    .line 3355
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_3

    .line 3357
    const-string v0, "Camera"

    const-string v0, "updateThumbnailButton"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3359
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3360
    const-string v0, "Camera"

    const-string v0, "IllegalStateException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3361
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 3363
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mCameraEngine:Lcom/sec/android/app/camera/CameraEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3364
    const v0, 0x7f0700d1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3365
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    .line 3367
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camera;->updateLastImage()V

    .line 3369
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 3371
    :cond_3
    return-void
.end method

.method public viewLastImage()V
    .locals 2

    .prologue
    const-string v1, "Camera"

    .line 3439
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camera;->mIsImageCaptureIntent:Z

    if-nez v0, :cond_0

    .line 3440
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3441
    const-string v0, "quickview"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3450
    :cond_0
    :goto_0
    return-void

    .line 3443
    :cond_1
    const-string v0, "Camera"

    const-string v0, "Can\'t view last image."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3444
    iget-object v0, p0, Lcom/sec/android/app/camera/Camera;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3445
    const-string v0, "Camera"

    const-string v0, "IllegalStateException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3446
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->finish()V

    goto :goto_0
.end method
