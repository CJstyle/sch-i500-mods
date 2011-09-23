.class public Lcom/sec/android/app/camera/Camcorder;
.super Lcom/sec/android/app/camera/AbstractCameraActivity;
.source "Camcorder.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Camcorder$ThumbKicker;,
        Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;
    }
.end annotation


# static fields
.field private static final NUM_SHUTTERSOUND_CHANNELS:I = 0x3

.field private static final SIZE_LIMIT_NOT_SET:I = -0x1

.field protected static final TAG:Ljava/lang/String; = "Camcorder"

.field private static mScanToast:Landroid/widget/Toast;

.field private static mStorageToast:Landroid/widget/Toast;


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

.field private mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

.field private mCamcorderEngineLastContentUri:Landroid/net/Uri;

.field private mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

.field private mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDoRestoreShutterButton:Z

.field mHideScaleZoomRect:Ljava/lang/Runnable;

.field private mInitialZoomValueOnScaleBegin:I

.field private mIsDestroying:Z

.field private mIsVideoCaptureIntent:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

.field private mRecordingSizeUpdateCounter:I

.field private mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

.field private mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

.field private mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStreamVolume:F

.field private mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

.field private mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

.field mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

.field mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 82
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 84
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    .line 85
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    .line 86
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 87
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 91
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 93
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 95
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingSizeUpdateCounter:I

    .line 97
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 100
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 106
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Landroid/os/Handler;

    .line 112
    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 130
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$1;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 907
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$2;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    .line 1452
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    .line 1765
    new-instance v0, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    .line 1767
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Camcorder;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/MenuResourceData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/CamcorderEngine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleMusicServiceCommand(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/Camcorder;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->handleBatteryChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/Camcorder;)Lcom/sec/android/app/camera/widget/TwScaleZoomRect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    return-object v0
.end method

.method private acquireVideoThumb()V
    .locals 3

    .prologue
    .line 1886
    const-string v1, "Camcorder"

    const-string v2, "acquireVideoThumb 1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1887
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_1

    .line 1893
    :cond_0
    :goto_0
    return-void

    .line 1890
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1892
    .local v0, videoFrame:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private checkCamcorderStartCondition_LimitedMMS()Z
    .locals 10

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 409
    .local v1, requestedSizeLimit:J
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getMediaProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;

    move-result-object v0

    .line 411
    .local v0, profile:Lcom/sec/android/app/camera/MediaRecorderProfile;
    const-string v3, "Camcorder"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkCamcorderStartCondition_LimitedMMS: cur size-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ref size-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 415
    cmp-long v3, v1, v8

    if-eqz v3, :cond_0

    iget v3, v0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 417
    const v3, 0x7f0700d6

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 418
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 419
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    move v3, v7

    .line 424
    :goto_0
    return v3

    :cond_0
    move v3, v6

    goto :goto_0
.end method

.method private static dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;
    .locals 1

    .prologue
    .line 1870
    sget-object v0, Lcom/sec/android/app/camera/ImageManager$DataLocation;->EXTERNAL:Lcom/sec/android/app/camera/ImageManager$DataLocation;

    return-object v0
.end method

.method private handleBatteryChanged(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 1252
    const-string v5, "status"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1253
    .local v4, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1254
    .local v3, battScale:I
    const-string v5, "level"

    invoke-virtual {p1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1255
    .local v1, battLevel:I
    const-string v5, "plugged"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1256
    .local v2, battPlugged:I
    const-string v5, "health"

    invoke-virtual {p1, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1258
    .local v0, battHealth:I
    const-string v5, "Camcorder"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleBatteryChanged : Level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", battPlugged = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-ge v1, v5, :cond_0

    if-eq v4, v9, :cond_0

    .line 1268
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleLowBattery()V

    .line 1271
    :cond_0
    if-eq v2, v9, :cond_1

    if-ne v2, v8, :cond_2

    .line 1272
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setBatteryCharging()V

    .line 1277
    :goto_0
    return-void

    .line 1276
    :cond_2
    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    mul-int/lit8 v6, v1, 0x64

    div-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setBatteryLevel(I)V

    goto :goto_0
.end method

.method private handleMusicServiceCommand(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    const-string v7, "from"

    const-string v6, "command"

    const-string v5, "Camcorder"

    .line 199
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 200
    .local v2, myExtras:Landroid/os/Bundle;
    const-string v3, "Camcorder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMusicServiceCommand - cmd:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "command"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "from"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v3, :cond_1

    .line 202
    const-string v3, "Camcorder"

    const-string v3, "handleMusicServiceCommand - mCamcorderEngine is null"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    const-string v3, "command"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, command:Ljava/lang/String;
    const-string v3, "from"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, from:Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 212
    const-string v3, "pause"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 215
    const-string v3, "Camcorder"

    const-string v3, "handleMusicServiceCommand - do stop recording by cmd"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    .line 217
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0
.end method

.method private hideWaitingAnimation()V
    .locals 2

    .prologue
    .line 714
    const-string v0, "Camcorder"

    const-string v1, "hideWaitingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    if-nez v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->inflateWaitingView()V

    .line 719
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->stop()V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwWaitingView;->setVisibility(I)V

    .line 721
    return-void
.end method

.method private inflateWaitingView()V
    .locals 3

    .prologue
    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 725
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03003f

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 726
    const v1, 0x7f0a00af

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwWaitingView;

    iput-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    .line 727
    return-void
.end method

.method private initIntentFilter()V
    .locals 4

    .prologue
    .line 293
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    const-string v3, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 299
    const-string v3, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 300
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 301
    const-string v3, "com.android.camera.NEW_PICTURE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 302
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 305
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 306
    .local v2, intentFilterMusicCmd:Landroid/content/IntentFilter;
    const-string v3, "com.android.music.musicservicecommand"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v1, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v3, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/camera/Camcorder;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 315
    return-void
.end method

.method private initRemains()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLastContentUri(Landroid/net/Uri;)V

    .line 328
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->initCamcorderSound()V

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->updateBackgroundTransparency()V

    .line 333
    invoke-static {}, Lcom/sec/android/app/camera/CheckMemory;->isStorageMounted()Z

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/Camcorder;->checkStorage(ZZ)V

    .line 334
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderIndicators;->initIndicators()V

    .line 336
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback()V

    .line 337
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setViewerRunning(Z)V

    .line 338
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateQuickViewButtonDimmed()V

    .line 340
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 347
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    goto :goto_0
.end method

.method private initializeFirstTime()V
    .locals 6

    .prologue
    .line 1795
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    .line 1796
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v2, :cond_1

    .line 1797
    const-string v2, "Camcorder"

    const-string v3, "initializeFirstTime ThumbnailController new"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-nez v2, :cond_0

    .line 1800
    new-instance v2, Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/android/app/camera/ThumbnailController;-><init>(Landroid/content/res/Resources;Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    .line 1801
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getLastVideoThumbPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ThumbnailController;->loadData(Ljava/lang/String;)Z

    .line 1813
    :cond_0
    :goto_0
    return-void

    .line 1809
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1810
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 1811
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private isVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onChkVideoCaptureIntent()Z
    .locals 2

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private onChkVideoCaptureIntentWithNoCropping()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1479
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1480
    .local v0, myExtras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1481
    const-string v1, "nocrop"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1482
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private showWaitingAnimation()V
    .locals 2

    .prologue
    .line 703
    const-string v0, "Camcorder"

    const-string v1, "showWaitingAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setLaunchIconInvisible()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    if-nez v0, :cond_0

    .line 706
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->inflateWaitingView()V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwWaitingView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mWaitingView:Lcom/sec/android/app/camera/widget/TwWaitingView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->start()V

    .line 711
    return-void
.end method

.method private switchToCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 944
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 945
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TurnOnScrAB"

    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->bTurnOnScrAB:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 950
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 952
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 954
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->bTurnOnScrAB:Z

    .line 955
    const-string v1, "Camcorder"

    const-string v2, "Camcorder finishing"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 959
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    .line 960
    return-void
.end method

.method private updateLastVideo()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1836
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;

    move-result-object v8

    invoke-static {v7, v8, v11, v9, v10}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v4

    .line 1838
    .local v4, list:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 1839
    .local v0, count:I
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/sec/android/app/camera/Camcorder;->dataLocation()Lcom/sec/android/app/camera/ImageManager$DataLocation;

    move-result-object v8

    invoke-static {v7, v8, v11, v9, v10}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v5

    .line 1841
    .local v5, listsd:Lcom/sec/android/app/camera/gallery/IImageList;
    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    .line 1843
    .local v1, countsd:I
    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 1844
    sub-int v7, v0, v9

    invoke-interface {v4, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 1845
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    sub-int v7, v1, v9

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 1846
    .local v3, imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v7

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDateTaken()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_0

    .line 1847
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 1848
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1866
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    invoke-interface {v4}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 1867
    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 1868
    return-void

    .line 1850
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    .restart local v3       #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_0
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 1851
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1853
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 1854
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v7, v10, v10}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1855
    :cond_2
    if-nez v1, :cond_3

    .line 1856
    sub-int v7, v0, v9

    invoke-interface {v4, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 1857
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 1858
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 1860
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v6           #uri:Landroid/net/Uri;
    :cond_3
    sub-int v7, v1, v9

    invoke-interface {v5, v7}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 1861
    .restart local v3       #imagesd:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v6

    .line 1862
    .restart local v6       #uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method


# virtual methods
.method public IsShutterButtonHidden()Z
    .locals 1

    .prologue
    .line 1750
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    return v0
.end method

.method public ShutterButtonIsRestored()V
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 1755
    return-void
.end method

.method public cancelShutterTimer()V
    .locals 1

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 1668
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelShutterTimer()V

    .line 1671
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showShutterButton()V

    .line 1672
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->showTrayButton()V

    .line 1678
    return-void
.end method

.method public changeContrastPreview(I)V
    .locals 2
    .parameter "contrast"

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1101
    return-void
.end method

.method public changeEffectPreview(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1054
    if-eqz p1, :cond_0

    .line 1055
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1056
    :cond_0
    return-void
.end method

.method public changeSaturationPreview(I)V
    .locals 2
    .parameter "saturation"

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x73

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1105
    return-void
.end method

.method public changeSceneModePreview(I)V
    .locals 0
    .parameter "sceneMode"

    .prologue
    .line 1687
    return-void
.end method

.method public changeSharpnessPreview(I)V
    .locals 2
    .parameter "sharpness"

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1109
    return-void
.end method

.method public changeWhiteBalancePreview(I)V
    .locals 3
    .parameter "whiteBalance"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1038
    if-eqz p1, :cond_0

    .line 1039
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0x6c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->onCameraSettingsChanged(II)V

    .line 1040
    :cond_0
    return-void
.end method

.method protected checkLowBattery()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1280
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1281
    .local v4, intent:Landroid/content/Intent;
    const-string v5, "status"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1282
    .local v3, battStatus:I
    const-string v5, "scale"

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1283
    .local v2, battScale:I
    const-string v5, "level"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1284
    .local v0, battLevel:I
    const-string v5, "plugged"

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1286
    .local v1, battPlugged:I
    const-string v5, "Camcorder"

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

    .line 1288
    iget v5, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    if-ge v0, v5, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    move v5, v9

    .line 1292
    :goto_0
    return v5

    :cond_0
    move v5, v8

    goto :goto_0
.end method

.method public checkStorage(ZZ)V
    .locals 2
    .parameter "bMediaStorage"
    .parameter "bBroadcastReceiver"

    .prologue
    .line 1738
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1739
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 1740
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1741
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 1742
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1743
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1746
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->checkStorage(ZZ)V

    .line 1747
    return-void
.end method

.method public checkStorageLow()V
    .locals 4

    .prologue
    .line 1725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getAvailableStorage()J

    move-result-wide v0

    .line 1726
    .local v0, lAvailableStorage:J
    const-wide/16 v2, -0x2

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1727
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 1735
    :goto_0
    return-void

    .line 1730
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1731
    const/4 v2, 0x1

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0

    .line 1733
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public finishRecordingWithError()V
    .locals 4

    .prologue
    .line 1455
    const-string v1, "Camcorder"

    const-string v2, "finishRecordingWithError"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030041

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 1458
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1463
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1464
    return-void
.end method

.method public getChkKeyFromApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    return-object v0
.end method

.method protected handleBatteryOverheat()V
    .locals 0

    .prologue
    .line 1249
    return-void
.end method

.method protected handleLowBattery()V
    .locals 2

    .prologue
    .line 1296
    const-string v0, "Camcorder"

    const-string v1, "handleLowBattery"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1298
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 1299
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 1303
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 1306
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleLowBattery()V

    .line 1307
    return-void

    .line 1301
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public handleRecordingCommand(I)V
    .locals 4
    .parameter "command"

    .prologue
    .line 1338
    packed-switch p1, :pswitch_data_0

    .line 1353
    const-string v1, "Camcorder"

    const-string v2, "Invalid recording state."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030041

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 1358
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1359
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1361
    :cond_0
    return-void

    .line 1340
    .end local v0           #menu:Lcom/sec/android/app/camera/ZoomMenu;
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePauseVideoRecording()V

    goto :goto_0

    .line 1343
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleResumeVideoRecording()V

    goto :goto_0

    .line 1346
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0

    .line 1349
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 1350
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleProcessBack()V

    goto :goto_0

    .line 1338
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public handleRecordingTimerElapsed()V
    .locals 4

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 1329
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingSizeUpdateCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingSizeUpdateCounter:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1330
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoFileLengthInByte()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 1331
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mRecordingSizeUpdateCounter:I

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateRecordingTime(I)V

    .line 1334
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->invalidatePreview()V

    .line 1335
    return-void
.end method

.method public handleResolutionChanged(IZ)V
    .locals 4
    .parameter "resolution"
    .parameter "restartPreview"

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030008

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;

    .line 1011
    .local v0, menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->lockResolutionChanging()V

    .line 1013
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 1014
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v2, 0x68

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    .line 1015
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1016
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1023
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->updateBackgroundTransparency()V

    .line 1024
    return-void
.end method

.method public handleShutter()V
    .locals 2

    .prologue
    .line 676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->pauseAudioPlayback()V

    .line 678
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->schedulePrepareVideoRecording()V

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 691
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->showWaitingAnimation()V

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->getVisibility()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mDoRestoreShutterButton:Z

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartVideoRecording()V

    .line 700
    return-void

    .line 682
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 685
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 688
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleShutterTimer(I)V

    goto :goto_0

    .line 680
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public hideLaunchIcon()V
    .locals 1

    .prologue
    .line 1663
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->hideLaunchIcon()V

    .line 1664
    return-void
.end method

.method public hideReviewButton()V
    .locals 1

    .prologue
    .line 1645
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 1646
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->hideMenu()V

    .line 1648
    :cond_0
    return-void
.end method

.method public hideShutterButton()V
    .locals 1

    .prologue
    .line 1633
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1634
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 1636
    :cond_0
    return-void
.end method

.method public hideSideMenu()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1613
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1624
    :goto_0
    return-void

    .line 1616
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->isLeftSideMenuVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1617
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    .line 1618
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->restoreMenu()V

    goto :goto_0

    .line 1620
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    .line 1621
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideLeftMenu()V

    .line 1622
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public hideTrayButton()V
    .locals 1

    .prologue
    .line 1657
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideTrayButton()V

    .line 1660
    :cond_0
    return-void
.end method

.method public initCamcorderSound()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1179
    const-string v0, "Camcorder"

    const-string v1, "Initialize Camcorder Sound"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1, v4, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    .line 1184
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aput v5, v0, v5

    .line 1185
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 1186
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050003

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    aput v2, v0, v1

    .line 1202
    return-void
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 1758
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-nez v0, :cond_0

    .line 1759
    const-string v0, "Camcorder"

    const-string v1, "isRecording - mCamcorderEngine is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const/4 v0, 0x0

    .line 1762
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->isRecording()Z

    move-result v0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    const-string v3, ")"

    const-string v7, "Camcorder"

    .line 1580
    const-string v0, "Camcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    const-string v0, "Camcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    const-string v0, "Camcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--onActivityResult--data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    packed-switch p1, :pswitch_data_0

    .line 1610
    :cond_0
    :goto_0
    return-void

    .line 1586
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_3

    .line 1587
    const/4 v6, 0x0

    .line 1588
    .local v6, cursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1589
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1590
    :cond_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1591
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1592
    invoke-virtual {p0, p2, p3}, Lcom/sec/android/app/camera/Camcorder;->setResult(ILandroid/content/Intent;)V

    .line 1593
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_0

    .line 1596
    :cond_2
    const-string v0, "Camcorder"

    const-string v0, "Something goes wrong!! Restart attach mode."

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1597
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_3
    if-nez p2, :cond_0

    .line 1598
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    if-ne v0, v1, :cond_0

    .line 1599
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1600
    const-string v0, "Camcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled attach image file name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentVideoFilename()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1603
    const-string v0, "Camcorder"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting cancelled attach image uri name: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

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

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1584
    nop

    :pswitch_data_0
    .packed-switch 0x7d2
        :pswitch_0
    .end packed-switch
.end method

.method public onCamcorderAutocontrastChanged(I)V
    .locals 1
    .parameter "autocontrast"

    .prologue
    .line 1059
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    .line 1060
    return-void
.end method

.method public onCamcorderQualityChanged(I)V
    .locals 1
    .parameter "quality"

    .prologue
    .line 1064
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 1065
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1066
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 1067
    return-void
.end method

.method public onCamcorderResolutionChanged(I)V
    .locals 4
    .parameter "resolution"

    .prologue
    .line 1001
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSideMenu;

    .line 1002
    .local v0, sideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1003
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1004
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1005
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 1006
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const-string v3, "Camcorder"

    .line 223
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 225
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 226
    const-string v0, "Camcorder"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_LANDSCAPE!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 229
    const-string v0, "Camcorder"

    const-string v0, "!!!!!!!!!!!!!!!ORIENTATION_PORTRAIT!!!!!!!!!!!!!!!!!!!!"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->setLandscapeActive(Z)V

    goto :goto_0
.end method

.method public onContrastChanged(I)V
    .locals 1
    .parameter "contrast"

    .prologue
    .line 1088
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 1089
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCreate(Landroid/os/Bundle;)V

    .line 237
    const-string v2, "Camcorder"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 240
    .local v1, win:Landroid/view/Window;
    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 242
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->clear()V

    .line 243
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/MenuDimController;->clear()V

    .line 245
    const v2, 0x7f030022

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->setContentView(I)V

    .line 246
    const v2, 0x7f0a00aa

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 248
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CameraSettings;->setMode(I)V

    .line 250
    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 251
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->setOnTimerEventListener(Lcom/sec/android/app/camera/CameraEngine$OnTimerEventListener;)V

    .line 253
    new-instance v2, Lcom/sec/android/app/camera/MenuResourceData;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/MenuResourceData;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030004

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 256
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030005

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CamcorderIndicators;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    .line 257
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030009

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/CamcorderSideMenu;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    .line 258
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030033

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ShutterButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 260
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03002c

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/ReviewButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 261
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ReviewButton;->restoreMenu()V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/CamcorderIndicators;->setChild(Lcom/sec/android/app/camera/MenuBase;)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showMenu()V

    .line 267
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 268
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonLocked()V

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mLowBatteryWarningLevel:I

    .line 276
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->initializeCamcorder()V

    .line 278
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    .line 279
    .local v0, recordingMode:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 280
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->isVideoCaptureIntent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsVideoCaptureIntent:Z

    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initializeFirstTime()V

    .line 283
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 557
    const-string v0, "Camcorder"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    .line 560
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->restoreUserSettingValues()V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuResourceData;->onDestroy()V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearErrorMessageHandler()V

    .line 569
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearSearchingHandler()V

    .line 571
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    .line 573
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    .line 574
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    .line 575
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    .line 576
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderIndicators:Lcom/sec/android/app/camera/CamcorderIndicators;

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->onDestroy()V

    .line 580
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    .line 582
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 583
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    .line 584
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 585
    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mInactivityHandler:Landroid/os/Handler;

    .line 587
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onDestroy()V

    .line 588
    return-void
.end method

.method public onEffectChanged(I)V
    .locals 2
    .parameter "effect"

    .prologue
    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 1044
    if-eqz p1, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderWB(I)V

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1049
    return-void
.end method

.method public onExposureValueChanged(I)V
    .locals 1
    .parameter "exposureValue"

    .prologue
    .line 925
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 926
    return-void
.end method

.method public onFlashModeChanged(I)V
    .locals 1
    .parameter "flashMode"

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 990
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 991
    return-void
.end method

.method public onGuidelineChanged(I)V
    .locals 1
    .parameter "guideline"

    .prologue
    .line 1070
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1071
    return-void
.end method

.method public onInflatedMenuHidden()V
    .locals 2

    .prologue
    .line 1681
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 1682
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const-string v4, "Camcorder"

    .line 591
    const-string v2, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown()-keyCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-boolean v2, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-ne v2, v5, :cond_0

    .line 594
    const-string v2, "Camcorder"

    const-string v2, "onKeyDown - camera is destroying"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 672
    :goto_0
    return v2

    .line 599
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v2, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyDown(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 600
    goto :goto_0

    .line 602
    :catch_0
    move-exception v2

    .line 606
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    .line 607
    goto :goto_0

    .line 610
    :cond_2
    const/16 v2, 0x1a

    if-ne p1, v2, :cond_3

    .line 611
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 612
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 616
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->isPrepareRecording()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 617
    const-string v2, "Camcorder"

    const-string v2, "onKeyDown()- isPrepareRecording"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 618
    goto :goto_0

    .line 621
    :cond_4
    sparse-switch p1, :sswitch_data_0

    .line 672
    :sswitch_0
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    :sswitch_1
    move v2, v5

    .line 625
    goto :goto_0

    .line 634
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getZoomBlocked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v5

    .line 635
    goto :goto_0

    .line 637
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03003b

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 639
    .local v1, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getRecordingState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    move v2, v5

    .line 641
    goto :goto_0

    .line 644
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030041

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 645
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->updateSlider()V

    .line 646
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 647
    const/16 v2, 0x18

    if-ne p1, v2, :cond_8

    .line 648
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomOut()V

    .line 655
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 656
    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/ZoomMenu;->setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V

    .line 658
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v2, :cond_7

    .line 660
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    :cond_7
    move v2, v5

    .line 663
    goto/16 :goto_0

    .line 650
    :cond_8
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->zoomIn()V

    goto :goto_1

    .line 653
    :cond_9
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->showMenu()V

    goto :goto_1

    .end local v0           #menu:Lcom/sec/android/app/camera/ZoomMenu;
    .end local v1           #recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    :sswitch_3
    move v2, v5

    .line 666
    goto/16 :goto_0

    .line 621
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x17 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
        0x1b -> :sswitch_0
        0x52 -> :sswitch_1
        0x54 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "Camcorder"

    .line 730
    const-string v1, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp()-keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-boolean v1, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-ne v1, v4, :cond_0

    .line 733
    const-string v1, "Camcorder"

    const-string v1, "onKeyUp - camera is destroying"

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 806
    :goto_0
    return v1

    .line 738
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/MenuBase;->onKeyUp(ILandroid/view/KeyEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    .line 739
    goto :goto_0

    .line 741
    :catch_0
    move-exception v1

    .line 745
    :cond_1
    const/16 v1, 0x1a

    if-ne p1, v1, :cond_2

    .line 746
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 756
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    .line 757
    goto :goto_0

    .line 749
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/CameraSettings;->setLock(Z)V

    .line 750
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    goto :goto_1

    .line 760
    :cond_4
    sparse-switch p1, :sswitch_data_0

    .line 806
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    :sswitch_0
    move v1, v4

    .line 762
    goto :goto_0

    .line 765
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v4

    .line 766
    goto :goto_0

    .line 768
    :cond_5
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_6

    .line 769
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->showDlg(I)V

    move v1, v4

    .line 770
    goto :goto_0

    .line 773
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->handleShutter()V

    goto :goto_2

    .line 776
    :sswitch_2
    const-string v1, "Camcorder"

    const-string v1, "BACK KEY PRESSED!"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isStartingPreview()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 780
    const-string v1, "Camcorder"

    const-string v1, "Ignoring BACK KEY because preview is being started!"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 781
    goto :goto_0

    .line 784
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030041

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 785
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 786
    const-string v1, "Camcorder"

    const-string v1, "Back key event for zoom menu."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v1, v4

    .line 788
    goto/16 :goto_0

    .line 791
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaRecorderRecording()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 793
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 795
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    move v1, v4

    .line 796
    goto/16 :goto_0

    .end local v0           #menu:Lcom/sec/android/app/camera/ZoomMenu;
    :sswitch_3
    move v1, v4

    .line 799
    goto/16 :goto_0

    :sswitch_4
    move v1, v4

    .line 801
    goto/16 :goto_0

    .line 760
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1b -> :sswitch_1
        0x52 -> :sswitch_0
        0x54 -> :sswitch_4
    .end sparse-switch
.end method

.method public onLaunchGallery(Ljava/lang/String;)V
    .locals 9
    .parameter "keyValue"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v8, "com.sec.android.app.camera"

    const-string v7, "Camcorder"

    .line 1486
    const-string v2, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterMediaBrowerFromCamcorder: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string v2, "Camcorder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camcorder getLastContentUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1489
    if-nez p1, :cond_1

    .line 1559
    :cond_0
    :goto_0
    return-void

    .line 1492
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getViewerRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1493
    const-string v2, "Camcorder"

    const-string v2, "Skip launching the Viewer because another instance is neing launched"

    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1496
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/Camcorder;->setViewerRunning(Z)V

    .line 1499
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v4, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/Camcorder;->sendBroadcast(Landroid/content/Intent;)V

    .line 1501
    const-string v2, "quickview"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "reviewon"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1515
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1516
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.ReviewImage"

    invoke-virtual {v1, v8, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1519
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-nez v2, :cond_4

    .line 1520
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1537
    :goto_1
    const-string v2, "android.intent.extra.fullScreen"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1538
    const-string v2, "android.intent.extra.showActionIcons"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1539
    const-string v2, "com.sec.android.app.camera.ReviewMode"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1541
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->startActivity(Landroid/content/Intent;)V

    .line 1544
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto :goto_0

    .line 1523
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 1524
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->updateLastVideo()V

    .line 1526
    :cond_5
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1527
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ThumbnailController;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1529
    :cond_6
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1530
    const-string v2, "Camcorder"

    const-string v2, "IllegalStateException."

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1533
    :cond_7
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 1545
    .end local v1           #intent:Landroid/content/Intent;
    :cond_8
    const-string v2, "from_app"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1548
    .local v0, cropIntent:Landroid/content/Intent;
    const-string v2, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.CropImage"

    invoke-virtual {v0, v8, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1550
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1551
    const-string v2, "noFaceDetection"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1552
    const-string v2, "attach-video"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1554
    const/16 v2, 0x7d2

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/camera/Camcorder;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1557
    invoke-virtual {p0, v6, v6}, Lcom/sec/android/app/camera/Camcorder;->overridePendingTransition(II)V

    goto/16 :goto_0
.end method

.method public onModechanged()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    iget-object v0, v0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentState:Lcom/sec/android/app/camera/AbstractCeState;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    .line 935
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 941
    :goto_0
    return-void

    .line 939
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/Camcorder;->mSelectedMode:I

    .line 940
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->switchToCamera()V

    goto :goto_0
.end method

.method public onOutdoorVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 1084
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 1085
    return-void
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x1

    const-string v4, "Camcorder"

    .line 355
    const-string v0, "Camcorder"

    const-string v0, "onPause"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 357
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->stopKickThumbSuspend()V

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableStatusBar()V

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForEngineStartingThread()V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartPreviewThreadComplete()V

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->waitForStartRecordingThreadComplete()V

    .line 367
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getVideoRecordingTimeInSecond()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doCancelVideoRecordingSync()V

    .line 377
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->restoreMenu()V

    .line 384
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getCurrentStateHandler()Lcom/sec/android/app/camera/AbstractCeState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCeState;->getId()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopPreviewSync()V

    .line 389
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopEngineSync()V

    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 391
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->hideAllDlg()V

    .line 397
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_4

    .line 398
    const-string v0, "Camcorder"

    const-string v0, "onPause ThumbnailController storeData"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v0, :cond_4

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-static {}, Lcom/sec/android/app/camera/ImageManager;->getLastVideoThumbPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ThumbnailController;->storeData(Ljava/lang/String;)Z

    .line 402
    :cond_4
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onPause()V

    .line 403
    return-void

    .line 375
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doStopVideoRecordingSync()V

    goto :goto_0
.end method

.method public onRecordingModeChanged(I)V
    .locals 5
    .parameter "recordingMode"

    .prologue
    const-string v4, "Camcorder"

    .line 963
    const-string v1, "Camcorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecordingModeChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSideMenu;

    .line 965
    .local v0, sideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 966
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    .line 968
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camcorder;->resetMaxVideoDuration(I)V

    .line 970
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopPreview()V

    .line 971
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    const/16 v2, 0x65

    invoke-virtual {v1, v2, p1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 973
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 975
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->resizeForPreviewAspectRatio()Z

    move-result v1

    if-nez v1, :cond_0

    .line 976
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 979
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateRemainStorageIndicator()V

    .line 981
    const-string v1, "Camcorder"

    const-string v1, "onRecordingModeChanged out"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1574
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1575
    const-string v0, "mCamcorderEngineLastContentUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngineLastContentUri:Landroid/net/Uri;

    .line 1576
    return-void
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, ""

    const-string v4, "Camcorder"

    .line 428
    const-string v3, "Camcorder"

    const-string v3, "onResume"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v1, ""

    .line 430
    .local v1, status:Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initIntentFilter()V

    .line 431
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->disableStatusBar()V

    .line 440
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartCondition_Call()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCameraStartConditionCameraFirmwareUpdating()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 554
    :goto_0
    return-void

    .line 445
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 446
    const-string v3, "Camcorder"

    const-string v3, "onResume - MediaScanner is Scanning"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    if-nez v3, :cond_2

    .line 448
    const-string v3, ""

    invoke-static {p0, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    .line 452
    :goto_1
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    const v4, 0x7f0700d1

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 453
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 454
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 455
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 456
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_0

    .line 450
    :cond_2
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    goto :goto_1

    .line 459
    :cond_3
    sput-object v7, Lcom/sec/android/app/camera/Camcorder;->mScanToast:Landroid/widget/Toast;

    .line 462
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 464
    const-string v3, "shared"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 465
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    if-nez v3, :cond_4

    .line 466
    const-string v3, ""

    invoke-static {p0, v8, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    .line 470
    :goto_2
    const-string v3, "Camcorder"

    const-string v3, "onResume - media is present but not mounted, and shared via USB mass storage"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    const v4, 0x7f0700d3

    invoke-virtual {v3, v4}, Landroid/widget/Toast;->setText(I)V

    .line 472
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v3, v6}, Landroid/widget/Toast;->setDuration(I)V

    .line 473
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 474
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    .line 475
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_0

    .line 468
    :cond_4
    sget-object v3, Lcom/sec/android/app/camera/Camcorder;->mStorageToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    goto :goto_2

    .line 497
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 498
    .local v2, win:Landroid/view/Window;
    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 500
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->disableStatusBar()V

    .line 502
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->clearRequest()V

    .line 503
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 505
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartEngine()V

    .line 506
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleSetAllParams()V

    .line 507
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    .line 509
    iput-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 510
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 512
    .local v0, myExtras:Landroid/os/Bundle;
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->onChkVideoCaptureIntent()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CamcorderEngine;->setIsVideoCaptureIntent(Z)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 513
    const-string v3, "from_app"

    iput-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 514
    if-eqz v0, :cond_a

    .line 515
    const-string v3, "mms"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 516
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v5, v4}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 517
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->checkCamcorderStartCondition_LimitedMMS()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 519
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 523
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 524
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    .line 537
    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/ShutterButton;->setButtonLocked()V

    .line 538
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonLocked()V

    .line 541
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleWait(I)V

    .line 542
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 544
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->initRemains()V

    .line 545
    iget-boolean v3, p0, Lcom/sec/android/app/camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v3, :cond_8

    .line 546
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateThumbnailButton()V

    .line 548
    :cond_8
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbKicker:Lcom/sec/android/app/camera/Camcorder$ThumbKicker;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camcorder$ThumbKicker;->suspendThumbWork()V

    .line 550
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    if-eqz v3, :cond_9

    .line 551
    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->sendEmptyMessage(I)Z

    .line 553
    :cond_9
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onResume()V

    goto/16 :goto_0

    .line 527
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 528
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto :goto_3

    .line 531
    :cond_b
    iput-object v7, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    .line 532
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v3

    invoke-virtual {v3, v5, v5}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 533
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/CameraSettings;->setAttachMMSMode(Z)V

    goto :goto_3
.end method

.method public onReviewChanged(I)V
    .locals 1
    .parameter "cameraReview"

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    .line 1075
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    .line 1076
    return-void
.end method

.method public onSaturationChanged(I)V
    .locals 1
    .parameter "saturation"

    .prologue
    .line 1092
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 1093
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1564
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    if-eqz v0, :cond_0

    .line 1566
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngineLastContentUri:Landroid/net/Uri;

    .line 1567
    const-string v0, "mCamcorderEngineLastContentUri"

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngineLastContentUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1569
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1570
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "s"

    .prologue
    .line 856
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getZoomBlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 857
    const/4 v1, 0x1

    .line 872
    :goto_0
    return v1

    .line 858
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int v0, v1, v2

    .line 860
    .local v0, newZoomValue:I
    if-gez v0, :cond_1

    .line 861
    const/4 v0, 0x0

    .line 863
    :cond_1
    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    .line 864
    const/16 v0, 0x1e

    .line 866
    :cond_2
    const-string v1, "Camcorder"

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

    .line 867
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 868
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 870
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->invalidate()V

    .line 872
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 876
    const-string v2, "Camcorder"

    const-string v3, "onScaleBegin"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderEngine;->getZoomBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 897
    :goto_0
    return v2

    .line 879
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 880
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mInitialZoomValueOnScaleBegin:I

    .line 882
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    if-nez v2, :cond_1

    .line 883
    new-instance v2, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 886
    .local v1, win:Landroid/view/Window;
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 889
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 890
    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 891
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v1, v2, v0}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 894
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #win:Landroid/view/Window;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setZoomValue(I)V

    .line 895
    iget-object v2, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleZoomRect:Lcom/sec/android/app/camera/widget/TwScaleZoomRect;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwScaleZoomRect;->setVisibility(I)V

    .line 897
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 901
    const-string v0, "Camcorder"

    const-string v1, "onScaleEnd"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getZoomBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 905
    :goto_0
    return-void

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mHideScaleZoomRect:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public onSharpnessChanged(I)V
    .locals 1
    .parameter "sharpness"

    .prologue
    .line 1096
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 1097
    return-void
.end method

.method public onStartingPreviewCompleted()V
    .locals 4

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030008

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;

    .line 1168
    .local v0, menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->unlockResolutionChanging()V

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->restoreInitialState()V

    .line 1171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ShutterButton;->setButtonUnlocked()V

    .line 1173
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonUnlocked()V

    .line 1176
    :cond_0
    return-void
.end method

.method public onStorageChanged(I)V
    .locals 1
    .parameter "storage"

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 1080
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1081
    return-void
.end method

.method public onTimerChanged(I)V
    .locals 4
    .parameter "timer"

    .prologue
    .line 994
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030009

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSideMenu;

    .line 995
    .local v0, sideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 996
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 997
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 998
    return-void
.end method

.method public onTimerEvent(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 1310
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003a

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerCounting;

    .line 1311
    .local v0, menu:Lcom/sec/android/app/camera/TimerCounting;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerCounting;->showMenu()V

    .line 1312
    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/TimerCounting;->updateCountingNum(I)V

    .line 1313
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 811
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 812
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 852
    :goto_0
    return v0

    .line 814
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsDestroying:Z

    if-ne v0, v2, :cond_1

    .line 815
    const-string v0, "Camcorder"

    const-string v1, "onTouchEvent - camera is destroying"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 816
    goto :goto_0

    .line 820
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mViewStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/MenuBase;->onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 821
    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 827
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-eqz v0, :cond_4

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 830
    goto :goto_0

    .line 832
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 835
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 837
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 838
    goto :goto_0

    .line 841
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v2

    .line 842
    goto :goto_0

    .line 845
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->isPreviewTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    .line 849
    goto :goto_0

    .line 852
    :cond_7
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 914
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 916
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->getRecordingState()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 922
    :goto_0
    return-void

    .line 920
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->restartInactivityTimer()V

    .line 921
    invoke-super {p0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onUserInteraction()V

    goto :goto_0
.end method

.method public onVideoRecordingStarted()V
    .locals 4

    .prologue
    .line 1316
    const-string v1, "Camcorder"

    const-string v2, "onVideoRecordingStarted"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003b

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderRecordingMenu;

    .line 1319
    .local v0, recordingMenu:Lcom/sec/android/app/camera/CamcorderRecordingMenu;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->updateProgressBarText(J)V

    .line 1320
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->showRecordingMenu(Z)V

    .line 1321
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->showMenu()V

    .line 1322
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderRecordingMenu;->startTimer()V

    .line 1324
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->hideWaitingAnimation()V

    .line 1325
    return-void
.end method

.method public onVideoStoringCompleted(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    .line 1413
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->acquireVideoThumb()V

    .line 1414
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateQuickViewButtonDimmed()V

    .line 1415
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mChkKeyFromApp:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 1423
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030041

    iget-object v3, p0, Lcom/sec/android/app/camera/Camcorder;->mBaseLayout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ZoomMenu;

    .line 1424
    .local v0, menu:Lcom/sec/android/app/camera/ZoomMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomMenu;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1425
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1429
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    if-eqz v1, :cond_2

    .line 1430
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mUpdateHandler:Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder$ThumbnailUpdate;->sendEmptyMessage(I)Z

    .line 1434
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1435
    return-void

    .line 1418
    .end local v0           #menu:Lcom/sec/android/app/camera/ZoomMenu;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1419
    const-string v1, "reviewon"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWhiteBalanceChanged(I)V
    .locals 2
    .parameter "whiteBalance"

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderWB(I)V

    .line 1028
    if-eqz p1, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 1032
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->processBack()V

    .line 1033
    return-void
.end method

.method public onZoomValueChanged(I)V
    .locals 1
    .parameter "zoomValue"

    .prologue
    .line 929
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 930
    return-void
.end method

.method public playCameraSound(II)V
    .locals 7
    .parameter "Sound"
    .parameter "loop"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x3

    .line 1207
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 1208
    invoke-static {v2, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    .line 1215
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mSoundPoolId:[I

    aget v1, v1, p1

    iget v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    iget v3, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    const/4 v4, 0x0

    const/high16 v6, 0x3f80

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 1232
    :cond_1
    return-void

    .line 1209
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1210
    const/16 v0, 0x9

    invoke-static {v0, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    goto :goto_0

    .line 1211
    :cond_3
    if-ne p1, v2, :cond_0

    .line 1212
    invoke-static {v1, v1}, Landroid/media/VolumeCustomizer;->getSituationVolume(II)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/Camcorder;->mStreamVolume:F

    goto :goto_0
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 985
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 986
    return-void
.end method

.method protected resetToDefaultSettings()V
    .locals 3

    .prologue
    .line 1364
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700aa

    new-instance v2, Lcom/sec/android/app/camera/Camcorder$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/Camcorder$4;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0700ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/Camcorder$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/Camcorder$3;-><init>(Lcom/sec/android/app/camera/Camcorder;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1406
    return-void
.end method

.method public resizeForPreviewAspectRatio()Z
    .locals 6

    .prologue
    const-string v5, "800x480"

    const-string v4, "400x240"

    .line 1115
    const v3, 0x7f0a00ab

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/Camcorder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/PreviewFrameLayout;

    .line 1119
    .local v1, previewLayout:Lcom/sec/android/app/camera/PreviewFrameLayout;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1157
    :pswitch_0
    const/16 v2, 0x280

    .line 1158
    .local v2, previewWidth:I
    const/16 v0, 0x1e0

    .line 1162
    .local v0, previewHeight:I
    :goto_0
    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/PreviewFrameLayout;->setSize(II)Z

    move-result v3

    return v3

    .line 1121
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_1
    const/16 v2, 0x320

    .line 1122
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1c0

    .line 1123
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1125
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_2
    const/16 v2, 0x320

    .line 1126
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1127
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1129
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_3
    const/16 v2, 0x2d0

    .line 1130
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1131
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1133
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_4
    const/16 v2, 0x280

    .line 1134
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1135
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1137
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_5
    const-string v3, "800x480"

    const-string v3, "400x240"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1138
    const/16 v2, 0x140

    .line 1139
    .restart local v2       #previewWidth:I
    const/16 v0, 0xf0

    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1142
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :cond_0
    const/16 v2, 0x280

    .line 1143
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1145
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1147
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :pswitch_6
    const-string v3, "800x480"

    const-string v3, "400x240"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1148
    const/16 v2, 0x128

    .line 1149
    .restart local v2       #previewWidth:I
    const/16 v0, 0xf0

    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1152
    .end local v0           #previewHeight:I
    .end local v2           #previewWidth:I
    :cond_1
    const/16 v2, 0x250

    .line 1153
    .restart local v2       #previewWidth:I
    const/16 v0, 0x1e0

    .line 1155
    .restart local v0       #previewHeight:I
    goto :goto_0

    .line 1119
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public restoreInitialState()V
    .locals 2

    .prologue
    .line 1711
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1722
    :cond_0
    :goto_0
    return-void

    .line 1713
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->isInflatedMenuSet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->isLeftSideMenuVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    const-string v0, "Camcorder"

    const-string v1, "restoreInitialState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    .line 1718
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideLeftMenu()V

    .line 1719
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->restoreMenu()V

    goto :goto_0
.end method

.method public showReviewButton()V
    .locals 1

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    if-eqz v0, :cond_0

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->restoreMenu()V

    .line 1643
    :cond_0
    return-void
.end method

.method public showShutterButton()V
    .locals 1

    .prologue
    .line 1627
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->restoreMenu()V

    .line 1630
    :cond_0
    return-void
.end method

.method public showTrayButton()V
    .locals 1

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    .line 1652
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->showTrayButton()V

    .line 1654
    :cond_0
    return-void
.end method

.method public updateQuickViewButtonDimmed()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1d

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderEngine;->getLastContentUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->isVideoCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1468
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1470
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0, v4, v4}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    .line 1471
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v0

    iput-boolean v2, v0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 1476
    :goto_0
    return-void

    .line 1473
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/sec/android/app/camera/MenuDimController;->refreshButtonDim(II)Z

    .line 1474
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mReviewButton:Lcom/sec/android/app/camera/ReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewButton;->getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v0

    iput-boolean v1, v0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    goto :goto_0
.end method

.method public updateRemainStorageIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1690
    const/4 v0, 0x0

    .line 1691
    .local v0, nRemainTime:I
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eq v1, v2, :cond_0

    .line 1692
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->checkStorageLow()V

    .line 1693
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-nez v1, :cond_0

    .line 1694
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderEngine;->getRemainTime()I

    move-result v0

    .line 1695
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1696
    iput v2, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    .line 1703
    :cond_0
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    if-eqz v1, :cond_1

    .line 1704
    const/4 v0, 0x0

    .line 1706
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderBaseIndicators:Lcom/sec/android/app/camera/CamcorderBaseIndicators;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/CamcorderBaseIndicators;->setRemainTime(I)V

    .line 1707
    return-void

    .line 1698
    :cond_2
    if-nez v0, :cond_0

    .line 1699
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Camcorder;->mStorageStatus:I

    goto :goto_0
.end method

.method public updateThumbnailButton()V
    .locals 2

    .prologue
    const-string v1, "Camcorder"

    .line 1816
    const-string v0, "Camcorder"

    const-string v0, "updateThumbnailButton 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Camcorder;->mIsVideoCaptureIntent:Z

    if-nez v0, :cond_3

    .line 1819
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1820
    const-string v0, "Camcorder"

    const-string v0, "updateThumbnailButton 2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1822
    const-string v0, "Camcorder"

    const-string v0, "IllegalStateException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1826
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mCamcorderEngine:Lcom/sec/android/app/camera/CamcorderEngine;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1827
    const v0, 0x7f0700d1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1828
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    .line 1830
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/Camcorder;->updateLastVideo()V

    .line 1832
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->updateDisplayIfNeeded()V

    .line 1834
    :cond_3
    return-void
.end method

.method public viewLastVideo()V
    .locals 2

    .prologue
    const-string v1, "Camcorder"

    .line 1874
    const-string v0, "Camcorder"

    const-string v0, "viewLastVideo 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isUriValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1876
    const-string v0, "reviewon"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 1884
    :cond_0
    :goto_0
    return-void

    .line 1878
    :cond_1
    const-string v0, "Camcorder"

    const-string v0, "Can\'t view last image."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    iget-object v0, p0, Lcom/sec/android/app/camera/Camcorder;->mThumbController:Lcom/sec/android/app/camera/ThumbnailController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ThumbnailController;->isIllegalStateException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1880
    const-string v0, "Camcorder"

    const-string v0, "IllegalStateException."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->finish()V

    goto :goto_0
.end method
