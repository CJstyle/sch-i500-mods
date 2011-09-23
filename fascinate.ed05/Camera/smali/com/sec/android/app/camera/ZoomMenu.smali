.class public Lcom/sec/android/app/camera/ZoomMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ZoomMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ZoomMenu$1;,
        Lcom/sec/android/app/camera/ZoomMenu$MainHandler;,
        Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;
    }
.end annotation


# static fields
.field private static final MENU_TIMER_INTERVAL:J = 0xbb8L

.field private static final MSG_TIMER_OUT:I = 0x1


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field protected mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

.field private mSliderController:Lcom/sec/android/app/camera/SliderController;


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

    const/4 v7, 0x0

    .line 47
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 33
    new-instance v0, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;

    invoke-direct {v0, p0, v8}, Lcom/sec/android/app/camera/ZoomMenu$MainHandler;-><init>(Lcom/sec/android/app/camera/ZoomMenu;Lcom/sec/android/app/camera/ZoomMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object v8, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ZoomMenu;->setCaptureEnabled(Z)V

    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/camera/ZoomMenu;->init()V

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 53
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 54
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0104

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSlider;

    .line 58
    .local v0, zoomSlider:Lcom/sec/android/app/camera/widget/TwSlider;
    new-instance v1, Lcom/sec/android/app/camera/SliderController;

    invoke-direct {v1, v3, v3, v0, p0}, Lcom/sec/android/app/camera/SliderController;-><init>(Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwImageButton;Lcom/sec/android/app/camera/widget/TwSlider;Lcom/sec/android/app/camera/SliderController$OnSliderValueListener;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    .line 59
    return-void
.end method


# virtual methods
.method public OnSliderValueChange(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;->onZoomValueChanged(I)V

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->startZoomMenuTimer()V

    .line 72
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 65
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 130
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 0

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 119
    return-void
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 124
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 134
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 149
    :goto_0
    return v0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const/4 v0, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    .line 143
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->onHide()V

    .line 144
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->hideMenu()V

    move v0, v1

    .line 146
    goto :goto_0

    :cond_2
    move v0, v1

    .line 149
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 153
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 168
    :goto_0
    return v0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    goto :goto_0

    .line 161
    :cond_1
    const/16 v0, 0x1b

    if-ne p1, v0, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->onHide()V

    .line 163
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->hideMenu()V

    move v0, v1

    .line 165
    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ZoomMenu;->stopZoomMenuTimer()V

    .line 173
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 174
    return-void
.end method

.method public setOnZoomValueChangedListener(Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mOnZoomValueChangedListener:Lcom/sec/android/app/camera/ZoomMenu$OnZoomValueChangedListener;

    .line 76
    return-void
.end method

.method public startZoomMenuTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 81
    return-void
.end method

.method public stopZoomMenuTimer()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 85
    return-void
.end method

.method public updateSlider()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    iget-object v1, p0, Lcom/sec/android/app/camera/ZoomMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SliderController;->setCurrentSlider(I)V

    goto :goto_0
.end method

.method public zoomIn()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/SliderController;->doPlus()V

    .line 89
    return-void
.end method

.method public zoomOut()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ZoomMenu;->mSliderController:Lcom/sec/android/app/camera/SliderController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/SliderController;->doMinus()V

    .line 93
    return-void
.end method
