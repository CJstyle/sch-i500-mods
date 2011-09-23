.class public Lcom/sec/android/app/camera/CameraBaseIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraBaseIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

.field private mHideLaunchIconHandler:Landroid/os/Handler;

.field private mHideLaunchIconRunnable:Ljava/lang/Runnable;

.field private mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

.field private mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

.field private mIndicatorLock:Landroid/widget/ImageView;

.field private mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

.field private mIndicatorsRemainCount:Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

.field private mLaunchIcon:Landroid/widget/RelativeLayout;

.field private mRemainCount:I

.field private mTextMessage:Landroid/widget/TextView;

.field private mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 8
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v7, 0x0

    .line 76
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 52
    iput v7, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    .line 58
    new-instance v0, Lcom/sec/android/app/camera/CameraBaseIndicators$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraBaseIndicators$1;-><init>(Lcom/sec/android/app/camera/CameraBaseIndicators;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    .line 78
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTouchHandled(Z)V

    .line 79
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->init()V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraBaseIndicators;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraBaseIndicators;)Lcom/sec/android/app/camera/widget/TwIndicatorFocus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0049

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 89
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0048

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorsRemainCount:Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0027

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->setSurfaceView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a002c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mLaunchIcon:Landroid/widget/RelativeLayout;

    .line 105
    return-void
.end method


# virtual methods
.method public getRemainCount()I
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    return v0
.end method

.method public getTouchRectHeight()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v0

    return v0
.end method

.method public getTouchRectWidth()I
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v0

    return v0
.end method

.method public hideFocusIndicator()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    .line 207
    return-void
.end method

.method public hideLaunchIcon()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 260
    return-void
.end method

.method public hideTextMessage()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    return-void
.end method

.method public hideTouchFocusIndicator()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    .line 225
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 113
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 6
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 116
    sparse-switch p1, :sswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 118
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mGuidelineView:Lcom/sec/android/app/camera/widget/TwGuidelineView;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwGuidelineView;->handleGuidelineSettingsChanged(I)V

    goto :goto_0

    .line 121
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorStorageMedia:Lcom/sec/android/app/camera/widget/TwIndicatorStorage;

    invoke-virtual {v1, p2}, Lcom/sec/android/app/camera/widget/TwIndicatorStorage;->setStorage(I)V

    goto :goto_0

    .line 127
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v5, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-ne v1, v5, :cond_1

    .line 132
    :cond_0
    const/4 v0, 0x1

    .line 141
    .local v0, bHideFocus:Z
    :goto_1
    if-eqz v0, :cond_4

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    goto :goto_0

    .line 133
    .end local v0           #bHideFocus:Z
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 134
    const/4 v0, 0x1

    .restart local v0       #bHideFocus:Z
    goto :goto_1

    .line 135
    .end local v0           #bHideFocus:Z
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    if-nez v1, :cond_3

    .line 136
    const/4 v0, 0x1

    .restart local v0       #bHideFocus:Z
    goto :goto_1

    .line 138
    .end local v0           #bHideFocus:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #bHideFocus:Z
    goto :goto_1

    .line 144
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    goto/16 :goto_0

    .line 148
    .end local v0           #bHideFocus:Z
    :sswitch_3
    if-ne p2, v4, :cond_5

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 151
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorLock:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 116
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x5 -> :sswitch_2
        0x13 -> :sswitch_0
        0x16 -> :sswitch_1
        0x22 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mHideLaunchIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 314
    return-void
.end method

.method protected onHide()V
    .locals 3

    .prologue
    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 252
    .local v0, trayButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    if-eqz v0, :cond_0

    .line 253
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 256
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 293
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 296
    :cond_0
    const/4 v0, 0x1

    .line 299
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 303
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 306
    :cond_0
    const/4 v0, 0x1

    .line 309
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a005f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 243
    .local v0, trayButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    if-eqz v0, :cond_0

    .line 244
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public resetTouchFocusRectView()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->reset()V

    .line 278
    return-void
.end method

.method public setBatteryCharging()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 169
    return-void
.end method

.method public setBatteryLevel(I)V
    .locals 5
    .parameter "level"

    .prologue
    const/16 v4, 0x40

    const/16 v3, 0x31

    const/16 v2, 0x22

    const/16 v0, 0x13

    const/4 v1, 0x4

    .line 172
    if-gt p1, v1, :cond_0

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    .line 187
    :goto_0
    return-void

    .line 174
    :cond_0
    if-le p1, v1, :cond_1

    if-gt p1, v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 176
    :cond_1
    if-le p1, v0, :cond_2

    if-gt p1, v2, :cond_2

    .line 177
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 178
    :cond_2
    if-le p1, v2, :cond_3

    if-gt p1, v3, :cond_3

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 180
    :cond_3
    if-le p1, v3, :cond_4

    if-gt p1, v4, :cond_4

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 182
    :cond_4
    if-le p1, v4, :cond_5

    const/16 v0, 0x4f

    if-gt p1, v0, :cond_5

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0

    .line 185
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorBattery:Lcom/sec/android/app/camera/widget/TwIndicatorBattery;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorBattery;->setLevel(I)V

    goto :goto_0
.end method

.method public setFocusIndicator(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 192
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->showFocusSuccessRect()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->showFocusFailRect()V

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setFocusIndicator(I)V

    goto :goto_0
.end method

.method public setRemainCount(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 163
    iput p1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorsRemainCount:Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;

    iget v1, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mRemainCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorsRemainCount;->setRemainCount(I)V

    .line 165
    return-void
.end method

.method public setTextMessage(I)V
    .locals 2
    .parameter "resourceId"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 230
    return-void
.end method

.method public setTouchFocusRectCenter(IIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "screenWidth"
    .parameter "screenHeight"

    .prologue
    const/16 v5, 0x40

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setVisibility(I)V

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 266
    .local v2, rectParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getXDelta()I

    move-result v3

    sub-int v3, p1, v3

    sub-int v0, v3, v5

    .line 267
    .local v0, newLeft:I
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->getYDelta()I

    move-result v3

    sub-int v3, p2, v3

    sub-int v1, v3, v5

    .line 269
    .local v1, newTop:I
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 270
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object v3, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    sub-int v4, p3, v0

    sub-int v5, p4, v1

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->setPhysicalRectSize(II)V

    .line 274
    return-void
.end method

.method public showFocusIndicator()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 210
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mIndicatorFocus:Lcom/sec/android/app/camera/widget/TwIndicatorFocus;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocus;->setVisibility(I)V

    goto :goto_0
.end method

.method public showTextMessage()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTextMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    return-void
.end method

.method public shrinkTouchFocusRect()V
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraBaseIndicators;->mTouchFocusRectView:Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwTouchFocusRectView;->shrinkRect()V

    .line 282
    return-void
.end method

.method protected update()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method
