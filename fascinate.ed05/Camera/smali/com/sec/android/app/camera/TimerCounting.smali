.class public Lcom/sec/android/app/camera/TimerCounting;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TimerCounting.java"


# static fields
.field private static final TIMER_SOUND:I = 0x4


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

.field private mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

.field private mTimerCountNum:Landroid/widget/TextView;

.field private mTimerValue:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v8, 0x0

    .line 41
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 31
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerCountNum:Landroid/widget/TextView;

    .line 34
    iput-object v8, p0, Lcom/sec/android/app/camera/TimerCounting;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 43
    invoke-direct {p0}, Lcom/sec/android/app/camera/TimerCounting;->init()V

    .line 44
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00eb

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerCountNum:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/TimerCounting;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030033

    iget-object v2, p0, Lcom/sec/android/app/camera/TimerCounting;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    .line 59
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mIndicatorView:Landroid/view/ViewGroup;

    .line 66
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f030009

    iget-object v2, p0, Lcom/sec/android/app/camera/TimerCounting;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    goto :goto_0
.end method


# virtual methods
.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 105
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-lez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->cancelShutterTimer()V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->restoreMenu()V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 126
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/TimerCounting;->setTouchHandled(Z)V

    .line 127
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 128
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 144
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 162
    :goto_0
    return v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 149
    goto :goto_0

    .line 152
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 153
    goto :goto_0

    .line 156
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 159
    goto :goto_0

    :cond_5
    move v0, v2

    .line 162
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 166
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 184
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 171
    goto :goto_0

    .line 174
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 181
    goto :goto_0

    :cond_5
    move v0, v2

    .line 184
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 101
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mCameraSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->getVisibility()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mShutterButton:Lcom/sec/android/app/camera/ShutterButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterButton;->hideMenu()V

    .line 139
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/TimerCounting;->setTouchHandled(Z)V

    .line 140
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 141
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mCamcorderSideMenu:Lcom/sec/android/app/camera/CamcorderSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideMenu()V

    goto :goto_0
.end method

.method public updateCountingNum(I)V
    .locals 6
    .parameter "value"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    .line 70
    iput p1, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    .line 71
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 97
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v0

    if-eq v0, v4, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v0

    if-ne v0, v5, :cond_3

    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-ge v0, v1, :cond_3

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 96
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerCountNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1

    .line 85
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    if-ne v0, v5, :cond_6

    :cond_5
    iget v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mTimerValue:I

    if-ge v0, v1, :cond_6

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1

    .line 90
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerCounting;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    goto :goto_1
.end method
