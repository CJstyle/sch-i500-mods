.class public Lcom/sec/android/app/camera/CameraQualityMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraQualityMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;
    }
.end annotation


# instance fields
.field mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

.field protected mOnCameraQualityChangedListener:Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;

.field mSelectedQuality:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/CameraQualityResourceData;Lcom/sec/android/app/camera/MenuResourceData;I)V
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
    invoke-direct {p0, p5}, Lcom/sec/android/app/camera/CameraQualityMenu;->init(Lcom/sec/android/app/camera/CameraQualityResourceData;)V

    .line 48
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/CameraQualityResourceData;)V
    .locals 2
    .parameter "resourceData"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mSelectedQuality:I

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0053

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwGridView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mSelectedQuality:I

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V

    .line 55
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

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
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwGridView;->clear()V

    .line 64
    iput-object v1, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    .line 66
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 67
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 98
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-eq v0, v1, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mSelectedQuality:I

    .line 72
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mOnCameraQualityChangedListener:Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mOnCameraQualityChangedListener:Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mSelectedQuality:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;->onCameraQualityChanged(I)V

    .line 76
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 102
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 120
    :goto_0
    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 107
    goto :goto_0

    .line 110
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 111
    goto :goto_0

    .line 114
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 117
    goto :goto_0

    :cond_5
    move v0, v2

    .line 120
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 124
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 142
    :goto_0
    return v0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 129
    goto :goto_0

    .line 132
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 133
    goto :goto_0

    .line 136
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
    .line 85
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mSelectedQuality:I

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mGrid:Lcom/sec/android/app/camera/widget/TwGridView;

    iget v1, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mSelectedQuality:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setCurrentSelectedItem(I)V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 90
    return-void
.end method

.method public setOnCameraQualityChangedListener(Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraQualityMenu;->mOnCameraQualityChangedListener:Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;

    .line 82
    return-void
.end method
