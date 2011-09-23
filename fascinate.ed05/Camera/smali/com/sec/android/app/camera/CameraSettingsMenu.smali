.class public Lcom/sec/android/app/camera/CameraSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CAMERA_ADJUST:I = 0x16

.field public static final CAMERA_ANTISHAKE:I = 0x12

.field public static final CAMERA_AUTOCONTRAST:I = 0x13

.field public static final CAMERA_BLINKDETECTION:I = 0x14

.field public static final CAMERA_EFFECT:I = 0xe

.field public static final CAMERA_EXPOSUREMETER:I = 0x10

.field public static final CAMERA_FOCUS:I = 0xa

.field public static final CAMERA_ISO:I = 0xf

.field public static final CAMERA_OBJECTTRACKING:I = 0x11

.field public static final CAMERA_OUTDOOR_VISIBILITY:I = 0x20

.field public static final CAMERA_QUALITY:I = 0x15

.field public static final CAMERA_RESET:I = 0x1e

.field public static final CAMERA_RESOLUTION:I = 0xc

.field public static final CAMERA_SCENE:I = 0x1f

.field public static final CAMERA_TIMER:I = 0xb

.field public static final CAMERA_WB:I = 0xd

.field public static final SETUP_GPS:I = 0x19

.field public static final SETUP_GUIDELINE:I = 0x17

.field public static final SETUP_REVIEW:I = 0x18

.field public static final SETUP_SHUTTERSOUND:I = 0x1a

.field public static final SETUP_STORAGE:I = 0x1b


# instance fields
.field mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

.field mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

.field mMenuItemMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/widget/TwSettingListItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mOnExposureValueChangedListener:Lcom/sec/android/app/camera/ExposureValueMenu$OnExposureValueChangedListener;

.field private mResolutionChangingLocked:Z

.field mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field mTabController:Lcom/sec/android/app/camera/MenuTabController;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "cameraSettingsMenuResourceData"
    .parameter "zOrder"

    .prologue
    .line 85
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    .line 87
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/CameraSettingsMenu;->init(Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;)V

    .line 88
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;)V
    .locals 2
    .parameter "cameraSettingsMenuResourceData"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    .line 100
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->initSettingTab()V

    .line 101
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->initCameraSettingList()V

    .line 102
    invoke-direct {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->initSetupSettingList()V

    .line 103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonText()V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CameraSettingsMenu;->refreashButtonState()V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0056

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 107
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 108
    return-void
.end method

.method private initCameraSettingList()V
    .locals 9

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x4

    const/16 v4, 0xd

    .line 134
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0058

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 137
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x20

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 139
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x5

    invoke-virtual {v1, v6, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x1f

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x9

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x8

    invoke-virtual {v1, v8, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x12

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x13

    invoke-virtual {v1, v2, v8}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x14

    const/16 v3, 0xf

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x15

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x16

    const/16 v3, 0x17

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 179
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0xc

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 181
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 183
    const/16 v1, 0x11

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 185
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 192
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 198
    const/16 v1, 0x12

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 203
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 208
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v8}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 218
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 222
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 223
    return-void
.end method

.method private initSettingTab()V
    .locals 4

    .prologue
    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0057

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 114
    new-instance v0, Lcom/sec/android/app/camera/MenuTabController;

    invoke-direct {v0}, Lcom/sec/android/app/camera/MenuTabController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    .line 116
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a0058

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a0059

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuTabController;->setTabVisible(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuTabController;->setOnMenuTablChangedListener(Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;)V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a005a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTickerView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    .line 131
    return-void
.end method

.method private initSetupSettingList()V
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/16 v6, 0x15

    const/16 v5, 0x13

    const/16 v4, 0x11

    .line 226
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v7, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 236
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 242
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 243
    const/16 v1, 0x14

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 255
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 259
    return-void
.end method


# virtual methods
.method public OnMenuTabChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 471
    :cond_0
    check-cast p1, Lcom/sec/android/app/camera/widget/TwSettingList;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 472
    return-void
.end method

.method public lockResolutionChanging()V
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    .line 92
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 689
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 694
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 593
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->onClick(Landroid/view/View;)V

    .line 594
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 595
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 598
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 599
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 546
    packed-switch p1, :pswitch_data_0

    .line 575
    :goto_0
    :pswitch_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 579
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 582
    :cond_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 584
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 589
    :cond_1
    return-void

    .line 557
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 565
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    goto :goto_0

    .line 571
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 546
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a003c

    if-ne v1, v2, :cond_2

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 465
    :cond_1
    :goto_0
    return-void

    .line 270
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 280
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 281
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001a

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FocusModeMenu;

    .line 282
    .local v0, menu:Lcom/sec/android/app/camera/FocusModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FocusModeMenu;->showMenu()V

    .line 283
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FocusModeMenu;->setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V

    goto :goto_0

    .line 285
    .end local v0           #menu:Lcom/sec/android/app/camera/FocusModeMenu;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001b

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;

    .line 286
    .local v0, menu:Lcom/sec/android/app/camera/FocusModeContinuousMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->showMenu()V

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V

    goto :goto_0

    .line 294
    .end local v0           #menu:Lcom/sec/android/app/camera/FocusModeContinuousMenu;
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 295
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 296
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    goto :goto_0

    .line 301
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 302
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    goto :goto_0

    .line 308
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    if-nez v1, :cond_1

    .line 312
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraResolutionMenu;

    .line 314
    .local v0, menu:Lcom/sec/android/app/camera/CameraResolutionMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraResolutionMenu;->showMenu()V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraResolutionMenu;->setOnCameraResolutionChangedListener(Lcom/sec/android/app/camera/CameraResolutionMenu$OnCameraResolutionChangedListener;)V

    goto/16 :goto_0

    .line 320
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraResolutionMenu;
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/WhiteBalanceMenu;

    .line 322
    .local v0, menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->showMenu()V

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setOnWhiteBalanceChangedListener(Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;)V

    goto/16 :goto_0

    .line 328
    .end local v0           #menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EffectMenu;

    .line 329
    .local v0, menu:Lcom/sec/android/app/camera/EffectMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EffectMenu;->showMenu()V

    .line 330
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/EffectMenu;->setOnEffectChangedListener(Lcom/sec/android/app/camera/EffectMenu$OnEffectChangedListener;)V

    goto/16 :goto_0

    .line 335
    .end local v0           #menu:Lcom/sec/android/app/camera/EffectMenu;
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030021

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ISOMenu;

    .line 336
    .local v0, menu:Lcom/sec/android/app/camera/ISOMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ISOMenu;->showMenu()V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ISOMenu;->setOnISOChangedListener(Lcom/sec/android/app/camera/ISOMenu$OnISOChangedListener;)V

    goto/16 :goto_0

    .line 342
    .end local v0           #menu:Lcom/sec/android/app/camera/ISOMenu;
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030017

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposuremeterMenu;

    .line 344
    .local v0, menu:Lcom/sec/android/app/camera/ExposuremeterMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposuremeterMenu;->showMenu()V

    .line 345
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposuremeterMenu;->setOnExposuremeterChangedListener(Lcom/sec/android/app/camera/ExposuremeterMenu$OnExposuremeterChangedListener;)V

    goto/16 :goto_0

    .line 350
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposuremeterMenu;
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v1

    if-nez v1, :cond_4

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto/16 :goto_0

    .line 353
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto/16 :goto_0

    .line 359
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    if-nez v1, :cond_5

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto/16 :goto_0

    .line 362
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto/16 :goto_0

    .line 368
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    if-nez v1, :cond_6

    .line 369
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto/16 :goto_0

    .line 371
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto/16 :goto_0

    .line 376
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    if-nez v1, :cond_7

    .line 377
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto/16 :goto_0

    .line 379
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto/16 :goto_0

    .line 385
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000c

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraQualityMenu;

    .line 387
    .local v0, menu:Lcom/sec/android/app/camera/CameraQualityMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraQualityMenu;->showMenu()V

    .line 388
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraQualityMenu;->setOnCameraQualityChangedListener(Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;)V

    goto/16 :goto_0

    .line 393
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraQualityMenu;
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    if-nez v1, :cond_8

    .line 394
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 398
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 396
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_1

    .line 404
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030029

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ReviewMenu;

    .line 405
    .local v0, menu:Lcom/sec/android/app/camera/ReviewMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ReviewMenu;->showMenu()V

    .line 406
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ReviewMenu;->setOnReviewChangedListener(Lcom/sec/android/app/camera/ReviewMenu$OnReviewChangedListener;)V

    goto/16 :goto_0

    .line 418
    .end local v0           #menu:Lcom/sec/android/app/camera/ReviewMenu;
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 419
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030034

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterSoundMenu;

    .line 421
    .local v0, menu:Lcom/sec/android/app/camera/ShutterSoundMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterSoundMenu;->showMenu()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundMenu;->setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V

    goto/16 :goto_0

    .line 424
    .end local v0           #menu:Lcom/sec/android/app/camera/ShutterSoundMenu;
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030035

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;

    .line 426
    .local v0, menu:Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->showMenu()V

    .line 427
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V

    goto/16 :goto_0

    .line 433
    .end local v0           #menu:Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StorageMenu;

    .line 434
    .local v0, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StorageMenu;->showMenu()V

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/StorageMenu;->setOnStorageChangedListener(Lcom/sec/android/app/camera/StorageMenu$OnStorageChangedListener;)V

    goto/16 :goto_0

    .line 440
    .end local v0           #menu:Lcom/sec/android/app/camera/StorageMenu;
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AdjustMenu;

    .line 441
    .local v0, menu:Lcom/sec/android/app/camera/AdjustMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AdjustMenu;->showMenu()V

    .line 442
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V

    .line 444
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V

    goto/16 :goto_0

    .line 449
    .end local v0           #menu:Lcom/sec/android/app/camera/AdjustMenu;
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    .line 464
    :goto_2
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 453
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    if-nez v1, :cond_a

    .line 454
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_2

    .line 456
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_2

    .line 270
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_12
        :pswitch_e
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_13
        :pswitch_2
        :pswitch_14
    .end packed-switch
.end method

.method public onInvalidatePreview()V
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 608
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 698
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 716
    :goto_0
    return v0

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 703
    goto :goto_0

    .line 706
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 707
    goto :goto_0

    .line 710
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 713
    goto :goto_0

    :cond_5
    move v0, v2

    .line 716
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 720
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 738
    :goto_0
    return v0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 725
    goto :goto_0

    .line 728
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 729
    goto :goto_0

    .line 732
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 735
    goto :goto_0

    :cond_5
    move v0, v2

    .line 738
    goto :goto_0
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 603
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 604
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 611
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 685
    :goto_0
    return v1

    .line 614
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 615
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v1, :cond_2

    move v1, v3

    .line 616
    goto :goto_0

    .line 618
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_1
    :sswitch_0
    move v1, v3

    .line 685
    goto :goto_0

    .line 631
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v1

    if-nez v1, :cond_3

    .line 632
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto :goto_1

    .line 634
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto :goto_1

    .line 640
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    if-nez v1, :cond_4

    .line 641
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto :goto_1

    .line 643
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto :goto_1

    .line 649
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    if-nez v1, :cond_5

    .line 650
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto :goto_1

    .line 652
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto :goto_1

    .line 657
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    if-nez v1, :cond_6

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto :goto_1

    .line 660
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto :goto_1

    .line 665
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 666
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_1

    .line 668
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_1

    .line 673
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    if-nez v1, :cond_8

    .line 674
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 678
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 676
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_2

    .line 618
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x13 -> :sswitch_6
        0x23 -> :sswitch_5
    .end sparse-switch
.end method

.method protected refreashButtonState()V
    .locals 2

    .prologue
    .line 504
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 515
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 518
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 522
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 525
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 529
    return-void
.end method

.method protected refreashButtonText()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/16 v2, 0x17

    .line 476
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 479
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 485
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 486
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 487
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 488
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 489
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 490
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 492
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 494
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 498
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 499
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 500
    return-void
.end method

.method public unlockResolutionChanging()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    .line 96
    return-void
.end method

.method public updateButtonState(II)V
    .locals 4
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 538
    const/4 v1, 0x0

    .line 539
    .local v1, press:Z
    if-nez p2, :cond_0

    .line 540
    const/4 v1, 0x1

    .line 541
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 542
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setRadioButtonState(Z)V

    .line 543
    return-void
.end method

.method public updateButtonText(II)V
    .locals 2
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 532
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setButtonText(I)V

    .line 535
    :cond_0
    return-void
.end method
