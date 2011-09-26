.class public Lcom/sec/android/app/camera/WhiteBalanceMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "WhiteBalanceMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnWhiteBalanceChangedListener:Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;

.field mSelectedWB:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/WhiteBalanceResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 7
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "resourceData"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 47
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->init(Lcom/sec/android/app/camera/WhiteBalanceResourceData;)V

    .line 48
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/WhiteBalanceResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0102

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 57
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    goto :goto_0
.end method

.method private setSavedWB()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    .line 98
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeWhiteBalancePreview(I)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeEffectPreview(I)V

    .line 107
    :goto_1
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    goto :goto_0

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeEffectPreview(I)V

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->clear()V

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 65
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 66
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 125
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    const-string v1, "MenuBase"

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 80
    const-string v0, "MenuBase"

    const-string v0, "WB preview changed..."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeWhiteBalancePreview(I)V

    .line 85
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 86
    return-void

    .line 71
    :sswitch_0
    const-string v0, "MenuBase"

    const-string v0, "WB changed..."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mOnWhiteBalanceChangedListener:Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mOnWhiteBalanceChangedListener:Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mSelectedWB:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;->onWhiteBalanceChanged(I)V

    goto :goto_0

    .line 77
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->hideMenu()V

    goto :goto_0

    .line 69
    :sswitch_data_0
    .sparse-switch
        0x7f0a00a4 -> :sswitch_1
        0x7f0a00d6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onHide()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setSavedWB()V

    .line 111
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 112
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 129
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 147
    :goto_0
    return v0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 134
    goto :goto_0

    .line 137
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 138
    goto :goto_0

    .line 141
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 144
    goto :goto_0

    :cond_5
    move v0, v2

    .line 147
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 151
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 169
    :goto_0
    return v0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 156
    goto :goto_0

    .line 159
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 160
    goto :goto_0

    .line 163
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 166
    goto :goto_0

    :cond_5
    move v0, v2

    .line 169
    goto :goto_0
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setSavedWB()V

    .line 116
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 117
    return-void
.end method

.method public setOnWhiteBalanceChangedListener(Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sec/android/app/camera/WhiteBalanceMenu;->mOnWhiteBalanceChangedListener:Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;

    .line 90
    return-void
.end method
