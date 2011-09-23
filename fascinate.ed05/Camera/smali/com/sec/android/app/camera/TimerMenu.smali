.class public Lcom/sec/android/app/camera/TimerMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TimerMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnTimerChangedListener:Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;

.field mSelectedTimer:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/TimerResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
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
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/TimerMenu;->init(Lcom/sec/android/app/camera/TimerResourceData;)V

    .line 46
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/TimerResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/sec/android/app/camera/TimerMenu;->initTimerValue()V

    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00e8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/TimerMenu;->mSelectedTimer:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private initTimerValue()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mSelectedTimer:I

    .line 98
    :goto_0
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderTimer()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mSelectedTimer:I

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->clear()V

    .line 59
    iput-object v1, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 61
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 62
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 106
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 89
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 90
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

    iput v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mSelectedTimer:I

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mOnTimerChangedListener:Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mOnTimerChangedListener:Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/TimerMenu;->mSelectedTimer:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;->onTimerChanged(I)V

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

    .line 110
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 128
    :goto_0
    return v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 119
    goto :goto_0

    .line 122
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 125
    goto :goto_0

    :cond_5
    move v0, v2

    .line 128
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 132
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 150
    :goto_0
    return v0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 137
    goto :goto_0

    .line 140
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 141
    goto :goto_0

    .line 144
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 147
    goto :goto_0

    :cond_5
    move v0, v2

    .line 150
    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/camera/TimerMenu;->initTimerValue()V

    .line 81
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/TimerMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/TimerMenu;->mSelectedTimer:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 84
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 85
    return-void
.end method

.method public setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/TimerMenu;->mOnTimerChangedListener:Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;

    .line 77
    return-void
.end method
