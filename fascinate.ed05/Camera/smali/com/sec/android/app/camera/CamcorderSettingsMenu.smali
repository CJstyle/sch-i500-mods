.class public Lcom/sec/android/app/camera/CamcorderSettingsMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "CamcorderSettingsMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;
.implements Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;
.implements Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final CAMCORDER_ADJUST:I = 0x10

.field public static final CAMCORDER_AUTOCONTRAST:I = 0xe

.field public static final CAMCORDER_EFFECT:I = 0xd

.field public static final CAMCORDER_OUTDOOR_VISIBILITY:I = 0x17

.field public static final CAMCORDER_QUALITY:I = 0xf

.field public static final CAMCORDER_RESET:I = 0x11

.field public static final CAMCORDER_RESOLUTION:I = 0xa

.field public static final CAMCORDER_SETUP_REVIEW:I = 0x16

.field public static final CAMCORDER_TIMER:I = 0xb

.field public static final CAMCORDER_WB:I = 0xc

.field public static final SETUP_AUDIORECORDING:I = 0x14

.field public static final SETUP_GUIDELINE:I = 0x13

.field public static final SETUP_STORAGE:I = 0x15


# instance fields
.field mBackButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

.field mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

.field mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

.field private mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

.field private mMenuItemMap:Ljava/util/Map;
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
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;I)V
    .locals 7
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "camcorderSettingsMenuResourceData"
    .parameter "zOrder"

    .prologue
    .line 82
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    .line 84
    invoke-direct {p0, p6}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->init(Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;)V

    .line 85
    return-void
.end method

.method private init(Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;)V
    .locals 2
    .parameter "camcorderSettingsMenuResourceData"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

    .line 97
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->initSettingTab()V

    .line 98
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->initCamcorderSettingList()V

    .line 99
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->initSetupSettingList()V

    .line 100
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonText()V

    .line 101
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->refreashButtonState()V

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0037

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 104
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/CameraSettings;->registerCameraSettingsChangedObserver(Lcom/sec/android/app/camera/CameraSettings$OnCameraSettingsChangedObserver;)V

    .line 105
    return-void
.end method

.method private initCamcorderSettingList()V
    .locals 8

    .prologue
    const/16 v7, 0x71

    const/16 v6, 0x6c

    const/16 v5, 0x6b

    const/16 v4, 0x68

    .line 131
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a003e

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 132
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 135
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x17

    const/16 v3, 0x78

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 142
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 143
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 144
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 145
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0xf

    const/16 v3, 0x6f

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 148
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 149
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 150
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 156
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 157
    const/16 v1, 0x1d

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 158
    const/16 v1, 0x1e

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 159
    const/16 v1, 0x1f

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v7}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 162
    return-void
.end method

.method private initSettingTab()V
    .locals 4

    .prologue
    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSelectButton;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    .line 111
    new-instance v0, Lcom/sec/android/app/camera/MenuTabController;

    invoke-direct {v0}, Lcom/sec/android/app/camera/MenuTabController;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    .line 113
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a003e

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v3, 0x7f0a003f

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v0}, Lcom/sec/android/app/camera/MenuTabController;->addTab(Lcom/sec/android/app/camera/widget/TwSelectButton;Landroid/view/ViewGroup;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/MenuTabController;->setTabVisible(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mTabController:Lcom/sec/android/app/camera/MenuTabController;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/MenuTabController;->setOnMenuTablChangedListener(Lcom/sec/android/app/camera/MenuTabController$OnMenuTabChangedListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0040

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwTickerView;

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    .line 128
    return-void
.end method

.method private initSetupSettingList()V
    .locals 7

    .prologue
    const/16 v6, 0x77

    const/16 v5, 0x16

    const/16 v4, 0x13

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingList;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingsMenuResourceData:Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CamcorderSettingsMenuResourceData;->getResource()Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeParams(Ljava/util/HashMap;Landroid/view/View$OnClickListener;Ljava/util/Map;)V

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 169
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x14

    const/16 v3, 0x76

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v5, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/16 v2, 0x11

    const/16 v3, 0x75

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeList(II)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mHelpTicker:Lcom/sec/android/app/camera/widget/TwTickerView;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/widget/TwSettingList;->setHelpTextView(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    .line 177
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->initializeScroller()V

    .line 178
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 181
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    .line 182
    .local v0, dimController:Lcom/sec/android/app/camera/MenuDimController;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 183
    const/16 v1, 0x20

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v2, v6}, Lcom/sec/android/app/camera/widget/TwSettingList;->getItemButton(I)Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/MenuDimController;->addButton(ILcom/sec/android/app/camera/widget/TwImageButton;)V

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v1, p0}, Lcom/sec/android/app/camera/widget/TwSettingList;->setOnInvalidatePreviewListener(Lcom/sec/android/app/camera/widget/TwSettingList$OnInvalidatePreviewListener;)V

    .line 195
    return-void
.end method


# virtual methods
.method public OnMenuTabChanged(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 328
    :cond_0
    check-cast p1, Lcom/sec/android/app/camera/widget/TwSettingList;

    .end local p1
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    .line 329
    return-void
.end method

.method public lockResolutionChanging()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    .line 89
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 471
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 473
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 476
    :cond_0
    return v1
.end method

.method public onBack()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderTabButton:Lcom/sec/android/app/camera/widget/TwSelectButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSelectButton;->onClick(Landroid/view/View;)V

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCamcorderSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mSetupSettingList:Lcom/sec/android/app/camera/widget/TwSettingList;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/widget/TwSettingList;->scrollToFirstPage()V

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onInflatedMenuHidden()V

    .line 399
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onBack()V

    .line 400
    return-void
.end method

.method public onCameraSettingsChanged(II)V
    .locals 0
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 372
    sparse-switch p1, :sswitch_data_0

    .line 390
    :goto_0
    return-void

    .line 379
    :sswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    goto :goto_0

    .line 386
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    goto :goto_0

    .line 372
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x16 -> :sswitch_0
        0x68 -> :sswitch_0
        0x6a -> :sswitch_0
        0x6b -> :sswitch_0
        0x6c -> :sswitch_0
        0x6f -> :sswitch_0
        0x76 -> :sswitch_1
        0x77 -> :sswitch_1
        0x78 -> :sswitch_1
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 198
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    if-eqz v3, :cond_0

    .line 199
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mCurrentTab:Lcom/sec/android/app/camera/widget/TwSettingList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/widget/TwSettingList;->onTwSettingListItemHighlighted(Lcom/sec/android/app/camera/widget/TwSettingListItem;)V

    .line 202
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const v4, 0x7f0a003c

    if-ne v3, v4, :cond_2

    .line 203
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 207
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 216
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    if-nez v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030007

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CamcorderResolutionMenu;

    .line 221
    .local v1, menu:Lcom/sec/android/app/camera/CamcorderResolutionMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderResolutionMenu;->showMenu()V

    .line 222
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CamcorderResolutionMenu;->setOnCamcorderResolutionChangedListener(Lcom/sec/android/app/camera/CamcorderResolutionMenu$OnCamcorderResolutionChangedListener;)V

    goto :goto_0

    .line 209
    .end local v1           #menu:Lcom/sec/android/app/camera/CamcorderResolutionMenu;
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030039

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/TimerMenu;

    .line 210
    .local v1, menu:Lcom/sec/android/app/camera/TimerMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/TimerMenu;->showMenu()V

    .line 211
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/TimerMenu;->setOnTimerChangedListener(Lcom/sec/android/app/camera/TimerMenu$OnTimerChangedListener;)V

    goto :goto_0

    .line 227
    .end local v1           #menu:Lcom/sec/android/app/camera/TimerMenu;
    :pswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030040

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/WhiteBalanceMenu;

    .line 229
    .local v1, menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->showMenu()V

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/WhiteBalanceMenu;->setOnWhiteBalanceChangedListener(Lcom/sec/android/app/camera/WhiteBalanceMenu$OnWhiteBalanceChangedListener;)V

    goto :goto_0

    .line 235
    .end local v1           #menu:Lcom/sec/android/app/camera/WhiteBalanceMenu;
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030015

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/EffectMenu;

    .line 236
    .local v1, menu:Lcom/sec/android/app/camera/EffectMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/EffectMenu;->showMenu()V

    .line 237
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/EffectMenu;->setOnEffectChangedListener(Lcom/sec/android/app/camera/EffectMenu$OnEffectChangedListener;)V

    goto :goto_0

    .line 242
    .end local v1           #menu:Lcom/sec/android/app/camera/EffectMenu;
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v3

    if-nez v3, :cond_3

    .line 243
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderAutocontrastChanged(I)V

    .line 247
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 245
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderAutocontrastChanged(I)V

    goto :goto_1

    .line 252
    :pswitch_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030006

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/CamcorderQualityMenu;

    .line 254
    .local v1, menu:Lcom/sec/android/app/camera/CamcorderQualityMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CamcorderQualityMenu;->showMenu()V

    .line 255
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CamcorderQualityMenu;->setOnCamcorderQualityChangedListener(Lcom/sec/android/app/camera/CamcorderQualityMenu$OnCamcorderQualityChangedListener;)V

    goto/16 :goto_0

    .line 260
    .end local v1           #menu:Lcom/sec/android/app/camera/CamcorderQualityMenu;
    :pswitch_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030002

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/AdjustMenu;

    .line 261
    .local v1, menu:Lcom/sec/android/app/camera/AdjustMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/AdjustMenu;->showMenu()V

    .line 262
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V

    .line 263
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V

    .line 264
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V

    goto/16 :goto_0

    .line 269
    .end local v1           #menu:Lcom/sec/android/app/camera/AdjustMenu;
    :pswitch_8
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v3

    if-nez v3, :cond_4

    .line 270
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 274
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    .line 272
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_2

    .line 279
    :pswitch_9
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v0

    .line 280
    .local v0, audioRecording:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-nez v0, :cond_5

    move v4, v6

    :goto_3
    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 282
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_0

    :cond_5
    move v4, v5

    .line 280
    goto :goto_3

    .line 287
    .end local v0           #audioRecording:Z
    :pswitch_a
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuResourceData:Lcom/sec/android/app/camera/MenuResourceData;

    const v4, 0x7f030038

    iget-object v5, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mBaseView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/camera/MenuResourceData;->getMenuByLayoutId(ILandroid/view/ViewGroup;)Lcom/sec/android/app/camera/MenuBase;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/StorageMenu;

    .line 288
    .local v1, menu:Lcom/sec/android/app/camera/StorageMenu;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/StorageMenu;->showMenu()V

    .line 289
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/StorageMenu;->setOnStorageChangedListener(Lcom/sec/android/app/camera/StorageMenu$OnStorageChangedListener;)V

    goto/16 :goto_0

    .line 294
    .end local v1           #menu:Lcom/sec/android/app/camera/StorageMenu;
    :pswitch_b
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 295
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    .line 321
    :goto_4
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 297
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_4

    .line 303
    :pswitch_c
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v2

    .line 304
    .local v2, review:I
    if-nez v2, :cond_7

    .line 305
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    .line 309
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_4

    .line 307
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    goto :goto_5

    .line 314
    .end local v2           #review:I
    :pswitch_d
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->resetToDefaultSettings()V

    goto :goto_4

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_d
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method public onInvalidatePreview()V
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    .line 409
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 480
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 498
    :goto_0
    return v0

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 485
    goto :goto_0

    .line 488
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 489
    goto :goto_0

    .line 492
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 495
    goto :goto_0

    :cond_5
    move v0, v2

    .line 498
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 502
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 520
    :goto_0
    return v0

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 507
    goto :goto_0

    .line 510
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 511
    goto :goto_0

    .line 514
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 517
    goto :goto_0

    :cond_5
    move v0, v2

    .line 520
    goto :goto_0
.end method

.method protected onShow()V
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getMenuDimController()Lcom/sec/android/app/camera/MenuDimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/MenuDimController;->synchronizeDim()V

    .line 404
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 405
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 412
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v5

    .line 467
    :goto_0
    return v3

    .line 415
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 416
    .local v1, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->getButton()Lcom/sec/android/app/camera/widget/TwImageButton;

    move-result-object v3

    iget-boolean v3, v3, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v3, :cond_2

    move v3, v5

    .line 417
    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v3, v5

    .line 467
    goto :goto_0

    .line 421
    :sswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v2

    .line 422
    .local v2, review:I
    if-nez v2, :cond_3

    .line 423
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    .line 427
    :goto_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 425
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onReviewChanged(I)V

    goto :goto_2

    .line 431
    .end local v2           #review:I
    :sswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v3

    if-nez v3, :cond_4

    .line 432
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderAutocontrastChanged(I)V

    .line 436
    :goto_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    .line 434
    :cond_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onCamcorderAutocontrastChanged(I)V

    goto :goto_3

    .line 440
    :sswitch_2
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v0

    .line 441
    .local v0, audioRecording:Z
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    if-nez v0, :cond_5

    move v4, v5

    :goto_4
    invoke-virtual {v3, v4}, Lcom/sec/android/app/camera/CameraSettings;->setCamcorderAudioRecording(Z)V

    .line 443
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto :goto_1

    :cond_5
    move v4, v6

    .line 441
    goto :goto_4

    .line 447
    .end local v0           #audioRecording:Z
    :sswitch_3
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 448
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_1

    .line 450
    :cond_6
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onOutdoorVisibility(I)V

    goto :goto_1

    .line 455
    :sswitch_4
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v3

    if-nez v3, :cond_7

    .line 456
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    .line 460
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->invalidatePreview()V

    goto/16 :goto_1

    .line 458
    :cond_7
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onGuidelineChanged(I)V

    goto :goto_5

    .line 419
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_4
        0x6e -> :sswitch_1
        0x76 -> :sswitch_2
        0x77 -> :sswitch_0
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method protected refreashButtonState()V
    .locals 2

    .prologue
    .line 351
    const/16 v0, 0x78

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    .line 353
    const/16 v0, 0x13

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getGuideline()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    .line 354
    const/16 v0, 0x77

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderReview()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonState(II)V

    .line 355
    return-void
.end method

.method protected refreashButtonText()V
    .locals 4

    .prologue
    const/16 v3, 0x75

    const/16 v2, 0x71

    .line 337
    const/16 v0, 0x68

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 338
    const/16 v0, 0x6b

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 339
    const/16 v0, 0x6c

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 340
    const/16 v0, 0x6f

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 345
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 346
    invoke-virtual {p0, v3, v3}, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->updateButtonText(II)V

    .line 347
    return-void
.end method

.method public unlockResolutionChanging()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mResolutionChangingLocked:Z

    .line 93
    return-void
.end method

.method public updateButtonState(II)V
    .locals 4
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 364
    const/4 v1, 0x0

    .line 365
    .local v1, press:Z
    if-nez p2, :cond_0

    .line 366
    const/4 v1, 0x1

    .line 367
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    .line 368
    .local v0, item:Lcom/sec/android/app/camera/widget/TwSettingListItem;
    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setRadioButtonState(Z)V

    .line 369
    return-void
.end method

.method public updateButtonText(II)V
    .locals 2
    .parameter "menu"
    .parameter "mode"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderSettingsMenu;->mMenuItemMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/widget/TwSettingListItem;

    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwSettingListItem;->setButtonText(I)V

    .line 361
    :cond_0
    return-void
.end method
