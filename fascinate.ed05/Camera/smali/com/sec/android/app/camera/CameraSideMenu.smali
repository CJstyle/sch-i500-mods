.class public Lcom/sec/android/app/camera/CameraSideMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraSideMenu.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;


# static fields
.field private static final HIDE_MENU_TIMEOUT:I = 0x1388

.field protected static final TAG:Ljava/lang/String; = "CameraSideMenu"


# instance fields
.field private leftOpaqueBackground:I

.field private leftTransparentBackground:I

.field private mAnimDelay:I

.field private mAnimDelta:I

.field mAnimHandler:Landroid/os/Handler;

.field private mAnimInProgress:Z

.field private mAnimationEnabled:Z

.field private mAutoHiding:Z

.field private mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

.field private mContinousProgressing:Z

.field mHideAnimRunnable:Ljava/lang/Runnable;

.field private mHideMenuTimeoutHandler:Landroid/os/Handler;

.field private mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

.field private mHidingSideMenu:Z

.field private mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field private mLeftSideMenuVisible:Z

.field private mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

.field private mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

.field mShowAnimRunnable:Ljava/lang/Runnable;

.field private mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private rightOpaqueBackground:I

.field private rightTransparentBackground:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;ILcom/sec/android/app/camera/CameraSideMenuResourceData;)V
    .locals 8
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"
    .parameter "cameraSideMenuResourceData"

    .prologue
    .line 164
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;IZ)V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenuVisible:Z

    .line 56
    const/4 v0, 0x5

    iput v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 62
    const/16 v0, 0x14

    iput v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$1;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    .line 98
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$2;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    .line 151
    new-instance v0, Lcom/sec/android/app/camera/CameraSideMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CameraSideMenu$3;-><init>(Lcom/sec/android/app/camera/CameraSideMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    .line 166
    iput-object p7, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CameraSideMenu;->setTouchHandled(Z)V

    .line 168
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->init()V

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CameraSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelta:I

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->showLeftSideMenu()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CameraSideMenu;)Lcom/sec/android/app/camera/widget/TwSideMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CameraSideMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CameraSideMenu;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftSideMenu()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideTrayButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopShowAnimation()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->showTrayButton()V

    return-void
.end method

.method private hideLeftSideMenu()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setVisibility(I)V

    .line 699
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenuVisible:Z

    .line 701
    :cond_0
    return-void
.end method

.method private hideTrayButton()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 707
    :cond_0
    return-void
.end method

.method private init()V
    .locals 14

    .prologue
    .line 174
    const/4 v5, 0x0

    .line 175
    .local v5, modeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v7, 0x0

    .line 176
    .local v7, sceneButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v8, 0x0

    .line 177
    .local v8, shootingModeButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v1, 0x0

    .line 178
    .local v1, exposureValueButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v3, 0x0

    .line 179
    .local v3, imageViewerButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v9, 0x0

    .line 180
    .local v9, timerButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    const/4 v2, 0x0

    .line 182
    .local v2, flashButton:Lcom/sec/android/app/camera/widget/TwImageButton;
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005d

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 183
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005e

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSideMenu;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    .line 185
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v11, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v10, v11, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 186
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget-object v11, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v11}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v10, v11, p0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->initSideMenu(Ljava/util/HashMap;Landroid/view/View$OnTouchListener;)V

    .line 188
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a0060

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 190
    .local v4, lPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a0061

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;

    .line 193
    .local v6, rPopups:Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 194
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mCameraSideMenuResourceData:Lcom/sec/android/app/camera/CameraSideMenuResourceData;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/CameraSideMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->initResources(Ljava/util/HashMap;)V

    .line 238
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 241
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-virtual {v4, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 243
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x3

    iget-object v12, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v12}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/sec/android/app/camera/CameraSettings;->getCameraFlashMode()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 249
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x7

    const/4 v12, 0x7

    invoke-virtual {v4, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 253
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x6

    const/4 v12, 0x6

    invoke-virtual {v4, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 255
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1b

    const/16 v12, 0x1b

    invoke-virtual {v4, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 257
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x1b

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBottomButton(I)V

    .line 258
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addPopupText(I)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 260
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x20

    const/16 v12, 0x20

    const/4 v13, 0x2

    invoke-virtual {v6, v12, v13}, Lcom/sec/android/app/camera/widget/TwSideMenuPopupTextLayout;->addEmptyPopupText(II)Landroid/widget/LinearLayout;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/camera/widget/TwSideMenu;->addSideMenuButton(ILandroid/widget/LinearLayout;)V

    .line 266
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v5

    .line 268
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x3

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    .line 271
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v8

    .line 272
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x7

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    .line 274
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v11, 0x6

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v9

    .line 276
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/widget/TwSideMenu;->getSideMenuButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v10

    iput-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 279
    const v10, 0x7f020089

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftTransparentBackground:I

    .line 280
    const v10, 0x7f020088

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftOpaqueBackground:I

    .line 286
    const v10, 0x7f0201d7

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightTransparentBackground:I

    .line 287
    const v10, 0x7f0201d6

    iput v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightOpaqueBackground:I

    .line 291
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v11, 0x7f0a005f

    invoke-virtual {v10, v11}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwImageButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 292
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v10, p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v10, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v10}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 299
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/4 v10, 0x0

    invoke-virtual {v0, v10, v5}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 301
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 304
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v8}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 306
    const/16 v10, 0x13

    invoke-virtual {v0, v10, v9}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 308
    const/16 v10, 0xf

    invoke-virtual {v0, v10, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 309
    const/16 v10, 0x17

    invoke-virtual {v0, v10, v3}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 310
    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 312
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->updateBackgroundTransparency()V

    .line 313
    return-void
.end method

.method private showLeftSideMenu()V
    .locals 2

    .prologue
    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setVisibility(I)V

    .line 644
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenuVisible:Z

    .line 646
    :cond_0
    return-void
.end method

.method private showTrayButton()V
    .locals 2

    .prologue
    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 651
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 652
    :cond_0
    return-void
.end method

.method private startHideAnimation()V
    .locals 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 764
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 765
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 766
    return-void
.end method

.method private startHideMenuTimer()V
    .locals 4

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 778
    return-void
.end method

.method private startShowAnimation()V
    .locals 4

    .prologue
    .line 688
    const-string v0, "CameraSideMenu"

    const-string v1, "startShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 691
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 692
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    iget v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    return-void
.end method

.method private stopHideAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 752
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 759
    :goto_0
    return-void

    .line 755
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 756
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 758
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method

.method private stopShowAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 675
    const-string v0, "CameraSideMenu"

    const-string v1, "stopShowAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 678
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    if-nez v0, :cond_1

    .line 685
    :goto_0
    return-void

    .line 681
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShowAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 684
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CameraSideMenu;->setAnimationEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideAnimRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 318
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 319
    return-void
.end method

.method public getAnimationEnabled()Z
    .locals 1

    .prologue
    .line 795
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    return v0
.end method

.method public getOverLappingMenu()Lcom/sec/android/app/camera/MenuBase;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    return-object v0
.end method

.method public handleTouchDown(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const-string v1, "CameraSideMenu"

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 407
    :cond_0
    const-string v0, "CameraSideMenu"

    const-string v0, "return isCapturing.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isPreviewStarted()Z

    move-result v0

    if-nez v0, :cond_3

    .line 412
    const-string v0, "CameraSideMenu"

    const-string v0, "return isStartPreview.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 417
    const-string v0, "CameraSideMenu"

    const-string v0, "return getIsLaunchGallery.."

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 421
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 424
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    .line 435
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    .line 436
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    goto :goto_0

    .line 426
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 427
    iput-boolean v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 429
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 424
    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public handleTouchUp(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const v7, 0x7f030019

    const v6, 0x7f030018

    const v4, 0x7f03000e

    const/4 v5, 0x0

    const-string v2, "CameraSideMenu"

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 444
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isCapturing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    const-string v1, "CameraSideMenu"

    const-string v1, "return isCapturing.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isPreviewStarted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 453
    const-string v1, "CameraSideMenu"

    const-string v1, "return isStartPreview.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getIsLaunchGallery()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 458
    const-string v1, "CameraSideMenu"

    const-string v1, "return getIsLaunchGallery.."

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isContinuousShotInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_0

    .line 466
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->isAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setSelected(Z)V

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 472
    :sswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onModechanged()V

    goto :goto_0

    .line 475
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 476
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 478
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onSelfModechanged()V

    .line 479
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 482
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030032

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 483
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 484
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 486
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030032

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShootingModeMenu;

    .line 487
    .local v0, menu:Lcom/sec/android/app/camera/ShootingModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShootingModeMenu;->showMenu()V

    .line 488
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShootingModeMenu;->setOnShootingModeChangedListener(Lcom/sec/android/app/camera/ShootingModeMenu$OnShootingModeChangedListener;)V

    .line 489
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 493
    .end local v0           #menu:Lcom/sec/android/app/camera/ShootingModeMenu;
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f03002f

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 494
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 495
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 497
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 498
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 499
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    .line 500
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 504
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 505
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 506
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 509
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraSettingsMenu;

    .line 510
    .local v0, menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->showMenu()V

    .line 511
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonText()V

    .line 512
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 516
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraSettingsMenu;
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v7, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 517
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 518
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 520
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v7, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FlashModeMenu;

    .line 521
    .local v0, menu:Lcom/sec/android/app/camera/FlashModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FlashModeMenu;->showMenu()V

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FlashModeMenu;->setOnFlashModeChangedListener(Lcom/sec/android/app/camera/FlashModeMenu$OnFlashModeChangedListener;)V

    .line 523
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 527
    .end local v0           #menu:Lcom/sec/android/app/camera/FlashModeMenu;
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v3, 0x7f030039

    iget-object v4, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 528
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 529
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 531
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 532
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 533
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    .line 534
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 538
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 539
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/CameraSideMenu;->setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V

    .line 540
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 542
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposureValueMenu;

    .line 543
    .local v0, menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposureValueMenu;->showMenu()V

    .line 544
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposureValueMenu;->setOnExposureValueChangedListener(Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;)V

    .line 545
    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    goto/16 :goto_0

    .line 549
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposureValueMenu;
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 552
    :sswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v1, Lcom/sec/android/app/camera/Camera;

    const-string v2, "quickview"

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/Camera;->onLaunchGallery(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 553
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->isCaptureEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    .line 554
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 556
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 557
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v1

    if-nez v1, :cond_0

    .line 559
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    goto/16 :goto_0

    .line 565
    :sswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 566
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    goto/16 :goto_0

    .line 470
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x1b -> :sswitch_4
        0x1c -> :sswitch_8
        0x1d -> :sswitch_9
        0x20 -> :sswitch_a
        0x24 -> :sswitch_1
    .end sparse-switch
.end method

.method public hideLeftMenu()V
    .locals 2

    .prologue
    .line 733
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 734
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideChildMenu()V

    .line 735
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideTrayButton()V

    .line 736
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftSideMenu()V

    .line 737
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showTrayButton()V

    .line 747
    :goto_0
    return-void

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 742
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 743
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideAnimation()V

    .line 745
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideChildMenu()V

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideMenu()V
    .locals 2

    .prologue
    .line 709
    const-string v0, "CameraSideMenu"

    const-string v1, "hideMenu"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideReviewButton()V

    .line 713
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 715
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideTrayButton()V

    .line 716
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideLeftSideMenu()V

    .line 728
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->hideShutterButton()V

    .line 722
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showShutterButton()V

    .line 723
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 724
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideAnimation()V

    .line 726
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 727
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mBaseViewId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public hideShutterButton()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method

.method public isAnimationInProgress()Z
    .locals 1

    .prologue
    .line 810
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimInProgress:Z

    return v0
.end method

.method public isInflatedMenuSet()Z
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_0

    .line 804
    const/4 v0, 0x1

    .line 806
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLeftSideMenuVisible()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenuVisible:Z

    return v0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->finish()V

    .line 638
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 575
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 576
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/widget/TwSideMenu;->updateButtonImage(II)V

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 580
    packed-switch p1, :pswitch_data_0

    .line 590
    :goto_0
    return-void

    .line 582
    :pswitch_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonLocked()V

    .line 584
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    goto :goto_0

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->setButtonUnlocked()V

    goto :goto_0

    .line 580
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
    .line 818
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 821
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a005f

    if-ne v0, v1, :cond_1

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideSideMenu()V

    .line 824
    :cond_1
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onHide()V
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 782
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 783
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 784
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 828
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 831
    :cond_0
    const/4 v0, 0x1

    .line 834
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
    .line 838
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x17

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_1

    .line 841
    :cond_0
    const/4 v0, 0x1

    .line 844
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

    .line 604
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    .line 605
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideAnimation()V

    .line 606
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->resetPressedButtons()V

    .line 607
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    if-eqz v0, :cond_0

    .line 608
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startHideMenuTimer()V

    .line 609
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAutoHiding:Z

    .line 612
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 613
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "arg1"

    .prologue
    const/4 v2, 0x1

    const/16 v1, 0x20

    const/4 v3, 0x0

    .line 333
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    if-nez v0, :cond_0

    .line 334
    const-string v0, "CameraSideMenu"

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

    .line 402
    :goto_0
    return v0

    .line 338
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHidingSideMenu:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 339
    goto :goto_0

    .line 341
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->stopHideMenuTimer()V

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v2

    .line 402
    goto :goto_0

    .line 344
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 345
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->hideMenu()V

    .line 357
    :cond_2
    :goto_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchDown(Landroid/view/View;)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 348
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 349
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    goto :goto_2

    .line 361
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_5

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->resetTouchFocus()V

    .line 374
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    goto :goto_3

    .line 377
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_6

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_6

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 383
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    if-eqz v0, :cond_8

    .line 384
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->getVisibility()Z

    move-result v0

    if-nez v0, :cond_7

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuBase;->showMenu()V

    .line 388
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->setSelected(Z)V

    .line 392
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    if-eqz v0, :cond_9

    .line 393
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/CameraSideMenu;->handleTouchUp(Landroid/view/View;)V

    .line 394
    iput-boolean v3, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mContinousProgressing:Z

    .line 396
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 342
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
    .line 616
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 617
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->resetPressedButtons()V

    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 620
    :cond_0
    return-void
.end method

.method public restoreMenu()V
    .locals 1

    .prologue
    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->showReviewButton()V

    .line 656
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    if-nez v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->showShutterButton()V

    .line 659
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->showLeftSideMenu()V

    .line 660
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->showTrayButton()V

    .line 662
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    .line 672
    :goto_0
    return-void

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->hideTrayButton()V

    .line 668
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->showLeftSideMenu()V

    .line 669
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSideMenu;->startShowAnimation()V

    .line 671
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->restoreMenu()V

    goto :goto_0
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .parameter "mAnimationEnabled"

    .prologue
    .line 791
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mAnimationEnabled:Z

    .line 792
    return-void
.end method

.method public setButtonLocked()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 624
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonLocked()V

    .line 625
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 626
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 627
    :cond_0
    return-void
.end method

.method public setButtonUnlocked()V
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setButtonUnlocked()V

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mTrayButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setDisabled(Z)V

    .line 634
    :cond_0
    return-void
.end method

.method public setInflatedMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 799
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mInflatedMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 800
    return-void
.end method

.method public setOverLappingMenu(Lcom/sec/android/app/camera/MenuBase;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 769
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mOverlappingMenu:Lcom/sec/android/app/camera/MenuBase;

    .line 770
    return-void
.end method

.method public showShutterButton()V
    .locals 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mShutterButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setVisibility(I)V

    .line 331
    :cond_0
    return-void
.end method

.method public stopHideMenuTimer()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mHideMenuTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 788
    return-void
.end method

.method public updateBackgroundTransparency()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/CameraResolution;->isWideResolution(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightTransparentBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 600
    :goto_0
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mLeftSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->leftOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    .line 598
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSideMenu;->mRightSideMenu:Lcom/sec/android/app/camera/widget/TwSideMenu;

    iget v1, p0, Lcom/sec/android/app/camera/CameraSideMenu;->rightOpaqueBackground:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSideMenu;->setBackgroundResource(I)V

    goto :goto_0
.end method
