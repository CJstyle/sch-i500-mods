.class public Lcom/sec/android/app/camera/SmileShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "SmileShotView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;
    }
.end annotation


# instance fields
.field private mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

.field private mIndicatorView:Landroid/view/ViewGroup;

.field private mIsDetecting:Z

.field private mIsStopping:Z

.field protected mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

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

    .line 45
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 40
    iput-boolean v7, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 41
    iput-boolean v7, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsStopping:Z

    .line 47
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/SmileShotView;->setCaptureEnabled(Z)V

    .line 48
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/SmileShotView;->setTouchHandled(Z)V

    .line 49
    invoke-direct {p0}, Lcom/sec/android/app/camera/SmileShotView;->init()V

    .line 50
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 53
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000f

    iget-object v3, p0, Lcom/sec/android/app/camera/SmileShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraSideMenu;

    iput-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    .line 54
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000a

    iget-object v3, p0, Lcom/sec/android/app/camera/SmileShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CameraBaseIndicators;

    iput-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    .line 56
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mBaseView:Landroid/view/ViewGroup;

    const v2, 0x7f0a00e0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    .line 59
    iget-object v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a00e1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    .local v0, blinkView:Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 67
    return-void
.end method


# virtual methods
.method public hideMenu()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 137
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 138
    return-void
.end method

.method public isDetecting()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    return v0
.end method

.method public isStopping()Z
    .locals 1

    .prologue
    .line 74
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsStopping:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 150
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 151
    return-void

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;->onSmileDetectingStopped()V

    .line 123
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 154
    iget-object p0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->onSmileDetectingStopped()V

    .line 155
    return-void
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraBaseIndicators;->setTextMessage(I)V

    .line 132
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 133
    return-void
.end method

.method public setOnSmileDetectingStoppedListener(Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/sec/android/app/camera/SmileShotView;->mOnSmileDetectingStoppedListener:Lcom/sec/android/app/camera/SmileShotView$OnSmileDetectingStoppedListener;

    .line 127
    return-void
.end method

.method public startDetect()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setMenuVisibility(Z)V

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideMenu()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->restoreMenu()V

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mCameraBaseIndicator:Lcom/sec/android/app/camera/CameraBaseIndicators;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraBaseIndicators;->hideTextMessage()V

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 86
    iput-boolean v2, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 87
    iput-boolean v1, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsStopping:Z

    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showShutterButton()V

    .line 89
    iget-object p0, p0, Lcom/sec/android/app/camera/SmileShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camera;->hideTrayButton()V

    .line 90
    return-void
.end method

.method public stopDetect()V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mSideMenu:Lcom/sec/android/app/camera/CameraSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSideMenu;->restoreMenu()V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/SmileShotView;->showMenu()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsStopping:Z

    .line 107
    return-void
.end method

.method public stopSmileShot()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsStopping:Z

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsDetecting:Z

    .line 114
    iput-boolean v2, p0, Lcom/sec/android/app/camera/SmileShotView;->mIsStopping:Z

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/SmileShotView;->mIndicatorView:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 116
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/SmileShotView;->setTouchHandled(Z)V

    goto :goto_0
.end method
