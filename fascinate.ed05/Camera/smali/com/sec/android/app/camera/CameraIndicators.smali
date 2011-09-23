.class public Lcom/sec/android/app/camera/CameraIndicators;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraIndicators.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

.field private mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

.field private mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

.field private mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

.field private mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

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
    .line 52
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraIndicators;->setTouchHandled(Z)V

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraIndicators;->init()V

    .line 56
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0030

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0031

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a004f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0032

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0050

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    .line 65
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0052

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0051

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0033

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 70
    return-void
.end method


# virtual methods
.method protected ChangeAntiShake(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setVisibility(I)V

    .line 269
    packed-switch p1, :pswitch_data_0

    .line 277
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setVisibility(I)V

    goto :goto_0

    .line 274
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorAntiShake:Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorAntiShake;->setAntiShake(I)V

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeFocusmode(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    .line 281
    packed-switch p1, :pswitch_data_0

    .line 293
    :goto_0
    return-void

    .line 284
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setVisibility(I)V

    goto :goto_0

    .line 287
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_0

    .line 290
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorFocusmode:Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorFocusmode;->setFocusmode(I)V

    goto :goto_0

    .line 281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ChangeGPS(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    const/16 v1, 0x8

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 313
    packed-switch p1, :pswitch_data_0

    .line 321
    :goto_0
    return-void

    .line 315
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    goto :goto_0

    .line 318
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 313
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeISO(I)V
    .locals 3
    .parameter "modeid"

    .prologue
    const/16 v2, 0x8

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    .line 202
    packed-switch p1, :pswitch_data_0

    .line 231
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setVisibility(I)V

    goto :goto_0

    .line 207
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 213
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 216
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 219
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 222
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 225
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 228
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorISO:Lcom/sec/android/app/camera/widget/TwIndicatorISO;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwIndicatorISO;->setISO(I)V

    goto :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected ChangeMetering(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 247
    :goto_0
    return-void

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorMetering:Lcom/sec/android/app/camera/widget/TwIndicatorMetering;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorMetering;->setMetering(I)V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected ChangeOutdoorVisibility(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    .line 297
    packed-switch p1, :pswitch_data_0

    .line 305
    :goto_0
    return-void

    .line 299
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setVisibility(I)V

    goto :goto_0

    .line 302
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorOutdoorVisibility:Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorOutdoorVisibility;->setOutdoorVisibility(I)V

    goto :goto_0

    .line 297
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected ChangeResolution(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 142
    packed-switch p1, :pswitch_data_0

    .line 177
    :goto_0
    :pswitch_0
    return-void

    .line 144
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 147
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 150
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 153
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 156
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 159
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 162
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 165
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 168
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 171
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 174
    :pswitch_b
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorResolution:Lcom/sec/android/app/camera/widget/TwIndicatorResolution;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorResolution;->setResolution(I)V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected ChangeTimer(I)V
    .locals 2
    .parameter "modeid"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 265
    :goto_0
    return-void

    .line 253
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setVisibility(I)V

    goto :goto_0

    .line 256
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 262
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorTimer:Lcom/sec/android/app/camera/widget/TwIndicatorTimer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorTimer;->setTimer(I)V

    goto :goto_0

    .line 251
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
    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 198
    :goto_0
    return-void

    .line 183
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setVisibility(I)V

    goto :goto_0

    .line 186
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 189
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 192
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 195
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorWhiteBalance:Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorWhiteBalance;->setWhiteBalance(I)V

    goto :goto_0

    .line 181
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
    .line 73
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    .line 75
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeResolution(I)V

    .line 76
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeISO(I)V

    .line 77
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeWhiteBalance(I)V

    .line 78
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeMetering(I)V

    .line 83
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeAntiShake(I)V

    .line 86
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeFocusmode(I)V

    .line 90
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeOutdoorVisibility(I)V

    .line 91
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->clear()V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 96
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 103
    sparse-switch p1, :sswitch_data_0

    .line 139
    :goto_0
    :sswitch_0
    return-void

    .line 105
    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeResolution(I)V

    goto :goto_0

    .line 108
    :sswitch_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeWhiteBalance(I)V

    goto :goto_0

    .line 111
    :sswitch_3
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeISO(I)V

    goto :goto_0

    .line 114
    :sswitch_4
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeMetering(I)V

    goto :goto_0

    .line 123
    :sswitch_5
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeAntiShake(I)V

    goto :goto_0

    .line 128
    :sswitch_6
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeFocusmode(I)V

    goto :goto_0

    .line 132
    :sswitch_7
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/CameraIndicators;->ChangeOutdoorVisibility(I)V

    goto :goto_0

    .line 103
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x5 -> :sswitch_6
        0x6 -> :sswitch_0
        0x9 -> :sswitch_2
        0xa -> :sswitch_3
        0xb -> :sswitch_4
        0xd -> :sswitch_5
        0x23 -> :sswitch_7
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 342
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 345
    :cond_0
    const/4 v0, 0x1

    .line 348
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
    .line 352
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 355
    :cond_0
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->pause()V

    .line 100
    return-void
.end method

.method public setConnectingStateGPS(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setVisibility(I)V

    .line 328
    packed-switch p1, :pswitch_data_0

    .line 339
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 333
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 336
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraIndicators;->mIndicatorGPS:Lcom/sec/android/app/camera/widget/TwIndicatorGPS;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwIndicatorGPS;->setGPS(I)V

    goto :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
