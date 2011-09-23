.class public Lcom/sec/android/app/camera/ActionShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ActionShotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;
    }
.end annotation


# static fields
.field public static final ACTIONSHOT_MAX_IMAGE_COUNT:I = 0x9


# instance fields
.field private mBackButton:Landroid/view/View;

.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mCaptureLayout:Landroid/widget/RelativeLayout;

.field private mCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

.field private mPostCaptureLayout:Landroid/widget/RelativeLayout;

.field private mPostCaptureProgressBar:Landroid/widget/ProgressBar;

.field private mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

.field private mSideMenuHidden:Z


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

    .line 54
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 43
    iput-boolean v7, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

    .line 56
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ActionShotView;->setCaptureEnabled(Z)V

    .line 57
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/ActionShotView;->setTouchHandled(Z)V

    .line 58
    invoke-direct {p0}, Lcom/sec/android/app/camera/ActionShotView;->init()V

    .line 59
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 70
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0007

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000f

    iget-object v2, p0, Lcom/sec/android/app/camera/ActionShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v1, 0x7f03000a

    iget-object v2, p0, Lcom/sec/android/app/camera/ActionShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mBaseView:Landroid/view/ViewGroup;

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mIndicatorView:Landroid/view/ViewGroup;

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 87
    return-void
.end method


# virtual methods
.method public hideCaptureLayout()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 151
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 159
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 97
    :goto_0
    return-void

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    .line 95
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 188
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 175
    goto :goto_0

    .line 178
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 179
    goto :goto_0

    .line 182
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_5

    .line 183
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 184
    goto :goto_0

    :cond_5
    move v0, v2

    .line 188
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 192
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 210
    :goto_0
    return v0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 197
    goto :goto_0

    .line 200
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 201
    goto :goto_0

    .line 204
    :cond_3
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/16 v0, 0x1b

    if-ne p1, v0, :cond_5

    .line 205
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 206
    goto :goto_0

    :cond_5
    move v0, v2

    .line 210
    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    .line 216
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->resetAcquisitionProgress()V

    .line 218
    :cond_0
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 108
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->showMenu()V

    .line 109
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ActionShotView;->restoreMenu()V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ActionShotView;->setTouchHandled(Z)V

    .line 115
    iput-boolean v1, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    .line 116
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 122
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenuHidden:Z

    .line 124
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ActionShotView;->setTouchHandled(Z)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 129
    iget-object p0, p0, Lcom/sec/android/app/camera/ActionShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 135
    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/sec/android/app/camera/ActionShotView;->mListener:Lcom/sec/android/app/camera/ActionShotView$ActionShotCaptureCancelListener;

    .line 166
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 139
    return-void
.end method

.method public setPostCaptureProgressMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 143
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 155
    return-void
.end method

.method public showPostCaptureLayout()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/ActionShotView;->mPostCaptureLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 163
    return-void
.end method
