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
.field protected static final MMS_VIDEO_DURATION:I


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
    .line 465
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

    .line 500
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

    .line 284
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 285
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 286
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 288
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 317
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 370
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 377
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 378
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 380
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 381
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 384
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 385
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 386
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 387
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 388
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 389
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 390
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 391
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 392
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 394
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 395
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 397
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 399
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 400
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 401
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    .line 498
    new-instance v0, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;-><init>(Lcom/sec/android/app/camera/CameraSettings;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    .line 501
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .line 502
    return-void
.end method

.method public static getBeautyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1498
    const-string v0, "face_beauty"

    return-object v0
.end method

.method public static getEffectString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "none"

    .line 1586
    packed-switch p0, :pswitch_data_0

    .line 1596
    const-string v0, "none"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1588
    :pswitch_0
    const-string v0, "none"

    move-object v0, v1

    goto :goto_0

    .line 1590
    :pswitch_1
    const-string v0, "negative"

    goto :goto_0

    .line 1592
    :pswitch_2
    const-string v0, "mono"

    goto :goto_0

    .line 1594
    :pswitch_3
    const-string v0, "sepia"

    goto :goto_0

    .line 1586
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

    .line 1649
    packed-switch p0, :pswitch_data_0

    .line 1657
    const-string v0, "center"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1651
    :pswitch_0
    const-string v0, "center"

    move-object v0, v1

    goto :goto_0

    .line 1653
    :pswitch_1
    const-string v0, "spot"

    goto :goto_0

    .line 1655
    :pswitch_2
    const-string v0, "matrix"

    goto :goto_0

    .line 1649
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

    .line 1557
    packed-switch p0, :pswitch_data_0

    .line 1565
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1559
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1561
    :pswitch_1
    const-string v0, "on"

    goto :goto_0

    .line 1563
    :pswitch_2
    const-string v0, "off"

    goto :goto_0

    .line 1557
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

    .line 1571
    packed-switch p0, :pswitch_data_0

    .line 1581
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1573
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1575
    :pswitch_1
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1577
    :pswitch_2
    const-string v0, "macro"

    goto :goto_0

    .line 1579
    :pswitch_3
    const-string v0, "facedetect"

    goto :goto_0

    .line 1571
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
    .line 608
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 610
    :goto_0
    return v1

    .line 609
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/ClassCastException;
    move v1, p2

    .line 610
    goto :goto_0
.end method

.method public static getIsoString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1618
    packed-switch p0, :pswitch_data_0

    .line 1644
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1620
    :pswitch_1
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1622
    :pswitch_2
    const-string v0, "50"

    goto :goto_0

    .line 1624
    :pswitch_3
    const-string v0, "100"

    goto :goto_0

    .line 1626
    :pswitch_4
    const-string v0, "200"

    goto :goto_0

    .line 1628
    :pswitch_5
    const-string v0, "400"

    goto :goto_0

    .line 1630
    :pswitch_6
    const-string v0, "800"

    goto :goto_0

    .line 1632
    :pswitch_7
    const-string v0, "1600"

    goto :goto_0

    .line 1634
    :pswitch_8
    const-string v0, "3200"

    goto :goto_0

    .line 1636
    :pswitch_9
    const-string v0, "fireworks"

    goto :goto_0

    .line 1638
    :pswitch_a
    const-string v0, "sports"

    goto :goto_0

    .line 1640
    :pswitch_b
    const-string v0, "night"

    goto :goto_0

    .line 1642
    :pswitch_c
    const-string v0, "movie"

    goto :goto_0

    .line 1618
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

    .line 1423
    sparse-switch p0, :sswitch_data_0

    .line 1493
    const-string v0, "unknown"

    :goto_0
    return-object v0

    .line 1425
    :sswitch_0
    const-string v0, "scene-mode"

    goto :goto_0

    .line 1427
    :sswitch_1
    const-string v0, "flash-mode"

    move-object v0, v5

    goto :goto_0

    .line 1429
    :sswitch_2
    const-string v0, "picture-size"

    goto :goto_0

    .line 1431
    :sswitch_3
    const-string v0, "focus-mode"

    goto :goto_0

    .line 1433
    :sswitch_4
    const-string v0, "exposure-compensation"

    move-object v0, v4

    goto :goto_0

    .line 1435
    :sswitch_5
    const-string v0, "effect"

    move-object v0, v3

    goto :goto_0

    .line 1437
    :sswitch_6
    const-string v0, "whitebalance"

    goto :goto_0

    .line 1439
    :sswitch_7
    const-string v0, "iso"

    goto :goto_0

    .line 1441
    :sswitch_8
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 1443
    :sswitch_9
    const-string v0, "zoom"

    goto :goto_0

    .line 1445
    :sswitch_a
    const-string v0, "metering"

    goto :goto_0

    .line 1447
    :sswitch_b
    const-string v0, "anti-shake"

    goto :goto_0

    .line 1449
    :sswitch_c
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1451
    :sswitch_d
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1453
    :sswitch_e
    const-string v0, "obj-tracking"

    goto :goto_0

    .line 1455
    :sswitch_f
    const-string v0, "contrast"

    move-object v0, v2

    goto :goto_0

    .line 1457
    :sswitch_10
    const-string v0, "saturation"

    goto :goto_0

    .line 1459
    :sswitch_11
    const-string v0, "sharpness"

    goto :goto_0

    .line 1461
    :sswitch_12
    const-string v0, "flash-mode"

    move-object v0, v5

    goto :goto_0

    .line 1463
    :sswitch_13
    const-string v0, "picture-size"

    goto :goto_0

    .line 1465
    :sswitch_14
    const-string v0, "exposure-compensation"

    move-object v0, v4

    goto :goto_0

    .line 1467
    :sswitch_15
    const-string v0, "effect"

    move-object v0, v3

    goto :goto_0

    .line 1469
    :sswitch_16
    const-string v0, "whitebalance"

    goto :goto_0

    .line 1471
    :sswitch_17
    const-string v0, "wdr"

    move-object v0, v1

    goto :goto_0

    .line 1473
    :sswitch_18
    const-string v0, "jpeg-quality"

    goto :goto_0

    .line 1475
    :sswitch_19
    const-string v0, "zoom"

    goto :goto_0

    .line 1477
    :sswitch_1a
    const-string v0, "contrast"

    move-object v0, v2

    goto :goto_0

    .line 1479
    :sswitch_1b
    const-string v0, "saturation"

    goto :goto_0

    .line 1481
    :sswitch_1c
    const-string v0, "sharpness"

    goto :goto_0

    .line 1423
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
    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public static getQualityString(I)I
    .locals 1
    .parameter "value"

    .prologue
    const/16 v0, 0x64

    .line 1662
    packed-switch p0, :pswitch_data_0

    .line 1670
    :goto_0
    :pswitch_0
    return v0

    .line 1666
    :pswitch_1
    const/16 v0, 0x46

    goto :goto_0

    .line 1668
    :pswitch_2
    const/16 v0, 0x28

    goto :goto_0

    .line 1662
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

    .line 1522
    packed-switch p0, :pswitch_data_0

    .line 1552
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1524
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1526
    :pswitch_1
    const-string v0, "portrait"

    goto :goto_0

    .line 1528
    :pswitch_2
    const-string v0, "landscape"

    goto :goto_0

    .line 1530
    :pswitch_3
    const-string v0, "sports"

    goto :goto_0

    .line 1532
    :pswitch_4
    const-string v0, "sunset"

    goto :goto_0

    .line 1534
    :pswitch_5
    const-string v0, "dusk-dawn"

    goto :goto_0

    .line 1536
    :pswitch_6
    const-string v0, "fireworks"

    goto :goto_0

    .line 1538
    :pswitch_7
    const-string v0, "beach"

    goto :goto_0

    .line 1540
    :pswitch_8
    const-string v0, "party"

    goto :goto_0

    .line 1542
    :pswitch_9
    const-string v0, "night"

    goto :goto_0

    .line 1544
    :pswitch_a
    const-string v0, "fall-color"

    goto :goto_0

    .line 1546
    :pswitch_b
    const-string v0, "text"

    goto :goto_0

    .line 1548
    :pswitch_c
    const-string v0, "candlelight"

    goto :goto_0

    .line 1550
    :pswitch_d
    const-string v0, "back-light"

    goto :goto_0

    .line 1522
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

    .line 1506
    packed-switch p0, :pswitch_data_0

    .line 1518
    const-string v0, "normal"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1508
    :pswitch_0
    const-string v0, "normal"

    move-object v0, v1

    goto :goto_0

    .line 1510
    :pswitch_1
    const-string v0, "warm"

    goto :goto_0

    .line 1512
    :pswitch_2
    const-string v0, "cool"

    goto :goto_0

    .line 1514
    :pswitch_3
    const-string v0, "bnw"

    goto :goto_0

    .line 1516
    :pswitch_4
    const-string v0, "off"

    goto :goto_0

    .line 1506
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
    .line 1502
    const-string v0, "vintagemode"

    return-object v0
.end method

.method public static getWhitebalanceString(I)Ljava/lang/String;
    .locals 2
    .parameter "value"

    .prologue
    const-string v1, "auto"

    .line 1601
    packed-switch p0, :pswitch_data_0

    .line 1613
    const-string v0, "auto"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 1603
    :pswitch_0
    const-string v0, "auto"

    move-object v0, v1

    goto :goto_0

    .line 1605
    :pswitch_1
    const-string v0, "daylight"

    goto :goto_0

    .line 1607
    :pswitch_2
    const-string v0, "cloudy-daylight"

    goto :goto_0

    .line 1609
    :pswitch_3
    const-string v0, "incandescent"

    goto :goto_0

    .line 1611
    :pswitch_4
    const-string v0, "fluorescent"

    goto :goto_0

    .line 1601
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
    .line 1784
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1785
    return-void
.end method

.method public getAntishake()I
    .locals 3

    .prologue
    .line 874
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
    .line 1357
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    return v0
.end method

.method public getAttachMode()Z
    .locals 1

    .prologue
    .line 1349
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    return v0
.end method

.method public getBlinkdetection()I
    .locals 3

    .prologue
    .line 925
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
    .line 1280
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    return v0
.end method

.method public getCamcorderAutocontrast()I
    .locals 3

    .prologue
    .line 908
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
    .line 1244
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    return v0
.end method

.method public getCamcorderEffect()I
    .locals 1

    .prologue
    .line 1202
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    return v0
.end method

.method public getCamcorderExposureValue()I
    .locals 1

    .prologue
    .line 729
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    return v0
.end method

.method public getCamcorderFlashMode()I
    .locals 3

    .prologue
    .line 1113
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
    .line 1382
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    return v0
.end method

.method public getCamcorderQuality()I
    .locals 3

    .prologue
    .line 1167
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
    .line 1142
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
    .line 1293
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
    .line 1256
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    return v0
.end method

.method public getCamcorderSharpness()I
    .locals 1

    .prologue
    .line 1268
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    return v0
.end method

.method public getCamcorderTimer()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    return v0
.end method

.method public getCamcorderWB()I
    .locals 1

    .prologue
    .line 1184
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    return v0
.end method

.method public getCamcorderZoomValue()I
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    return v0
.end method

.method public getCameraAutocontrast()I
    .locals 3

    .prologue
    .line 891
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
    .line 1028
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    return v0
.end method

.method public getCameraEffect()I
    .locals 1

    .prologue
    .line 811
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    return v0
.end method

.method public getCameraExposureValue()I
    .locals 1

    .prologue
    .line 717
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    return v0
.end method

.method public getCameraFlashMode()I
    .locals 3

    .prologue
    .line 675
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
    .line 1365
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    return v0
.end method

.method public getCameraQuality()I
    .locals 3

    .prologue
    .line 942
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
    .line 770
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
    .line 1040
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    return v0
.end method

.method public getCameraSharpness()I
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    return v0
.end method

.method public getCameraTimer()I
    .locals 1

    .prologue
    .line 758
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    return v0
.end method

.method public getCameraWB()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    return v0
.end method

.method public getCameraZoomValue()I
    .locals 1

    .prologue
    .line 1065
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    return v0
.end method

.method public getDefaultCamcorderResolution()I
    .locals 1

    .prologue
    .line 1146
    const-string v0, "720x480"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDefaultCameraResolution()I
    .locals 1

    .prologue
    .line 774
    const-string v0, "2560x1920"

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionID(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getExposuremeter()I
    .locals 3

    .prologue
    .line 840
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
    .line 1788
    const/4 v0, 0x0

    .line 1790
    .local v0, nExposuremeter:I
    packed-switch p1, :pswitch_data_0

    .line 1812
    :goto_0
    :pswitch_0
    return v0

    .line 1804
    :pswitch_1
    const/4 v0, 0x2

    .line 1805
    goto :goto_0

    .line 1807
    :pswitch_2
    const/4 v0, 0x1

    .line 1808
    goto :goto_0

    .line 1790
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
    .line 741
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
    .line 1310
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrame:I

    return v0
.end method

.method public getGuideline()I
    .locals 3

    .prologue
    .line 959
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
    .line 823
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
    .line 706
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

    .line 707
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    return v0
.end method

.method public getLock()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1338
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
    .line 567
    const-string v1, "pref_camera_video_duration_key"

    const/16 v2, 0x3c

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v0

    .line 569
    .local v0, microsec:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 573
    sget v1, Lcom/sec/android/app/camera/CameraSettings;->MMS_VIDEO_DURATION:I

    mul-int/lit16 v1, v1, 0x3e8

    .line 576
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
    .line 615
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    return v0
.end method

.method public getNumberOfCsShotCaptured()I
    .locals 1

    .prologue
    .line 1764
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    return v0
.end method

.method public getNumberOfCsShotSaved()I
    .locals 1

    .prologue
    .line 1772
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    return v0
.end method

.method public getObjecttracking()I
    .locals 3

    .prologue
    .line 857
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
    .line 700
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

    .line 701
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    return v0
.end method

.method public getRecordingMode()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    return v0
.end method

.method public getReview()I
    .locals 3

    .prologue
    .line 976
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
    .line 662
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    return v0
.end method

.method public getSelfMode()I
    .locals 1

    .prologue
    .line 627
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    return v0
.end method

.method public getShootingMode()I
    .locals 1

    .prologue
    .line 644
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    return v0
.end method

.method public getShootingVintageMode()I
    .locals 1

    .prologue
    .line 1326
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    return v0
.end method

.method public getShutterSound()I
    .locals 3

    .prologue
    .line 1011
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
    .line 1220
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
    .line 1415
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1417
    .end local p0
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;

    invoke-interface {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;->onCameraSettingsChanged(II)V

    goto :goto_0

    .line 1420
    :cond_0
    return-void
.end method

.method public initializeCamcorder()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 539
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 540
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 541
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 542
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 543
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 544
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 545
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 546
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 547
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 548
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 549
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 550
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 551
    const/16 v0, 0x3c

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 552
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 554
    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 557
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 559
    return-void
.end method

.method public initializeCamera()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 505
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 506
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 507
    const/4 v1, 0x4

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 508
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 509
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 510
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 511
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 512
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 513
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 514
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 515
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 516
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 517
    iput v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 519
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iput v4, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 523
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 524
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v2, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 525
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 527
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    .line 531
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setStorage(I)V

    .line 534
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    .line 536
    return-void
.end method

.method public isMainCameraSelected()Z
    .locals 1

    .prologue
    .line 1780
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    return v0
.end method

.method protected notifyCameraSettingsChanged(II)V
    .locals 3
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNotificationHandler:Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings$NotificationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1404
    return-void
.end method

.method protected notifyCameraSettingsChanged(IIZ)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"
    .parameter "syncmode"

    .prologue
    .line 1407
    if-eqz p3, :cond_0

    .line 1408
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->handleNotification(II)V

    .line 1412
    :goto_0
    return-void

    .line 1410
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 564
    return-void
.end method

.method public registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V
    .locals 1
    .parameter "o"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mObservers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1400
    return-void
.end method

.method public resetCamcorderSettingsToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 1730
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getAttachMMSMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 1733
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setRecordingMode(I)V

    .line 1734
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderFlashMode(I)V

    .line 1735
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderExposureValue(I)V

    .line 1737
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderTimer(I)V

    .line 1738
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderWB(I)V

    .line 1739
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderEffect(I)V

    .line 1740
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAutocontrast(I)V

    .line 1741
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderQuality(I)V

    .line 1743
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderContrast(I)V

    .line 1744
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSaturation(I)V

    .line 1745
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderSharpness(I)V

    .line 1746
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 1748
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderOutdoorVisibility(I)V

    .line 1750
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1751
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderZoomValue(I)V

    .line 1752
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderReview(I)V

    .line 1756
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 1757
    return-void
.end method

.method public resetCameraSettingsToDefault()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v3, 0x0

    const-string v6, "pref_camera_resolution_key"

    .line 1682
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 1683
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1684
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1685
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 1686
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1687
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1688
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1690
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->setResolutionAndShootingModeToDefault()V

    .line 1691
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1692
    invoke-virtual {p0, v5, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1695
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setSceneMode(I)V

    .line 1696
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraFlashMode(I)V

    .line 1697
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraExposureValue(I)V

    .line 1698
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setFocusMode(I)V

    .line 1699
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraTimer(I)V

    .line 1701
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraWB(I)V

    .line 1702
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraEffect(I)V

    .line 1703
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setISO(I)V

    .line 1704
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setExposuremeter(I)V

    .line 1705
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setObjecttracking(I)V

    .line 1706
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setAntishake(I)V

    .line 1707
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraAutocontrast(I)V

    .line 1708
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setBlinkdetection(I)V

    .line 1709
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraQuality(I)V

    .line 1711
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraContrast(I)V

    .line 1712
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSaturation(I)V

    .line 1713
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCameraSharpness(I)V

    .line 1715
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraOutdoorVisibility(I)V

    .line 1717
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setGuideline(I)V

    .line 1718
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setReview(I)V

    .line 1722
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSettings;->setShutterSound(I)V

    .line 1723
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CameraSettings;->setCameraZoomValue(I)V

    .line 1726
    return-void
.end method

.method public resetMaxVideoDuration(I)V
    .locals 1
    .parameter "recordingMode"

    .prologue
    .line 1105
    if-nez p1, :cond_1

    .line 1106
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    .line 1110
    :cond_0
    :goto_0
    return-void

    .line 1107
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1108
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setMaxVideoDurationInMs(I)V

    goto :goto_0
.end method

.method public setAntishake(I)V
    .locals 5
    .parameter "antishake"

    .prologue
    const-string v4, "pref_camera_antishake_key"

    .line 878
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_antishake_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    .line 879
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    if-eq v1, p1, :cond_0

    .line 880
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

    .line 881
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    .line 882
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 883
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_antishake_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAntishake:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 886
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 888
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setAttachMMSMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1361
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMMSMode:Z

    .line 1362
    return-void
.end method

.method public setAttachMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1353
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAttachMode:Z

    .line 1354
    return-void
.end method

.method public setBlinkdetection(I)V
    .locals 5
    .parameter "blinkdetection"

    .prologue
    const-string v4, "pref_camera_blinkdetection_key"

    .line 929
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_blinkdetection_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    .line 930
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    if-eq v1, p1, :cond_0

    .line 931
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

    .line 932
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    .line 933
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 934
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_blinkdetection_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mBlinkdetection:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 935
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 937
    const/16 v1, 0xf

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 939
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderAudioRecording(Z)V
    .locals 3
    .parameter "audioRecording"

    .prologue
    .line 1284
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    if-eq v0, p1, :cond_0

    .line 1285
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

    .line 1286
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAudioRecording:Z

    .line 1288
    const/16 v0, 0x76

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1290
    :cond_0
    return-void

    .line 1288
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCamcorderAutocontrast(I)V
    .locals 5
    .parameter "autocontrast"

    .prologue
    const-string v4, "pref_camera_autocontrast_key"

    .line 912
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 913
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    if-eq v1, p1, :cond_0

    .line 914
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

    .line 915
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    .line 916
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 917
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_autocontrast_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderAutocontrast:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 918
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 920
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 922
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 1248
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    if-eq v0, p1, :cond_0

    .line 1249
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

    .line 1250
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderContrast:I

    .line 1251
    const/16 v0, 0x72

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1253
    :cond_0
    return-void
.end method

.method public setCamcorderEffect(I)V
    .locals 4
    .parameter "effect"

    .prologue
    const/4 v3, 0x0

    .line 1206
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eq v0, p1, :cond_0

    .line 1207
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

    .line 1208
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1209
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1212
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    if-eqz v0, :cond_0

    .line 1213
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 1214
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1217
    :cond_0
    return-void
.end method

.method public setCamcorderExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 733
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    if-eq v0, p1, :cond_0

    .line 734
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

    .line 735
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderExposureValue:I

    .line 736
    const/16 v0, 0x6d

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 738
    :cond_0
    return-void
.end method

.method public setCamcorderFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const-string v4, "pref_camcorder_flash_key"

    .line 1117
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_flash_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1118
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    if-eq v1, p1, :cond_0

    .line 1119
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

    .line 1120
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    .line 1121
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1122
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderFlashMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1123
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1125
    const/16 v1, 0x67

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1127
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 1386
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 1387
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

    .line 1388
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderOutdoorVisibility:I

    .line 1389
    const/16 v0, 0x78

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1391
    if-nez p1, :cond_1

    .line 1392
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1396
    :cond_0
    :goto_0
    return-void

    .line 1394
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

    .line 1171
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_videoquality_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1172
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    if-eq v1, p1, :cond_0

    .line 1173
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

    .line 1174
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    .line 1175
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1176
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_videoquality_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderQuality:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1179
    const/16 v1, 0x6f

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1181
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

    .line 1151
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camcorder_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v2

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1152
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    if-eq v1, p1, :cond_0

    .line 1153
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

    .line 1154
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    .line 1155
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1156
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camcorder_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderResolution:I

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1157
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1159
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 1160
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    move v1, v4

    .line 1163
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

    .line 1297
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_camcorder_review_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1298
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    if-eq v1, p1, :cond_0

    .line 1299
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

    .line 1300
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    .line 1301
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1302
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_camcorder_review_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderReview:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1303
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1305
    const/16 v1, 0x77

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1307
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCamcorderSaturation(I)V
    .locals 3
    .parameter "saturation"

    .prologue
    .line 1260
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    if-eq v0, p1, :cond_0

    .line 1261
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

    .line 1262
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSaturation:I

    .line 1263
    const/16 v0, 0x73

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1265
    :cond_0
    return-void
.end method

.method public setCamcorderSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1272
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    if-eq v0, p1, :cond_0

    .line 1273
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

    .line 1274
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderSharpness:I

    .line 1275
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1277
    :cond_0
    return-void
.end method

.method public setCamcorderTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 1134
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    if-eq v0, p1, :cond_0

    .line 1135
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

    .line 1136
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderTimer:I

    .line 1137
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1139
    :cond_0
    return-void
.end method

.method public setCamcorderWB(I)V
    .locals 4
    .parameter "whitebalance"

    .prologue
    const/4 v3, 0x0

    .line 1188
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    if-eq v0, p1, :cond_0

    .line 1189
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

    .line 1190
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderWB:I

    .line 1191
    const/16 v0, 0x6b

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1194
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    if-eqz v0, :cond_0

    .line 1195
    iput v3, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderEffect:I

    .line 1196
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1199
    :cond_0
    return-void
.end method

.method public setCamcorderZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 1081
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1082
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

    .line 1083
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mCamcorderZoomValue:I

    .line 1084
    const/16 v0, 0x70

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1086
    :cond_0
    return-void
.end method

.method public setCameraAutocontrast(I)V
    .locals 5
    .parameter "autocontrast"

    .prologue
    const-string v4, "pref_camera_autocontrast_key"

    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_autocontrast_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    .line 896
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    if-eq v1, p1, :cond_0

    .line 897
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

    .line 898
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    .line 899
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 900
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_autocontrast_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mAutocontrast:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 903
    const/16 v1, 0xe

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 905
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraContrast(I)V
    .locals 3
    .parameter "contrast"

    .prologue
    .line 1032
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    if-eq v0, p1, :cond_0

    .line 1033
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

    .line 1034
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mContrast:I

    .line 1035
    const/16 v0, 0x18

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1037
    :cond_0
    return-void
.end method

.method public setCameraEffect(I)V
    .locals 3
    .parameter "effect"

    .prologue
    .line 815
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    if-eq v0, p1, :cond_0

    .line 816
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

    .line 817
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mEffect:I

    .line 818
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(IIZ)V

    .line 820
    :cond_0
    return-void
.end method

.method public setCameraExposureValue(I)V
    .locals 3
    .parameter "exposurevalue"

    .prologue
    .line 721
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    if-eq v0, p1, :cond_0

    .line 722
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

    .line 723
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposureValue:I

    .line 724
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 726
    :cond_0
    return-void
.end method

.method public setCameraFlashMode(I)V
    .locals 5
    .parameter "flashMode"

    .prologue
    const-string v4, "pref_camera_flash_key"

    .line 679
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_flash_key"

    const/4 v2, 0x2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 680
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    if-eq v1, p1, :cond_0

    .line 681
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

    .line 682
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    .line 683
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 684
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_flash_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFlashMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 687
    const/4 v1, 0x3

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 689
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraOutdoorVisibility(I)V
    .locals 3
    .parameter "visibility"

    .prologue
    .line 1369
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    if-eq v0, p1, :cond_0

    .line 1370
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

    .line 1371
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mOutdoorVisibility:I

    .line 1372
    const/16 v0, 0x23

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1374
    if-nez p1, :cond_1

    .line 1375
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 1379
    :cond_0
    :goto_0
    return-void

    .line 1377
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

    .line 946
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_quality_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 947
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    if-eq v1, p1, :cond_0

    .line 948
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

    .line 949
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    .line 950
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 951
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_quality_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mQuality:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 952
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 954
    const/16 v1, 0x10

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 956
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setCameraResolution(I)Z
    .locals 1
    .parameter "resolution"

    .prologue
    .line 795
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

    .line 779
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_resolution_key"

    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCameraResolution()I

    move-result v2

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 780
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    if-eq v1, p1, :cond_0

    .line 781
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

    .line 782
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    .line 783
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 784
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_resolution_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mResolution:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 785
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 787
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, p1, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->handleResolutionChanged(IZ)V

    .line 788
    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 789
    const/4 v1, 0x1

    .line 791
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
    .line 1044
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    if-eq v0, p1, :cond_0

    .line 1045
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

    .line 1046
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSaturation:I

    .line 1047
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1049
    :cond_0
    return-void
.end method

.method public setCameraSharpness(I)V
    .locals 3
    .parameter "sharpness"

    .prologue
    .line 1056
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    if-eq v0, p1, :cond_0

    .line 1057
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

    .line 1058
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSharpness:I

    .line 1059
    const/16 v0, 0x1a

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1061
    :cond_0
    return-void
.end method

.method public setCameraTimer(I)V
    .locals 3
    .parameter "timer"

    .prologue
    .line 762
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    if-eq v0, p1, :cond_0

    .line 763
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

    .line 764
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mTimer:I

    .line 765
    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 767
    :cond_0
    return-void
.end method

.method public setCameraWB(I)V
    .locals 3
    .parameter "whitebalance"

    .prologue
    .line 803
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    if-eq v0, p1, :cond_0

    .line 804
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

    .line 805
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mWB:I

    .line 806
    const/16 v0, 0x9

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 808
    :cond_0
    return-void
.end method

.method public setCameraZoomValue(I)V
    .locals 3
    .parameter "zoomvalue"

    .prologue
    .line 1069
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    if-eq v0, p1, :cond_0

    .line 1070
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

    .line 1071
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mZoomValue:I

    .line 1072
    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1074
    :cond_0
    return-void
.end method

.method public setExposuremeter(I)V
    .locals 5
    .parameter "exposuremeter"

    .prologue
    const-string v4, "pref_camera_exposuremeter_key"

    .line 844
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_exposuremeter_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 845
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    if-eq v1, p1, :cond_0

    .line 846
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

    .line 847
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    .line 848
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 849
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_exposuremeter_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mExposuremeter:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 850
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 852
    const/16 v1, 0xb

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 854
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFocusMode(I)V
    .locals 5
    .parameter "focusMode"

    .prologue
    const-string v4, "pref_camera_focus_key"

    .line 745
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_focus_key"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 746
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    if-eq v1, p1, :cond_0

    .line 747
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

    .line 748
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    .line 749
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 750
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_focus_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFocusMode:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 751
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 753
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 755
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setFrame(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 1314
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mFrame:I

    .line 1315
    return-void
.end method

.method public setGps(I)V
    .locals 1
    .parameter "gps"

    .prologue
    .line 1007
    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1008
    return-void
.end method

.method public setGuideline(I)V
    .locals 5
    .parameter "guideline"

    .prologue
    const-string v4, "pref_setup_guideline_key"

    .line 963
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_guideline_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    .line 964
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    if-eq v1, p1, :cond_0

    .line 965
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

    .line 966
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    .line 967
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 968
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_guideline_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mGuideline:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 969
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 971
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 973
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setISO(I)V
    .locals 5
    .parameter "iso"

    .prologue
    const-string v4, "pref_camera_iso_key"

    .line 827
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_iso_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 828
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    if-eq v1, p1, :cond_0

    .line 829
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

    .line 830
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    .line 831
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 832
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_iso_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mISO:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 833
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 835
    const/16 v1, 0xa

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 837
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setIsSelectedBacklight(Z)V
    .locals 3
    .parameter "onOff"

    .prologue
    .line 712
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

    .line 713
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mIsSelectedBacklight:Z

    .line 714
    return-void
.end method

.method public setLock(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1342
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    if-eq v0, v1, :cond_0

    .line 1343
    if-eqz p1, :cond_2

    move v0, v2

    :goto_1
    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    .line 1344
    const/16 v0, 0x22

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mLock:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1346
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 1342
    goto :goto_0

    :cond_2
    move v0, v3

    .line 1343
    goto :goto_1
.end method

.method public setMainCameraSelected(Z)V
    .locals 0
    .parameter "mMainCameraSelected"

    .prologue
    .line 1776
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMainCameraSelected:Z

    .line 1777
    return-void
.end method

.method public setMaxVideoDurationInMs(I)V
    .locals 5
    .parameter "videoDuration"

    .prologue
    const-string v4, "pref_camera_video_duration_key"

    .line 581
    const-string v1, "pref_camera_video_duration_key"

    const/16 v1, 0x3c

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/camera/CameraSettings;->getIntPreference(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 582
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    if-eq v1, p1, :cond_0

    .line 583
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

    .line 584
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mVideoDuration:I

    .line 585
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 586
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_video_duration_key"

    invoke-interface {v0, v4, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 587
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 589
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 619
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    if-eq v0, p1, :cond_0

    .line 620
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

    .line 621
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMode:I

    .line 622
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 624
    :cond_0
    return-void
.end method

.method public setMosaicFrame(I)V
    .locals 0
    .parameter "frame"

    .prologue
    .line 1322
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mMosaic:I

    .line 1323
    return-void
.end method

.method public setNumberOfCsShotCaptured(I)V
    .locals 0
    .parameter "mNumberOfCsShotCaptured"

    .prologue
    .line 1760
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotCaptured:I

    .line 1761
    return-void
.end method

.method public setNumberOfCsShotSaved(I)V
    .locals 0
    .parameter "mNumberOfCsShotSaved"

    .prologue
    .line 1768
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mNumberOfCsShotSaved:I

    .line 1769
    return-void
.end method

.method public setObjecttracking(I)V
    .locals 5
    .parameter "objecttracking"

    .prologue
    const-string v4, "pref_camera_objecttracking_key"

    .line 861
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_camera_objecttracking_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    .line 862
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    if-eq v1, p1, :cond_0

    .line 863
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

    .line 864
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    .line 865
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 866
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_camera_objecttracking_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mObjecttracking:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 867
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 869
    const/16 v1, 0xc

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 871
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setPreviousFlashMode(I)V
    .locals 3
    .parameter "flashMode"

    .prologue
    .line 694
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

    .line 695
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousFlashMode:I

    .line 696
    return-void
.end method

.method public setRecordingMode(I)V
    .locals 3
    .parameter "recordingMode"

    .prologue
    .line 1094
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    if-eq v0, p1, :cond_0

    .line 1095
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

    .line 1096
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    .line 1098
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mRecordingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->resetMaxVideoDuration(I)V

    .line 1100
    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1102
    :cond_0
    return-void
.end method

.method public setReview(I)V
    .locals 5
    .parameter "review"

    .prologue
    const-string v4, "pref_setup_review_key"

    .line 980
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_review_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 981
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    if-eq v1, p1, :cond_0

    .line 982
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

    .line 983
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    .line 984
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 985
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_review_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mReview:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 986
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 988
    const/16 v1, 0x11

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 990
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setSceneMode(I)V
    .locals 3
    .parameter "sceneMode"

    .prologue
    .line 666
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    if-eq v0, p1, :cond_0

    .line 667
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

    .line 668
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mPreviousSceneMode:I

    .line 669
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSceneMode:I

    .line 670
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 672
    :cond_0
    return-void
.end method

.method public setSelfMode(I)V
    .locals 3
    .parameter "selfMode"

    .prologue
    .line 631
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    if-eq v0, p1, :cond_0

    .line 632
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

    .line 633
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    .line 634
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mSelfMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 635
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    iput v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    .line 636
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    .line 641
    :cond_0
    :goto_0
    return-void

    .line 638
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mTempShootingMode:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(I)V

    goto :goto_0
.end method

.method public setShootingMode(I)V
    .locals 1
    .parameter "shootingMode"

    .prologue
    .line 648
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/CameraSettings;->setShootingMode(IZ)V

    .line 649
    return-void
.end method

.method public setShootingMode(IZ)V
    .locals 3
    .parameter "shootingMode"
    .parameter "exiting"

    .prologue
    .line 652
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    if-eq v0, p1, :cond_0

    .line 653
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

    .line 654
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingMode:I

    .line 655
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 656
    if-nez p2, :cond_0

    .line 657
    iget-object p0, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/Camera;->handleShootingModeChanged(I)V

    .line 659
    :cond_0
    return-void
.end method

.method public setShootingVintageMode(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 1330
    iget v0, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    if-eq v0, p1, :cond_0

    .line 1331
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

    .line 1332
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShootingVintageMode:I

    .line 1333
    const/16 v0, 0x1f

    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1335
    :cond_0
    return-void
.end method

.method public setShutterSound(I)V
    .locals 5
    .parameter "shuttersound"

    .prologue
    const-string v4, "pref_setup_shuttersound_key"

    .line 1015
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_shuttersound_key"

    const/4 v2, 0x1

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1016
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    if-eq v1, p1, :cond_0

    .line 1017
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

    .line 1018
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    .line 1019
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1020
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_shuttersound_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mShutterSound:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1021
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1023
    const/16 v1, 0x15

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1025
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method public setStorage(I)V
    .locals 5
    .parameter "storage"

    .prologue
    const-string v4, "pref_setup_storage_key"

    .line 1224
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "pref_setup_storage_key"

    const/4 v2, 0x0

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1225
    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    if-eq v1, p1, :cond_0

    .line 1226
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

    .line 1227
    iput p1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    .line 1228
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettings;->getPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1229
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "pref_setup_storage_key"

    iget v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mStorage:I

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1230
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1232
    const/16 v1, 0x16

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/camera/CameraSettings;->notifyCameraSettingsChanged(II)V

    .line 1233
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->setDefaultStorageStatus()V

    .line 1234
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettings;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 1241
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
