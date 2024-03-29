.class public Lcom/sec/android/app/camera/VintageShotView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "VintageShotView.java"

# interfaces
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
    }
.end annotation


# instance fields
.field private buttonSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/camera/VintageShotView$ButtonSet;",
            ">;"
        }
    .end annotation
.end field

.field private mTextStrings:[I

.field private mVintageModeText:Landroid/widget/TextView;

.field private mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 9
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v8, 0x1

    .line 62
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    .line 66
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/VintageShotView;->initTextStrings([I)V

    .line 68
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/VintageShotView;->setCaptureEnabled(Z)V

    .line 69
    invoke-virtual {p0, v8}, Lcom/sec/android/app/camera/VintageShotView;->setTouchHandled(Z)V

    .line 70
    invoke-direct {p0}, Lcom/sec/android/app/camera/VintageShotView;->init()V

    .line 71
    return-void

    .line 66
    :array_0
    .array-data 0x4
        0x2at 0x0t 0x7t 0x7ft
        0x2bt 0x0t 0x7t 0x7ft
        0x2ct 0x0t 0x7t 0x7ft
        0x2dt 0x0t 0x7t 0x7ft
    .end array-data
.end method

.method private init()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00fe

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00ff

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageModeText:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/sec/android/app/camera/VintageShotView;->populateButtonSet()V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/VintageShotView;->updateVintageText(I)V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 84
    return-void
.end method

.method private varargs initTextStrings([I)V
    .locals 1
    .parameter "ids"

    .prologue
    .line 166
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mTextStrings:[I

    .line 167
    iput-object p1, p0, Lcom/sec/android/app/camera/VintageShotView;->mTextStrings:[I

    .line 168
    return-void
.end method

.method private populateButtonSet()V
    .locals 8

    .prologue
    const/16 v2, 0x8

    .line 144
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f0201b3

    const v6, 0x7f0201b4

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f0201b5

    const v6, 0x7f0201b6

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f0201af

    const v6, 0x7f0201b0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v7, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    new-instance v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const v5, 0x7f0201b1

    const v6, 0x7f0201b2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;-><init>(Lcom/sec/android/app/camera/VintageShotView;IILcom/sec/android/app/camera/widget/TwImageButton;II)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 176
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    const/4 v1, 0x1

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 133
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageMoedButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    goto :goto_0

    .line 131
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const-string v2, "MenuBase"

    .line 87
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    const-string v1, "MenuBase"

    const-string v1, "return isCapturing.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 96
    const-string v1, "MenuBase"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 111
    :goto_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 102
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03003e

    iget-object v3, p0, Lcom/sec/android/app/camera/VintageShotView;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotSelectionMenu;

    .line 104
    .local v0, menu:Lcom/sec/android/app/camera/VintageShotSelectionMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->showMenu()V

    .line 105
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/VintageShotSelectionMenu;->setOnVintageChangedListener(Lcom/sec/android/app/camera/VintageShotSelectionMenu$OnVintageChangedListener;)V

    .line 106
    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    goto :goto_1

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00fe
        :pswitch_0
    .end packed-switch
.end method

.method public updateVintageModeButton(II)V
    .locals 4
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 115
    iget-object v2, p0, Lcom/sec/android/app/camera/VintageShotView;->buttonSetList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/app/camera/VintageShotView$ButtonSet;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;

    .line 119
    .local v0, buttonSet:Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
    iget v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mMenuNumber:I

    if-ne v2, p1, :cond_0

    iget v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mModeNumber:I

    if-ne v2, p2, :cond_0

    .line 120
    iget-object v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mNormalBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setNormalImage(I)V

    .line 122
    iget-object v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    iget v3, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mClickedBackgroundId:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressedImage(I)V

    .line 124
    iget-object v2, v0, Lcom/sec/android/app/camera/VintageShotView$ButtonSet;->mButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 128
    .end local v0           #buttonSet:Lcom/sec/android/app/camera/VintageShotView$ButtonSet;
    :cond_1
    return-void
.end method

.method public updateVintageText(I)V
    .locals 2
    .parameter "vintage"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/VintageShotView;->mVintageModeText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/VintageShotView;->mTextStrings:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 172
    return-void
.end method
