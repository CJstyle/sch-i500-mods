.class public Lcom/sec/android/app/camera/CamcorderSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderSideMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final HIDE_MENU_TIMEOUT:I = 0x1388

.field protected static final TAG:Ljava/lang/String; = "CamcorderSideMenu"


# instance fields
.field private leftOpaqueBackground:I

.field private leftTransparentBackground:I

.field private mAnimDelay:I

.field private mAnimDelta:I

.field mAnimHandler:Landroid/os/Handler;

.field private mAnimInProgress:Z

.field private mAnimationEnabled:Z

.field private mAutoHiding:Z

.field private mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

.field mHideAnimRunnable:Ljava/lang/Runnable;

.field private mHideMenuTimeoutHandler:Landroid/os/Handler;

.field private mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

.field private mHidingSideMenu:Z

.field private mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field private mLeftSideMenuVisible:Z

.field private mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field mShowAnimRunnable:Ljava/lang/Runnable;

.field private mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private rightOpaqueBackground:I

.field private rightTransparentBackground:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;ILcom/sec/android/app/camera/CamcorderSideMenuResourceData;)V
    .locals 8
    .parameter "camcorder"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"
    .parameter "cameraSMenuResourceData"

    .prologue
    .line 158
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenuVisible:Z

    .line 53
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 58
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    .line 61
    new-instance v0, Lcom/sec/android/app/camera/CamcorderSideMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderSideMenu$1;-><init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcom/sec/android/app/camera/CamcorderSideMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderSideMenu$2;-><init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 145
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/sec/android/app/camera/CamcorderSideMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderSideMenu$3;-><init>(Lcom/sec/android/app/camera/CamcorderSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    .line 160
    iput-object p7, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    .line 161
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setTouchHandled(Z)V

    .line 162
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->init()V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelta:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showLeftSideMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CamcorderSideMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideLeftSideMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideTrayButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopShowAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CamcorderSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showTrayButton()V

    return-void
.end method

.method private hideLeftSideMenu()V
    .locals 2

    .prologue
    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    if-eqz v0, :cond_0

    .line 627
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setVisibility(I)V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenuVisible:Z

    .line 630
    :cond_0
    return-void
.end method

.method private hideTrayButton()V
    .locals 2

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 636
    :cond_0
    return-void
.end method

.method private init()V
    .locals 13

    .prologue
    .line 168
    const/4 v4, 0x0

    .line 169
    .local v4, modeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v6, 0x0

    .line 170
    .local v6, recordingModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v8, 0x0

    .line 171
    .local v8, sceneModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v2, 0x0

    .line 172
    .local v2, imageViewerButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v1, 0x0

    .line 173
    .local v1, exposureValueButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v7, 0x0

    .line 175
    .local v7, resolutionButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0042

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 176
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0043

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 178
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 179
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v9, v10, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0045

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 183
    .local v3, lPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0046

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 186
    .local v5, rPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v3, v9}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 187
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mCamcorderSideMenuResourceData:Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/CamcorderSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 224
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x65

    const/16 v11, 0x65

    invoke-virtual {v3, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 226
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x65

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v6

    .line 229
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x67

    const/16 v11, 0x67

    invoke-virtual {v3, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 231
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x67

    iget-object v11, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v11

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 237
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x6d

    const/16 v11, 0x6d

    invoke-virtual {v3, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 240
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x6a

    const/16 v11, 0x6a

    invoke-virtual {v3, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 259
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    const/16 v11, 0x1b

    invoke-virtual {v3, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 261
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x1b

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 262
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 264
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    const/16 v11, 0x20

    const/4 v12, 0x2

    invoke-virtual {v5, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addEmptyPopupText(II)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 270
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v4

    .line 271
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x66

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v8

    .line 272
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x6d

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    .line 274
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x68

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v7

    .line 276
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v10, 0x20

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 282
    const v9, 0x7f020089

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftTransparentBackground:I

    .line 283
    const v9, 0x7f020088

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftOpaqueBackground:I

    .line 290
    const v9, 0x7f0201d7

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightTransparentBackground:I

    .line 291
    const v9, 0x7f0201d6

    iput v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightOpaqueBackground:I

    .line 295
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v10, 0x7f0a0044

    invoke-virtual {v9, v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 296
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v9, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 303
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v9, 0x18

    invoke-virtual {v0, v9, v4}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 305
    const/16 v9, 0x19

    invoke-virtual {v0, v9, v6}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 306
    const/16 v9, 0x1b

    invoke-virtual {v0, v9, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 307
    const/16 v9, 0x1a

    invoke-virtual {v0, v9, v8}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 308
    const/16 v9, 0x17

    invoke-virtual {v0, v9, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 309
    const/16 v9, 0x1c

    invoke-virtual {v0, v9, v7}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 310
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->updateBackgroundTransparency()V

    .line 314
    return-void
.end method

.method private showLeftSideMenu()V
    .locals 2

    .prologue
    .line 570
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    if-eqz v0, :cond_0

    .line 571
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setVisibility(I)V

    .line 572
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenuVisible:Z

    .line 574
    :cond_0
    return-void
.end method

.method private showTrayButton()V
    .locals 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 580
    :cond_0
    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 694
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 696
    return-void
.end method

.method private startHideMenuTimer()V
    .locals 4

    .prologue
    .line 699
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 700
    return-void
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 616
    const-string v0, "CamcorderSideMenu"

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 620
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 622
    return-void
.end method

.method private stopHideAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 682
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 689
    :goto_0
    return-void

    .line 685
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 686
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 688
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method private stopShowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 603
    const-string v0, "CamcorderSideMenu"

    const-string v1, "stopShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 606
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 613
    :goto_0
    return-void

    .line 609
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 612
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getAnimationEnabled()Z
    .locals 1

    .prologue
    .line 717
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    return v0
.end method

.method public getReviewButton()Lcom/sec/android/app/camera/widget/TwImageButton;
    .locals 3

    .prologue
    .line 771
    const/4 v0, 0x0

    .line 773
    .local v0, btn:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v0

    .line 776
    :cond_0
    return-object v0
.end method

.method public handleTouchUp(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const v8, 0x7f030019

    const v7, 0x7f030018

    const v6, 0x7f030008

    const v4, 0x7f030007

    const/4 v5, 0x0

    .line 389
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 390
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 391
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 393
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camcorder;->isRecording()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const-string v1, "CamcorderSideMenu"

    const-string v2, "return isRecording.."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->isAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 401
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 402
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 404
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0

    .line 407
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 408
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 409
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderResolutionMenu;

    .line 412
    .local v0, menu:Lcom/sec/android/app/camera/CamcorderResolutionMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderResolutionMenu;->showMenu()V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CamcorderResolutionMenu;->setOnCamcorderResolutionChangedListener(Lcom/sec/android/app/camera/CamcorderResolutionMenu$OnCamcorderResolutionChangedListener;)V

    .line 414
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto :goto_0

    .line 418
    .end local v0           #menu:Lcom/sec/android/app/camera/CamcorderResolutionMenu;
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030028

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 419
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 420
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto :goto_0

    .line 422
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030028

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/RecordingModeMenu;

    .line 423
    .local v0, menu:Lcom/sec/android/app/camera/RecordingModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/RecordingModeMenu;->showMenu()V

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/RecordingModeMenu;->setOnRecordingModeChangedListener(Lcom/sec/android/app/camera/RecordingModeMenu$OnRecordingModeChangedListener;)V

    .line 425
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 429
    .end local v0           #menu:Lcom/sec/android/app/camera/RecordingModeMenu;
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 432
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 433
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 434
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    goto/16 :goto_0

    .line 438
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 439
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 440
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 443
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;

    .line 444
    .local v0, menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->showMenu()V

    .line 445
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonText()V

    .line 446
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 450
    .end local v0           #menu:Lcom/sec/android/app/camera/CamcorderSettingsMenu;
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v8, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 451
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 452
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 454
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 455
    .local v0, menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 456
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 457
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 461
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030039

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 462
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 463
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 465
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 466
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 467
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    .line 468
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 472
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 473
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 474
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 476
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 477
    .local v0, menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->showMenu()V

    .line 478
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V

    .line 479
    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 483
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 486
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camcorder;

    const-string v2, "quickview"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/Camcorder;->onLaunchGallery(Ljava/lang/String;)V

    .line 487
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 490
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 494
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1b -> :sswitch_4
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x20 -> :sswitch_a
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_1
        0x6a -> :sswitch_6
        0x6d -> :sswitch_7
    .end sparse-switch
.end method

.method public hideLeftMenu()V
    .locals 2

    .prologue
    .line 663
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 664
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideChildMenu()V

    .line 665
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideTrayButton()V

    .line 666
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideLeftSideMenu()V

    .line 667
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showTrayButton()V

    .line 677
    :goto_0
    return-void

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 673
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideAnimation()V

    .line 675
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideChildMenu()V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 639
    const-string v0, "CamcorderSideMenu"

    const-string v1, "hideMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideReviewButton()V

    .line 643
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 645
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideTrayButton()V

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideLeftSideMenu()V

    .line 658
    :goto_0
    return-void

    .line 651
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->hideShutterButton()V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 653
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 654
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideAnimation()V

    .line 656
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 732
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimInProgress:Z

    return v0
.end method

.method public isInflatedMenuSet()Z
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x1

    .line 728
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftSideMenuVisible()Z
    .locals 1

    .prologue
    .line 736
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenuVisible:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 566
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 505
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 507
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 509
    packed-switch p1, :pswitch_data_0

    .line 519
    :goto_0
    return-void

    .line 511
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonLocked()V

    .line 513
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->setButtonUnlocked()V

    goto :goto_0

    .line 509
    nop

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0044

    if-ne v0, v1, :cond_1

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 746
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 705
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 706
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 750
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 753
    :cond_0
    const/4 v0, 0x1

    .line 756
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
    .line 760
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 763
    :cond_0
    const/4 v0, 0x1

    .line 766
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onShow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 532
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    .line 533
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideAnimation()V

    .line 534
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->resetPressedButtons()V

    .line 535
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startHideMenuTimer()V

    .line 537
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAutoHiding:Z

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 541
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/16 v2, 0x20

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 330
    const-string v0, "CamcorderSideMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch : mActivityContext is null - MotionEvent["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .line 385
    :goto_0
    return v0

    .line 334
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHidingSideMenu:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 335
    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->stopHideMenuTimer()V

    .line 339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 385
    goto :goto_0

    .line 341
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_4

    .line 342
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 344
    :cond_2
    invoke-virtual {p1, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 355
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    goto :goto_2

    .line 358
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CamcorderSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 359
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 361
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 362
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 365
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 371
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_7

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_6

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 376
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    .line 379
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public resetPressedButtons()V
    .locals 1

    .prologue
    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 546
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 548
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showReviewButton()V

    .line 584
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showShutterButton()V

    .line 587
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showLeftSideMenu()V

    .line 588
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showTrayButton()V

    .line 590
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 600
    :goto_0
    return-void

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 596
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->showLeftSideMenu()V

    .line 597
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSideMenu;->startShowAnimation()V

    .line 599
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "mAnimationEnabled"

    .prologue
    .line 713
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mAnimationEnabled:Z

    .line 714
    return-void
.end method

.method public setButtonLocked()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 555
    :cond_0
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 2

    .prologue
    .line 558
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 559
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 560
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 562
    :cond_0
    return-void
.end method

.method public setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 721
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 722
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public stopHideMenuTimer()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 710
    return-void
.end method

.method public updateBackgroundTransparency()V
    .locals 2

    .prologue
    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 524
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 529
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->leftOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CamcorderSideMenu;->rightOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    goto :goto_0
.end method
