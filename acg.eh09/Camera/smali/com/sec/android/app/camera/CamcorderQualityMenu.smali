.class public Lcom/sec/android/app/camera/CamcorderQualityMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderQualityMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnCamcorderQualityChangedListener:Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;

.field mSelectedQuality:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/CamcorderQualityResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
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
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/CamcorderQualityMenu;->init(Lcom/sec/android/app/camera/CamcorderQualityResourceData;)V

    .line 48
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/CamcorderQualityResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mSelectedQuality:I

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mSelectedQuality:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->setTextSizeSmall()V

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

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

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 97
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mSelectedQuality:I

    .line 71
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mOnCamcorderQualityChangedListener:Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mOnCamcorderQualityChangedListener:Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mSelectedQuality:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;->onCamcorderQualityChanged(I)V

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 101
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x1

    .line 107
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
    .line 111
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 114
    :cond_0
    const/4 v0, 0x1

    .line 117
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mSelectedQuality:I

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mSelectedQuality:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 88
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 89
    return-void
.end method

.method public setOnCamcorderQualityChangedListener(Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderQualityMenu;->mOnCamcorderQualityChangedListener:Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;

    .line 81
    return-void
.end method
