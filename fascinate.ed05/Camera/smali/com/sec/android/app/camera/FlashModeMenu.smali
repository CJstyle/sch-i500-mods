.class public Lcom/sec/android/app/camera/FlashModeMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "FlashModeMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnFlashModeChangedListener:Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;

.field mSelectedFlashMode:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/FlashModeResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 43
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 45
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/FlashModeMenu;->init(Lcom/sec/android/app/camera/FlashModeResourceData;)V

    .line 46
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/FlashModeResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    .line 53
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a009f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    goto :goto_0
.end method


# virtual methods
.method public getGridView()Lcom/sec/android/app/camera/widget/TwGridView;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    return-object v0
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 100
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 87
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 88
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mOnFlashModeChangedListener:Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mOnFlashModeChangedListener:Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;->onFlashModeChanged(I)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 72
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 104
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 121
    :goto_0
    return v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 109
    goto :goto_0

    .line 112
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 118
    goto :goto_0

    :cond_5
    move v0, v2

    .line 121
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 125
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 142
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 130
    goto :goto_0

    .line 133
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 139
    goto :goto_0

    :cond_5
    move v0, v2

    .line 142
    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 82
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 83
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mSelectedFlashMode:I

    goto :goto_0
.end method

.method public setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/app/camera/FlashModeMenu;->mOnFlashModeChangedListener:Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;

    .line 92
    return-void
.end method
