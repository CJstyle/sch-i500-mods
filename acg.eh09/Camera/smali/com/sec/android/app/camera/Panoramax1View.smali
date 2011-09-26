.class public Lcom/sec/android/app/camera/Panoramax1View;
.super Lcom/sec/android/app/camera/MenuBase;
.source "Panoramax1View.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
    }
.end annotation


# instance fields
.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureCount:I

.field private mCaptureLayout:Landroid/widget/RelativeLayout;

.field private mCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mCaptureProgressText:Landroid/widget/TextView;

.field private mHelpText:Landroid/widget/TextView;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "order"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 77
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 44
    iput v7, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    .line 57
    new-instance v0, Lcom/sec/android/app/camera/Panoramax1View$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/Panoramax1View$1;-><init>(Lcom/sec/android/app/camera/Panoramax1View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 79
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Panoramax1View;->setCaptureEnabled(Z)V

    .line 80
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 81
    invoke-direct {p0}, Lcom/sec/android/app/camera/Panoramax1View;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/Panoramax1View;)Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b7

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    const v1, 0x7f0700c9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 99
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->showHelpText()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ba

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a00b3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIndicatorView:Landroid/view/ViewGroup;

    .line 116
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 117
    return-void
.end method


# virtual methods
.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 243
    return-void
.end method

.method public hideHelpText()V
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 126
    .local v0, aAni:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 127
    iget-object v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 128
    iget-object v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 131
    .end local v0           #aAni:Landroid/view/animation/AlphaAnimation;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 231
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public isPostCaptureLayoutVisible()Z
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    if-lez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;->onPanoramaCaptureCancelled()V

    .line 137
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 254
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 272
    :goto_0
    return v0

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 259
    goto :goto_0

    .line 262
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 263
    goto :goto_0

    .line 266
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_5

    .line 267
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 268
    goto :goto_0

    :cond_5
    move v0, v2

    .line 272
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 276
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 294
    :goto_0
    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 281
    goto :goto_0

    .line 284
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 285
    goto :goto_0

    .line 288
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_5

    .line 289
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 290
    goto :goto_0

    :cond_5
    move v0, v2

    .line 294
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 298
    const-string v0, "Panoramax1View"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 301
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->reset()V

    .line 303
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 306
    const-string v0, "Panoramax1View"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 308
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    const-string v0, "Panoramax1View"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iput-boolean v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    const-string v1, "0/8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iput v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    .line 149
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 157
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->showMenu()V

    .line 158
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->restoreMenu()V

    .line 159
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->showHelpText()V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 165
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 176
    const-string v0, "Panoramax1View"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->stopCancelTimer()V

    .line 178
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->startCancelTimer()V

    .line 179
    return-void
.end method

.method public setCaptureProgressIncreased()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 188
    iput-boolean v3, p0, Lcom/sec/android/app/camera/Panoramax1View;->mIsPanoramaCapturing:Z

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 191
    iget v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    if-le v0, v3, :cond_1

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->hideHelpText()V

    .line 199
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CameraSideMenu;->setMenuVisibility(Z)V

    .line 201
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 204
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/Panoramax1View;->setTouchHandled(Z)V

    .line 205
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 206
    iget-object p0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 211
    return-void

    .line 196
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/Panoramax1View;->showHelpText()V

    goto :goto_0
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/sec/android/app/camera/Panoramax1View;->mListener:Lcom/sec/android/app/camera/Panoramax1View$OnPanoramaCaptureCancelListener;

    .line 251
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 219
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 227
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 247
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mHelpText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 235
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 173
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 182
    const-string v0, "Panoramax1View"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/Panoramax1View;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 186
    :cond_0
    return-void
.end method
