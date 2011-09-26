.class public Lcom/sec/android/app/camera/CameraSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CameraSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;
.implements Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;


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

    .line 219
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 223
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 224
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
    .locals 9

    .prologue
    const/16 v8, 0x1e

    const/16 v7, 0x15

    const/16 v6, 0x14

    const/16 v5, 0x13

    const/16 v4, 0x11

    .line 227
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a0059

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 228
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingsMenuResourceData:Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 229
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 230
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x18

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 232
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x1a

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 238
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v8, v8}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 240
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 241
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 242
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 246
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0x16

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 247
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 259
    const/16 v1, 0x21

    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 262
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 263
    return-void
.end method


# virtual methods
.method public OnMenuTabChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 487
    :cond_0
    check-cast p1, Lcom/sec/android/app/camera/widget/TwSettingList;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 488
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

    .line 738
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 743
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->onClick(Landroid/view/View;)V

    .line 620
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCameraSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 621
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 622
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 624
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 625
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 1
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 566
    packed-switch p1, :pswitch_data_0

    .line 601
    :goto_0
    :pswitch_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 608
    :cond_0
    const/16 v0, 0x11

    if-ne p1, v0, :cond_1

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 615
    :cond_1
    return-void

    .line 577
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 585
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    goto :goto_0

    .line 589
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    goto :goto_0

    .line 594
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 566
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
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
        :pswitch_3
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
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 266
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 269
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a003c

    if-ne v1, v2, :cond_2

    .line 270
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 481
    :cond_1
    :goto_0
    return-void

    .line 274
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 284
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 285
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001a

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FocusModeMenu;

    .line 286
    .local v0, menu:Lcom/sec/android/app/camera/FocusModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FocusModeMenu;->showMenu()V

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FocusModeMenu;->setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V

    goto :goto_0

    .line 289
    .end local v0           #menu:Lcom/sec/android/app/camera/FocusModeMenu;
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03001b

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/FocusModeContinuousMenu;

    .line 290
    .local v0, menu:Lcom/sec/android/app/camera/FocusModeContinuousMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->showMenu()V

    .line 291
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/FocusModeContinuousMenu;->setOnFocusModeChangedListener(Lcom/sec/android/app/camera/FocusModeMenu$OnFocusModeChangedListener;)V

    goto :goto_0

    .line 298
    .end local v0           #menu:Lcom/sec/android/app/camera/FocusModeContinuousMenu;
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03002f

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/SceneModeMenu;

    .line 299
    .local v0, menu:Lcom/sec/android/app/camera/SceneModeMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/SceneModeMenu;->showMenu()V

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/SceneModeMenu;->setOnSceneModeChangedListener(Lcom/sec/android/app/camera/SceneModeMenu$OnSceneModeChangedListener;)V

    goto :goto_0

    .line 305
    .end local v0           #menu:Lcom/sec/android/app/camera/SceneModeMenu;
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030039

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/TimerMenu;

    .line 306
    .local v0, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 307
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    goto :goto_0

    .line 312
    .end local v0           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :pswitch_4
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mResolutionChangingLocked:Z

    if-nez v1, :cond_1

    .line 316
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000d

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraResolutionMenu;

    .line 318
    .local v0, menu:Lcom/sec/android/app/camera/CameraResolutionMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraResolutionMenu;->showMenu()V

    .line 319
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraResolutionMenu;->setOnCameraResolutionChangedListener(Lcom/sec/android/app/camera/CameraResolutionMenu$OnCameraResolutionChangedListener;)V

    goto/16 :goto_0

    .line 324
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraResolutionMenu;
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030040

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/WhiteBalanceMenu;

    .line 326
    .local v0, menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->showMenu()V

    .line 327
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setOnWhiteBalanceChangedListener(Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;)V

    goto/16 :goto_0

    .line 332
    .end local v0           #menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    :pswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030015

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/EffectMenu;

    .line 333
    .local v0, menu:Lcom/sec/android/app/camera/EffectMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/EffectMenu;->showMenu()V

    .line 334
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/EffectMenu;->setOnEffectChangedListener(Lcom/sec/android/app/camera/EffectMenu$OnEffectChangedListener;)V

    goto/16 :goto_0

    .line 339
    .end local v0           #menu:Lcom/sec/android/app/camera/EffectMenu;
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030021

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ISOMenu;

    .line 340
    .local v0, menu:Lcom/sec/android/app/camera/ISOMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ISOMenu;->showMenu()V

    .line 341
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ISOMenu;->setOnISOChangedListener(Lcom/sec/android/app/camera/ISOMenu$OnISOChangedListener;)V

    goto/16 :goto_0

    .line 346
    .end local v0           #menu:Lcom/sec/android/app/camera/ISOMenu;
    :pswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030017

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ExposuremeterMenu;

    .line 348
    .local v0, menu:Lcom/sec/android/app/camera/ExposuremeterMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ExposuremeterMenu;->showMenu()V

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ExposuremeterMenu;->setOnExposuremeterChangedListener(Lcom/sec/android/app/camera/ExposuremeterMenu$OnExposuremeterChangedListener;)V

    goto/16 :goto_0

    .line 354
    .end local v0           #menu:Lcom/sec/android/app/camera/ExposuremeterMenu;
    :pswitch_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v1

    if-nez v1, :cond_4

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto/16 :goto_0

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto/16 :goto_0

    .line 363
    :pswitch_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    if-nez v1, :cond_5

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto/16 :goto_0

    .line 366
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto/16 :goto_0

    .line 372
    :pswitch_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    if-nez v1, :cond_6

    .line 373
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto/16 :goto_0

    .line 375
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto/16 :goto_0

    .line 380
    :pswitch_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    if-nez v1, :cond_7

    .line 381
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto/16 :goto_0

    .line 383
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto/16 :goto_0

    .line 389
    :pswitch_d
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f03000c

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/CameraQualityMenu;

    .line 391
    .local v0, menu:Lcom/sec/android/app/camera/CameraQualityMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraQualityMenu;->showMenu()V

    .line 392
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraQualityMenu;->setOnCameraQualityChangedListener(Lcom/sec/android/app/camera/CameraQualityMenu$OnCameraQualityChangedListener;)V

    goto/16 :goto_0

    .line 397
    .end local v0           #menu:Lcom/sec/android/app/camera/CameraQualityMenu;
    :pswitch_e
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    if-nez v1, :cond_8

    .line 398
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 402
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 400
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_1

    .line 412
    :pswitch_f
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    .line 417
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 415
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    goto :goto_2

    .line 423
    :pswitch_10
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    if-nez v1, :cond_a

    .line 424
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    .line 428
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 426
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    goto :goto_3

    .line 434
    :pswitch_11
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eq v1, v3, :cond_b

    .line 435
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030034

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterSoundMenu;

    .line 437
    .local v0, menu:Lcom/sec/android/app/camera/ShutterSoundMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterSoundMenu;->showMenu()V

    .line 438
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundMenu;->setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V

    goto/16 :goto_0

    .line 440
    .end local v0           #menu:Lcom/sec/android/app/camera/ShutterSoundMenu;
    :cond_b
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030035

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;

    .line 442
    .local v0, menu:Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->showMenu()V

    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;->setOnShutterSoundChangedListener(Lcom/sec/android/app/camera/ShutterSoundMenu$OnShutterSoundChangedListener;)V

    goto/16 :goto_0

    .line 449
    .end local v0           #menu:Lcom/sec/android/app/camera/ShutterSoundContinuousMenu;
    :pswitch_12
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030038

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/StorageMenu;

    .line 450
    .local v0, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/StorageMenu;->showMenu()V

    .line 451
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/StorageMenu;->setOnStorageChangedListener(Lcom/sec/android/app/camera/StorageMenu$OnStorageChangedListener;)V

    goto/16 :goto_0

    .line 456
    .end local v0           #menu:Lcom/sec/android/app/camera/StorageMenu;
    :pswitch_13
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v2, 0x7f030002

    iget-object v3, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/AdjustMenu;

    .line 457
    .local v0, menu:Lcom/sec/android/app/camera/AdjustMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/AdjustMenu;->showMenu()V

    .line 458
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V

    .line 459
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V

    .line 460
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V

    goto/16 :goto_0

    .line 465
    .end local v0           #menu:Lcom/sec/android/app/camera/AdjustMenu;
    :pswitch_14
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    .line 480
    :goto_4
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 469
    :pswitch_15
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    if-nez v1, :cond_c

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_4

    .line 472
    :cond_c
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_4

    .line 274
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
        :pswitch_13
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_2
        :pswitch_15
    .end packed-switch
.end method

.method public onInvalidatePreview()V
    .locals 1

    .prologue
    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 634
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 747
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 765
    :goto_0
    return v0

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 752
    goto :goto_0

    .line 755
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 756
    goto :goto_0

    .line 759
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 762
    goto :goto_0

    :cond_5
    move v0, v2

    .line 765
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 769
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 787
    :goto_0
    return v0

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 774
    goto :goto_0

    .line 777
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 778
    goto :goto_0

    .line 781
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 784
    goto :goto_0

    :cond_5
    move v0, v2

    .line 787
    goto :goto_0
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 629
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 630
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 637
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v3

    .line 734
    :goto_0
    return v1

    .line 640
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 641
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    iget-boolean v1, v1, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v1, :cond_2

    move v1, v3

    .line 642
    goto :goto_0

    .line 644
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

    .line 734
    goto :goto_0

    .line 657
    :sswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getObjecttracking()I

    move-result v1

    if-nez v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto :goto_1

    .line 660
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onObjecttrackingChanged(I)V

    goto :goto_1

    .line 666
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    if-nez v1, :cond_4

    .line 667
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto :goto_1

    .line 669
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onAntishakeChanged(I)V

    goto :goto_1

    .line 675
    :sswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    if-nez v1, :cond_5

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto :goto_1

    .line 678
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCameraAutocontrastChanged(I)V

    goto :goto_1

    .line 683
    :sswitch_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    if-nez v1, :cond_6

    .line 684
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto :goto_1

    .line 686
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onBlinkdetectionChanged(I)V

    goto :goto_1

    .line 691
    :sswitch_5
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    if-nez v1, :cond_7

    .line 692
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_1

    .line 694
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_1

    .line 699
    :sswitch_6
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    if-nez v1, :cond_8

    .line 700
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 704
    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 702
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_2

    .line 709
    :sswitch_7
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    if-nez v1, :cond_9

    .line 710
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    .line 714
    :goto_3
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 712
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    goto :goto_3

    .line 721
    :sswitch_8
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    if-nez v1, :cond_a

    .line 722
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    .line 726
    :goto_4
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 724
    :cond_a
    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGpsChanged(I)V

    goto :goto_4

    .line 644
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xc -> :sswitch_1
        0xd -> :sswitch_2
        0xe -> :sswitch_3
        0xf -> :sswitch_4
        0x11 -> :sswitch_7
        0x13 -> :sswitch_6
        0x14 -> :sswitch_8
        0x23 -> :sswitch_5
    .end sparse-switch
.end method

.method protected refreashButtonState()V
    .locals 2

    .prologue
    .line 520
    const/16 v0, 0x23

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraOutdoorVisibility()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 531
    const/16 v0, 0xd

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAntishake()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 534
    const/16 v0, 0xe

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraAutocontrast()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 538
    const/16 v0, 0xf

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getBlinkdetection()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 542
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 544
    const/16 v0, 0x14

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGps()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 547
    const/16 v0, 0x11

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getReview()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonState(II)V

    .line 549
    return-void
.end method

.method protected refreashButtonText()V
    .locals 4

    .prologue
    const/16 v3, 0x1e

    const/16 v2, 0x17

    .line 492
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getFocusMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 495
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getSceneMode()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 501
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraResolution()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 502
    const/16 v0, 0x9

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraWB()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 503
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 504
    const/16 v0, 0xa

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getISO()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 505
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeter()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 506
    const/16 v0, 0x10

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraQuality()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 510
    const/16 v0, 0x15

    iget-object v1, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShutterSound()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 514
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 515
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/CameraSettingsMenu;->updateButtonText(II)V

    .line 516
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
    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, press:Z
    if-nez p2, :cond_0

    .line 560
    const/4 v1, 0x1

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 562
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setRadioButtonState(Z)V

    .line 563
    return-void
.end method

.method public updateButtonText(II)V
    .locals 2
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 552
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/sec/android/app/camera/CameraSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setButtonText(I)V

    .line 555
    :cond_0
    return-void
.end method
