.class public Lcom/sec/android/app/camera/CamcorderIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

.field private mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

.field private mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

.field private mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;


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
    .line 44
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderIndicators;->setTouchHandled(Z)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderIndicators;->init()V

    .line 48
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected ChangeOutdoorVisibility(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    .line 160
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    return-void

    .line 162
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setOutdoorVisibility(I)V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeResolution(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    .line 96
    packed-switch p1, :pswitch_data_0

    .line 113
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 114
    .local v0, cameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getDefaultCamcorderResolution()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderResolution(I)Z

    .line 117
    .end local v0           #cameraSettings:Lcom/sec/android/app/camera/CameraSettings;
    :goto_0
    return-void

    .line 98
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 101
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 104
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 107
    :pswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 110
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 96
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected ChangeTimer(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 156
    :goto_0
    return-void

    .line 144
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    goto :goto_0

    .line 147
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 150
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 153
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected ChangeWhiteBalance(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    .line 121
    packed-switch p1, :pswitch_data_0

    .line 138
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    goto :goto_0

    .line 126
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 129
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 132
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 135
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public initIndicators()V
    .locals 2

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 63
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeResolution(I)V

    .line 64
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeWhiteBalance(I)V

    .line 67
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeOutdoorVisibility(I)V

    .line 68
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 72
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 75
    sparse-switch p1, :sswitch_data_0

    .line 93
    :goto_0
    :sswitch_0
    return-void

    .line 78
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeResolution(I)V

    goto :goto_0

    .line 81
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeWhiteBalance(I)V

    goto :goto_0

    .line 88
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CamcorderIndicators;->ChangeOutdoorVisibility(I)V

    goto :goto_0

    .line 75
    :sswitch_data_0
    .sparse-switch
        0x68 -> :sswitch_1
        0x6a -> :sswitch_0
        0x6b -> :sswitch_2
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 174
    :cond_0
    const/4 v0, 0x1

    .line 177
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
    .line 181
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 184
    :cond_0
    const/4 v0, 0x1

    .line 187
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
