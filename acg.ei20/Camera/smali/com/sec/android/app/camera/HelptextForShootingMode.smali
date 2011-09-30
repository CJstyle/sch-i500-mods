.class public Lcom/sec/android/app/camera/HelptextForShootingMode;
.super Lcom/sec/android/app/camera/MenuBase;
.source "HelptextForShootingMode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/HelptextForShootingMode$1;,
        Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHelptext:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 31
    iput-object v1, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    .line 33
    new-instance v0, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/HelptextForShootingMode$MainHandler;-><init>(Lcom/sec/android/app/camera/HelptextForShootingMode;Lcom/sec/android/app/camera/HelptextForShootingMode$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHandler:Landroid/os/Handler;

    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->init()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00a8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    .line 58
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 61
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 63
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 91
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 95
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 102
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 122
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 107
    goto :goto_0

    .line 110
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v0, v2

    .line 112
    goto :goto_0

    .line 115
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    .line 118
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    move v0, v1

    .line 119
    goto :goto_0

    :cond_5
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 126
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 144
    :goto_0
    return v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 131
    goto :goto_0

    .line 134
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v2

    .line 135
    goto :goto_0

    .line 138
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 141
    goto :goto_0

    :cond_5
    move v0, v1

    .line 144
    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->stopHelptextPopupTimer()V

    .line 99
    return-void
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->setHelptextVisible()V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/camera/HelptextForShootingMode;->startHelptextPopupTimer()V

    .line 86
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 87
    return-void
.end method

.method public setHelptextVisible()V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    :pswitch_0
    return-void

    .line 69
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0700c5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 72
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0700c6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 75
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 78
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHelptext:Landroid/widget/TextView;

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public startHelptextPopupTimer()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 149
    return-void
.end method

.method public stopHelptextPopupTimer()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sec/android/app/camera/HelptextForShootingMode;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    return-void
.end method
