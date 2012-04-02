.class public Lcom/sec/android/app/camera/ReviewButton;
.super Lcom/sec/android/app/camera/MenuBase;
.source "ReviewButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# instance fields
.field private mBubble:Landroid/widget/LinearLayout;

.field private mBubbleText:Landroid/widget/TextView;

.field private mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 8
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 45
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 47
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewButton;->init()V

    .line 48
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 49
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwReviewButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mBubble:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00d2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mBubbleText:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewButton;->initializeButtons()V

    .line 62
    return-void
.end method

.method private initializeButtons()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewButton;->mBubble:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwReviewButton;->registerPopupTextLayout(Landroid/widget/LinearLayout;)V

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mBubbleText:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwReviewButton;->clear()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    .line 54
    return-void
.end method

.method public getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    return-object v0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v1, 0x1

    .line 113
    packed-switch p1, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 115
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setDisabled(Z)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setDisabled(Z)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const-string v1, "ReviewButton"

    .line 76
    const-string v0, "ReviewButton"

    const-string v0, "onClick..."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->viewLastImage()V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->isMediaRecorderRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    const-string v0, "ReviewButton"

    const-string v0, "isRecording..."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->viewLastVideo()V

    goto :goto_0
.end method

.method public setButtonLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setDisabled(Z)V

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mDimmed:Z

    .line 103
    :cond_0
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwReviewButton;->setDisabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewButton;->mReviewButton:Lcom/sec/android/app/camera/widget/TwReviewButton;

    iput-boolean v1, v0, Lcom/sec/android/app/camera/widget/TwReviewButton;->mDimmed:Z

    .line 110
    :cond_0
    return-void
.end method
