.class public final Lcom/sec/android/app/twlauncher/Launcher;
.super Landroid/app/ActivityGroup;
.source "Launcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/Launcher$SelectiveResetReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;,
        Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;,
        Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;,
        Lcom/sec/android/app/twlauncher/Launcher$TextDialog;,
        Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;,
        Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;,
        Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    }
.end annotation


# static fields
.field static DEFAULT_SCREEN_COUNT:I

.field static NUMBER_CELLS_X:I

.field static NUMBER_CELLS_Y:I

.field static SCREEN_COUNT:I

.field static USE_MAINMENU_CONCENTRATION_EFFECT:Z

.field static USE_MAINMENU_LISTMODE:Z

.field protected static mBootVer:Ljava/lang/String;

.field private static mFirstTime:Z

.field private static mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected static mHwVer:Ljava/lang/String;

.field protected static mIsDefaultIMEI:Z

.field public static mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

.field protected static mPdaVer:Ljava/lang/String;

.field protected static mPhoneVer:Ljava/lang/String;

.field protected static mUART:Ljava/lang/String;

.field protected static mUSB:Ljava/lang/String;

.field static mUninstallPackageName:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sScreen:I


# instance fields
.field private final ACTION_APP_MORECONTENTS:Ljava/lang/String;

.field private final APP_CALLER_HOME:I

.field private final EXT_KEY_APP_CALLER:Ljava/lang/String;

.field private MenuManagerBackKeyDownInfo:Z

.field private final UNINSTALL_COMPLETE:I

.field private mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mAddWidgetType:I

.field private mAnimationScales:[F

.field private mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

.field private mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

.field private mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mBadgeObserver:Landroid/database/ContentObserver;

.field mBlankScreen:[I

.field private final mCellCoordinates:[I

.field private final mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigChange:Z

.field private mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

.field private mDefautHomeScreen:I

.field private mDeleteIndex:I

.field private mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

.field private mDesktopItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDestroyed:Z

.field private mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

.field private mExec:Ljava/util/concurrent/ExecutorService;

.field private mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

.field private mForce16BitWindow:Z

.field private mHandler:Landroid/os/Handler;

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsActive:Z

.field private mIsChangedBadge:Z

.field private mIsDeletePopup:Z

.field private mIsMoveDefaultScreen:Z

.field private mIsNewIntent:Z

.field private mIsOpaqueWindow:Z

.field private mIsScreenOff:Z

.field private mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field private mLocaleChanged:Z

.field private mMainMenuLoading:Z

.field private mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

.field private mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mMenuScreenCount:I

.field private mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

.field private mOpenFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private mParam:I

.field private mPrefs:Landroid/content/SharedPreferences;

.field mProductModelFamilyName:Ljava/lang/String;

.field mProductModelName:Ljava/lang/String;

.field private mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

.field private mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiverContactChanged:Landroid/content/BroadcastReceiver;

.field private mResOrientation:I

.field private mRestoring:Z

.field private mRunBadgeChanged:Ljava/lang/Runnable;

.field private mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

.field private mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSavedState:Landroid/os/Bundle;

.field private final mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

.field private mSpans:[I

.field private mStateQuickNavigation:I

.field private mToast:Landroid/widget/Toast;

.field private mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

.field private mUserFolders:[J

.field private mWaitingForResult:Z

.field private mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

.field private final mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidgetId:I

.field private final mWidgetObserver:Landroid/database/ContentObserver;

.field private mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 174
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 175
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 176
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 177
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 187
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 188
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 231
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 232
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 292
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 350
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    .line 353
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 387
    invoke-direct {p0, v2}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 171
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    .line 235
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 238
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 263
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 266
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 270
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 272
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 273
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 322
    const-string v0, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->ACTION_APP_MORECONTENTS:Ljava/lang/String;

    .line 324
    const-string v0, "KEY_APP_CALLER"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->EXT_KEY_APP_CALLER:Ljava/lang/String;

    .line 325
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->APP_CALLER_HOME:I

    .line 337
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 338
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 339
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 340
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 344
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 345
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 361
    const-string v0, "S1"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 362
    const-string v0, "SCH-I500"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 364
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 366
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOpenFolders:Ljava/util/ArrayList;

    .line 369
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mUserFolders:[J

    .line 378
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$SelectiveResetReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$SelectiveResetReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

    .line 381
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    .line 382
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAnimationScales:[F

    .line 573
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 598
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiverContactChanged:Landroid/content/BroadcastReceiver;

    .line 651
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 4257
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->UNINSTALL_COMPLETE:I

    .line 4263
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$9;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 4582
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4584
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4586
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4587
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4588
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4590
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 4592
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    .line 4803
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$10;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$10;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    .line 4854
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 388
    return-void

    .line 382
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private acceptFilter()Z
    .locals 1

    .prologue
    .line 1098
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1100
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->restoreAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$2000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/twlauncher/Launcher;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 120
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->pickShortcut(II)V

    return-void
.end method

.method static synthetic access$2400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/sec/android/app/twlauncher/Launcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mParam:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$3100(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V

    return-void
.end method

.method static synthetic access$3600(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V

    return-void
.end method

.method static synthetic access$3800(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSelectiveReset2ndAck()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->changeWallpaperToDefault()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 2184
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 2185
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    .line 2416
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2417
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2422
    const-string v2, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2423
    if-eqz v3, :cond_1

    instance-of v2, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v2, :cond_1

    .line 2425
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2426
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2427
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v5

    .line 2429
    iget-object v6, v2, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 2430
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    .line 2436
    :goto_0
    if-nez v2, :cond_0

    .line 2437
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f02003b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object v5, v2

    .line 2440
    :goto_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 2441
    invoke-static {v5, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    iput-object v5, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 2442
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 2443
    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2444
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 2445
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 2446
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 2449
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v7, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2451
    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->id:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2453
    return-object v2

    .line 2431
    :catch_0
    move-exception v2

    move-object v2, v9

    .line 2432
    :goto_2
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not load live folder icon: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    move-object v2, v9

    goto :goto_0

    .line 2431
    :catch_1
    move-exception v5

    goto :goto_2

    :cond_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object v3, v9

    move-object v2, v9

    goto :goto_0
.end method

.method private changeWallpaperToDefault()V
    .locals 9

    .prologue
    const v8, 0x1080173

    .line 545
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 546
    .local v5, mContext:Landroid/content/Context;
    const-string v7, "wallpaper"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/WallpaperManager;

    .line 547
    .local v6, wpm:Landroid/app/WallpaperManager;
    new-instance v2, Ljava/io/File;

    const-string v7, "/system/wallpaper/default_wallpaper/default_wallpaper.jpg"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v2, file:Ljava/io/File;
    const/4 v3, 0x0

    .line 549
    .local v3, is:Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 551
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v3           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v6, v4}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v3, v4

    .line 569
    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 554
    .local v0, e:Ljava/io/IOException;
    :goto_1
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 556
    :try_start_2
    invoke-virtual {v6, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 557
    :catch_1
    move-exception v1

    .line 558
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 562
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #e1:Ljava/io/IOException;
    :cond_0
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 564
    :try_start_3
    invoke-virtual {v6, v3}, Landroid/app/WallpaperManager;->setStream(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 565
    :catch_2
    move-exception v0

    .line 566
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 553
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_3
    move-exception v7

    move-object v0, v7

    move-object v3, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private checkFactoryReset2ndAck()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-string v5, "firstboot"

    .line 5491
    const-string v0, "launcher"

    invoke-virtual {p0, v0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5492
    const-string v1, "firstboot"

    const/4 v1, 0x1

    invoke-interface {v0, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5494
    if-eqz v1, :cond_1

    .line 5496
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5498
    new-instance v1, Ljava/io/File;

    const-string v2, "//data/factory/.selectiveverify"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5499
    new-instance v2, Ljava/io/File;

    const-string v3, "//data/factory/.resetverify"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5502
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5503
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.SELECTIVEACK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5504
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5511
    :cond_0
    :goto_0
    const-string v1, "firstboot"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5512
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5514
    :cond_1
    return-void

    .line 5506
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5507
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.samsungtest.RESETACK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5508
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 9

    .prologue
    .line 668
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V

    .line 669
    .local v2, localeConfiguration:Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 671
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 673
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 674
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 676
    .local v1, locale:Ljava/lang/String;
    iget v6, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 677
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 679
    .local v3, mcc:I
    iget v7, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 680
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 682
    .local v4, mnc:I
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    if-ne v3, v6, :cond_0

    if-eq v4, v7, :cond_2

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    .line 684
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_1

    .line 685
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 686
    iput v3, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 687
    iput v4, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 689
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 690
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/IconCache;->flush()V

    .line 692
    :cond_1
    return-void

    .line 682
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1133
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1134
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1135
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1136
    return-void
.end method

.method private closeDrawer()V
    .locals 1

    .prologue
    .line 2678
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2679
    return-void
.end method

.method private closeDrawer(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 2684
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2685
    if-eqz p1, :cond_2

    .line 2686
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    .line 2690
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2691
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2695
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2696
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2697
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 2699
    :cond_1
    return-void

    .line 2688
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    goto :goto_0
.end method

.method private closeFolder()V
    .locals 2

    .prologue
    .line 2702
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 2703
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_0

    .line 2704
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 2706
    :cond_0
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 1501
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1502
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 1503
    return-void
.end method

.method private completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 1428
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1432
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 1436
    iget v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1437
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1440
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1441
    iget v1, v9, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v2, v9, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v0

    .line 1444
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 1445
    aget v1, v0, v7

    aget v2, v0, v11

    invoke-direct {p0, p2, v10, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1446
    iput v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 1447
    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1448
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v2, v0, v7

    aput v2, v1, v7

    .line 1449
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v0, v0, v11

    aput v0, v1, v11

    .line 1451
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 1452
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1453
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1491
    :cond_1
    :goto_0
    return-void

    .line 1456
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 1457
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v0, v1, :cond_4

    .line 1458
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    .line 1461
    :goto_1
    invoke-direct {p0, v4, v0}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(II)V

    goto :goto_0

    .line 1467
    :cond_3
    new-instance v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v1, v8}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1468
    aget v2, v0, v7

    iput v2, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    .line 1469
    aget v0, v0, v11

    iput v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    .line 1471
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v10, v7

    aget v6, v10, v11

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1475
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_1

    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1479
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0, p0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1481
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1482
    iget-object v0, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1484
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v8, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v2, v10, v7

    aget v3, v10, v11

    iget v4, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    iget v5, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move-object v1, v8

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_1
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 2397
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2398
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2411
    :cond_0
    :goto_0
    return-void

    .line 2400
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v1

    .line 2402
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    .line 2403
    const v2, 0x7f03000d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    .line 2405
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v3, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 1402
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1403
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1418
    :cond_0
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    .line 1407
    .local v0, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v0, p2, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0
.end method

.method private completePreviewAppWidget()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1538
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 1539
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1558
    :goto_0
    return-void

    .line 1542
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 1544
    .local v9, xy:[I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1546
    .local v1, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1548
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v8

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1552
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    aget v4, v9, v7

    aget v5, v9, v8

    iget v6, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    iget v7, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method private createBlankPage()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4784
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v0, v4

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eq v0, v3, :cond_1

    :cond_0
    move v0, v3

    .line 4800
    :goto_0
    return v0

    .line 4785
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4786
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    .line 4787
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v0, :cond_2

    .line 4788
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030013

    invoke-virtual {v0, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4789
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4790
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 4792
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;)V

    .line 4794
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v4

    .line 4796
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    move v0, v2

    .line 4798
    goto :goto_0

    :cond_2
    move v0, v3

    .line 4800
    goto :goto_0
.end method

.method private findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z
    .locals 4
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2457
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2458
    .local v0, xy:[I
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2459
    aget v1, v0, v3

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 2460
    aget v1, v0, v2

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v1, v2

    .line 2463
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z
    .locals 6
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 2467
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z

    move-result v0

    return v0
.end method

.method private findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[IIIZ)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2471
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2472
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v1, "launcher.add_occupied_cells"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    .line 2474
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 2475
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2476
    if-nez p5, :cond_1

    move v0, v2

    .line 2481
    :goto_1
    return v0

    .line 2472
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2477
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v0, v2

    .line 2478
    goto :goto_1

    :cond_2
    move v0, v3

    .line 2481
    goto :goto_1
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 747
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 748
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 749
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTypedText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 3156
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    .line 3158
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3160
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3182
    :cond_0
    :goto_0
    return-void

    .line 3163
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 3165
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v1, :cond_2

    .line 3166
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 3168
    .local v0, folderScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 3169
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 3171
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3173
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0

    .line 3177
    .end local v0           #folderScreen:I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3179
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method private isTestMode()Z
    .locals 2

    .prologue
    .line 984
    const-string v0, "gsm.default.esn"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TRUE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTetheringEnabled()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1034
    new-array v0, v4, [B

    .line 1036
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/sec/switch/tethering"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1037
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    .line 1038
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1044
    :goto_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    .line 1045
    const-string v0, "MTP-LAUNCHER"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    const-string v0, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 1049
    :goto_1
    return v0

    .line 1039
    :catch_0
    move-exception v1

    .line 1040
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 1041
    :catch_1
    move-exception v1

    .line 1042
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    move v0, v5

    .line 1049
    goto :goto_1
.end method

.method private launchMtpApp(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "usb_setting_mode"

    const-string v2, "mtp_usb_connection_status"

    const-string v3, "media_player_mode"

    .line 989
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 990
    const-string v1, "mtp_usb_connection_status"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 991
    const-string v0, "Launcher"

    const-string v1, "MTP-LAUNCHER: media scanning not yet finished . "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    const-string v1, "mtp_usb_conditions_met"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 1015
    const-string v1, "mtp_usb_connection_status"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_8

    move v1, v5

    .line 1016
    :goto_1
    const-string v2, "media_player_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_2

    const-string v2, "media_player_mode"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    :cond_2
    move v2, v5

    .line 1017
    :goto_2
    const-string v3, "usb_setting_mode"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v5, :cond_3

    const-string v3, "usb_setting_mode"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_6

    .line 1018
    :cond_3
    const-string v3, "adb_enabled"

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v5

    .line 1021
    :goto_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1023
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isTetheringEnabled()Z

    move-result v0

    if-ne v0, v5, :cond_5

    .line 1024
    const-string v0, "MTP-LAUNCHER"

    const-string v1, "Tethering is enabled. dont launch MTP"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1027
    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1028
    const-string v1, "com.android.MtpApplication"

    const-string v2, "com.android.MtpApplication.MtpApplication"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_6
    move v0, v4

    goto :goto_3

    :cond_7
    move v2, v4

    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_1
.end method

.method private makeBitmapMenuWallpaper()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v8, "x"

    const-string v7, "Launcher"

    const-string v6, ")"

    .line 4922
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 4924
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 4925
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 4927
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2

    .line 4928
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating main menu wallpaper bitmap("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4929
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 4941
    :cond_0
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4942
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4943
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4944
    const/16 v1, 0x99

    invoke-virtual {v0, v1, v4, v4, v4}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 4946
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 4948
    :cond_1
    return-void

    .line 4931
    :cond_2
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 4932
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    if-eqz v0, :cond_4

    .line 4933
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 4935
    :cond_4
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 4936
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-creating main menu wallpaper bitmap("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4937
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_0
.end method

.method private onAppWidgetReset()V
    .locals 2

    .prologue
    .line 2731
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 2736
    :goto_0
    return-void

    .line 2734
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset() : DISCARD widget reset. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBadgeChanged()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v0, "onBadgeChanged() "

    const-string v0, "Launcher"

    .line 2755
    .line 2758
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 2767
    :goto_0
    if-nez v0, :cond_0

    .line 2798
    :goto_1
    return-void

    .line 2759
    :catch_0
    move-exception v0

    .line 2760
    :try_start_1
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v6

    .line 2765
    goto :goto_0

    .line 2761
    :catch_1
    move-exception v0

    .line 2762
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBadgeChanged() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v6

    .line 2765
    goto :goto_0

    .line 2763
    :catchall_0
    move-exception v0

    throw v0

    .line 2769
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2771
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2773
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2774
    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2775
    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 2778
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 2779
    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2781
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/BadgeCache;->setBadgeCount(Landroid/content/ComponentName;I)V

    .line 2783
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2784
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2787
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    .line 2791
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V

    .line 2792
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2794
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateBadgeCount(Ljava/util/List;)V

    .line 2796
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    .line 2797
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateTopfourBadge()V

    goto/16 :goto_1
.end method

.method private openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 8
    .parameter "folderInfo"

    .prologue
    const/4 v3, 0x0

    .line 3194
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_1

    .line 3195
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    .line 3202
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Folder;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 3203
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Folder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3205
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3206
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 3208
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 3209
    .local v7, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->screen:I

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 3210
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 3211
    .end local v1           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    .end local v7           #screen:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void

    .line 3196
    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-eqz v0, :cond_0

    .line 3197
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;

    move-result-object v1

    .restart local v1       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    goto :goto_0
.end method

.method private pickShortcut(II)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 3446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3449
    const v2, 0x7f0a0013

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3450
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3453
    const v2, 0x7f020039

    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3455
    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3457
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3458
    const-string v2, "android.intent.extra.INTENT"

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3459
    const-string v2, "android.intent.extra.TITLE"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3460
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3462
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3463
    return-void
.end method

.method private prepareWidgetPreview(II)V
    .locals 5
    .parameter "type"
    .parameter "screen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4595
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4597
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4598
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAppWidget()V

    .line 4606
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->initAddWidget()V

    .line 4607
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4609
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4611
    const/4 v0, -0x1

    .line 4612
    .local v0, blankscreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    .line 4613
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v2

    .line 4617
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setAtuoScrollScreen(I)V

    .line 4618
    .end local v0           #blankscreen:I
    :goto_2
    return-void

    .line 4599
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4600
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSamsungWidget()V

    goto :goto_0

    .line 4602
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto :goto_2

    .line 4614
    .restart local v0       #blankscreen:I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v4

    if-eq v1, v3, :cond_0

    .line 4615
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v4

    goto :goto_1
.end method

.method private previewAppWidget()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1506
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v0, :cond_1

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1535
    :goto_0
    return-void

    .line 1511
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 1512
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 1513
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1516
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v3, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1517
    aget v4, v1, v7

    iput v4, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    .line 1518
    const/4 v4, 0x1

    aget v1, v1, v4

    iput v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    .line 1521
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v0, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1523
    iget-object v1, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v0, v2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1524
    iget-object v0, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1526
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1527
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1529
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    mul-int/2addr v0, v6

    iget v6, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    mul-int/2addr v1, v6

    invoke-direct {v5, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1532
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 1534
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 701
    const/4 v0, 0x0

    .line 703
    .local v0, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    const-string v2, "launcher.preferences"

    invoke-virtual {p0, v2}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 704
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 705
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 706
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 712
    if-eqz v1, :cond_2

    .line 714
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 720
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 715
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 717
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 707
    :catch_1
    move-exception v2

    .line 712
    :goto_1
    if-eqz v0, :cond_0

    .line 714
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 715
    :catch_2
    move-exception v2

    goto :goto_0

    .line 709
    :catch_3
    move-exception v2

    .line 712
    :goto_2
    if-eqz v0, :cond_0

    .line 714
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 715
    :catch_4
    move-exception v2

    goto :goto_0

    .line 712
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 714
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 717
    :cond_1
    :goto_4
    throw v2

    .line 715
    :catch_5
    move-exception v3

    goto :goto_4

    .line 712
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 709
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 707
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :cond_2
    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0
.end method

.method private registerContentObservers()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2540
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2542
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2544
    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2546
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 2

    .prologue
    .line 2514
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2515
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2518
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2519
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2520
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2521
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2522
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2523
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2525
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2526
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2527
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2529
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2530
    const-string v1, "android.intent.action.CONTACT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2531
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiverContactChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2533
    return-void
.end method

.method private registerSelectiveResetReceiver()V
    .locals 2

    .prologue
    .line 5475
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SELECTIVE_RESET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5476
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5477
    return-void
.end method

.method private restoreAnimation()V
    .locals 3

    .prologue
    .line 2002
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAnimationScales:[F

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2006
    :goto_0
    return-void

    .line 2003
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2004
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const-string v7, "Launcher"

    .line 1144
    if-nez p1, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    const-string v0, "launcher.delete_application"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1150
    const-string v0, "launcher.current_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1151
    if-le v0, v4, :cond_2

    .line 1152
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1155
    :cond_2
    const-string v0, "launcher.menu_mode"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1156
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 1157
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 1160
    :cond_3
    const-string v0, "launcher.menu_current_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1161
    if-le v0, v4, :cond_4

    .line 1162
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    .line 1165
    :cond_4
    const-string v0, "launcher.add_screen"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1166
    if-le v0, v4, :cond_5

    .line 1167
    new-instance v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1168
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1169
    iput-boolean v5, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1170
    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1171
    const-string v0, "launcher.add_cellX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 1172
    const-string v0, "launcher.add_cellY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 1173
    const-string v0, "launcher.add_spanX"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 1174
    const-string v0, "launcher.add_spanY"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 1175
    const-string v0, "launcher.add_occupied_cells"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    const-string v2, "launcher.add_countX"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "launcher.add_countY"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 1179
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1182
    :cond_5
    const-string v0, "launcher.rename_folder"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1183
    if-eqz v0, :cond_6

    .line 1184
    const-string v0, "launcher.rename_folder_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1185
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v3, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1186
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1189
    :cond_6
    const-string v0, "launcher.all_apps_folder"

    invoke-virtual {p1, v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1190
    if-eqz v0, :cond_7

    .line 1191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->open()V

    .line 1194
    :cond_7
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1196
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v5, :cond_9

    .line 1198
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    if-nez v0, :cond_8

    .line 1199
    const-string v0, "Launcher"

    const-string v0, "MainMenu loading is already finished. opening QuickViewMainMenu in restoreState()"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 1201
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1209
    :cond_8
    :goto_1
    const-string v0, "launcher.menu_screen_count"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 1211
    const-string v0, "launcher.delete_index"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 1212
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-ltz v0, :cond_0

    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    goto/16 :goto_0

    .line 1203
    :cond_9
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_8

    .line 1204
    const-string v0, "Launcher"

    const-string v0, "opening QuickViewWorkspace in restoreState()"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 1206
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_1
.end method

.method private setNoAnimation()V
    .locals 3

    .prologue
    .line 2011
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    :goto_0
    return-void

    .line 2012
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2013
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 2011
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 753
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 754
    :try_start_0
    sput p0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 755
    monitor-exit v0

    .line 756
    return-void

    .line 755
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSelectiveReset2ndAck()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "firstboot"

    .line 5480
    const-string v0, "launcher"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 5481
    const-string v1, "firstboot"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5483
    if-nez v1, :cond_0

    .line 5484
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5485
    const-string v1, "firstboot"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5486
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5488
    :cond_0
    return-void
.end method

.method private setSomethingsInDefaultIMEI()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "ro.build.PDA"

    const-string v6, "Not Available"

    .line 530
    const-string v3, "ro.build.PDA"

    const-string v3, "Not Available"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, pdabootver:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "uartapcpmode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 532
    .local v0, currentUart:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usbapcpmode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 534
    .local v1, currentUsb:I
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HW: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.hw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mHwVer:Ljava/lang/String;

    .line 536
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BOOT: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mBootVer:Ljava/lang/String;

    .line 537
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDA: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ro.build.PDA"

    const-string v4, "Not Available"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mPdaVer:Ljava/lang/String;

    .line 538
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Phone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ril.sw_ver"

    const-string v5, "Not Available"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mPhoneVer:Ljava/lang/String;

    .line 539
    if-nez v0, :cond_0

    const-string v3, "UART: MODEM"

    :goto_0
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUART:Ljava/lang/String;

    .line 540
    if-nez v1, :cond_1

    const-string v3, "USB: MODEM"

    :goto_1
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUSB:Ljava/lang/String;

    .line 541
    return-void

    .line 539
    :cond_0
    const-string v3, "UART: PDA"

    goto :goto_0

    .line 540
    :cond_1
    const-string v3, "USB: PDA"

    goto :goto_1
.end method

.method private setWallpaperDimension()V
    .locals 5

    .prologue
    const-string v4, "Launcher"

    .line 785
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 787
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 788
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v2, 0x1

    .line 790
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v3

    .line 791
    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 794
    :goto_2
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    if-nez v2, :cond_3

    .line 796
    const-string v1, "Launcher"

    const-string v1, "It\'s image wallpaper. suggestDesiredDimensions(-1,-1)"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/4 v1, -0x1

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_3
    return-void

    .line 788
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 790
    :cond_1
    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v3

    goto :goto_1

    .line 791
    :cond_2
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    goto :goto_2

    .line 799
    :catch_0
    move-exception v0

    .line 800
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 804
    :cond_3
    const-string v2, "Launcher"

    const-string v2, "It\'s live wallpaper. suggestDesiredDimensions() with SPAN 2"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    mul-int/lit8 v2, v3, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    goto :goto_3
.end method

.method private setupViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1223
    const v0, 0x7f06000e

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1224
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1226
    const v0, 0x7f060010

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Workspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1229
    const v0, 0x7f060011

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuDrawer;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1230
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1232
    const v0, 0x7f060012

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1233
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1235
    const v0, 0x7f060014

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/DeleteZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    .line 1237
    const v0, 0x7f060013

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1238
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1239
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1240
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1242
    const v0, 0x7f06001b

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/TopFourZone;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v0, :cond_0

    .line 1244
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    .line 1245
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1249
    :cond_0
    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1250
    invoke-virtual {v4, p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v5, "screencount"

    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    move v6, v9

    .line 1255
    :goto_0
    if-ge v6, v5, :cond_2

    .line 1256
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v7, 0x7f030013

    invoke-virtual {v0, v7, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1257
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 1259
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 1260
    if-nez v7, :cond_1

    .line 1261
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1263
    :cond_1
    invoke-virtual {v2, v0, v7}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1255
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 1265
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "currentscreen"

    invoke-interface {v0, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1266
    if-eq v0, v8, :cond_3

    if-lt v0, v5, :cond_4

    .line 1277
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    add-int/2addr v0, v5

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    .line 1284
    :cond_4
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1286
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1287
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1288
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1289
    invoke-virtual {v2, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1292
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V

    .line 1293
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/DeleteZone;->setHandle(Landroid/view/View;)V

    .line 1295
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 1296
    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1297
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1298
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1301
    const v0, 0x7f060019

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1304
    const v0, 0x7f06001a

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    .line 1305
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1307
    const v0, 0x7f060016

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/WidgetPreview;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    .line 1310
    return-void
.end method

.method private showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 3440
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3441
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 3442
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3443
    return-void
.end method

.method private showNotifications()V
    .locals 1

    .prologue
    .line 2485
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2486
    if-eqz p0, :cond_0

    .line 2487
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expand()V

    .line 2489
    :cond_0
    return-void
.end method

.method private startWallpaper()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2492
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2493
    const v1, 0x7f0a0003

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 2495
    const-string v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 2497
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 2498
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2499
    new-instance v2, Landroid/content/pm/LabeledIntent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-direct {v2, v3, v4, v5}, Landroid/content/pm/LabeledIntent;-><init>(Ljava/lang/String;II)V

    .line 2501
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/LabeledIntent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2502
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/content/Intent;

    aput-object v2, v3, v5

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2504
    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2505
    return-void
.end method

.method private storeAnimation()V
    .locals 2

    .prologue
    .line 1993
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAnimationScales:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    :goto_0
    return-void

    .line 1994
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1995
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 2743
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 2744
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    goto :goto_0

    .line 2746
    .end local v1           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    return-void
.end method

.method private static writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 5
    .parameter "context"
    .parameter "configuration"

    .prologue
    const-string v3, "launcher.preferences"

    .line 723
    const/4 v1, 0x0

    .line 725
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    const-string v3, "launcher.preferences"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 726
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 727
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 728
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 729
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 736
    if-eqz v2, :cond_2

    .line 738
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 744
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 739
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 741
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 730
    :catch_1
    move-exception v3

    .line 736
    :goto_1
    if-eqz v1, :cond_0

    .line 738
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 739
    :catch_2
    move-exception v3

    goto :goto_0

    .line 732
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 734
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 736
    if-eqz v1, :cond_0

    .line 738
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 739
    :catch_4
    move-exception v3

    goto :goto_0

    .line 736
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 738
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 741
    :cond_1
    :goto_4
    throw v3

    .line 739
    :catch_5
    move-exception v4

    goto :goto_4

    .line 736
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 732
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 730
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_7
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0
.end method


# virtual methods
.method addAppWidget(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x5

    const/4 v6, -0x1

    const-string v8, "appWidgetId"

    .line 2201
    const-string v0, "appWidgetId"

    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2203
    const-string v0, "custom_widget"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2205
    if-eqz v2, :cond_1

    .line 2206
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 2207
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 2208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2211
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2213
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 2232
    :goto_0
    return-void

    .line 2219
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2221
    iget-object v2, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    .line 2223
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2224
    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2225
    const-string v0, "appWidgetId"

    invoke-virtual {v2, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2227
    invoke-virtual {p0, v2, v7}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2230
    :cond_2
    invoke-virtual {p0, v7, v6, p1}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method addFolder()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 2366
    new-instance v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 2367
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 2369
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2370
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2371
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2387
    :goto_0
    return-void

    .line 2374
    :cond_0
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2376
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v2, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2379
    const v2, 0x7f030007

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v1

    .line 2381
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v3, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v6

    move v4, v9

    move v5, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 2355
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2356
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2358
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2359
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addFolder()V

    .line 2363
    :goto_0
    return-void

    .line 2361
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 4509
    if-nez p1, :cond_1

    .line 4510
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget(..) : SamsungWidget is a null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4511
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 4534
    :cond_0
    :goto_0
    return-void

    .line 4515
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4516
    iget v9, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    .line 4517
    iget v10, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    .line 4519
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4520
    const-wide/16 v2, -0x64

    aget v5, v8, v7

    aget v6, v8, v11

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 4523
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4524
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4526
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v3, v8, v7

    aget v4, v8, v11

    move v2, p2

    move v5, v9

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 4527
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4528
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 11
    .parameter

    .prologue
    const/4 v6, 0x3

    const v4, 0x7f0a0039

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-string v5, "Launcher"

    .line 2235
    if-nez p1, :cond_1

    .line 2318
    :cond_0
    :goto_0
    return-void

    .line 2236
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    .line 2238
    if-nez v1, :cond_2

    .line 2239
    const-string v0, "Launcher"

    const-string v0, "addSamsungWidget() : SamsungWidget is a null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2243
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 2244
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2247
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2249
    if-nez v2, :cond_6

    .line 2250
    const-string v0, "Launcher"

    const-string v0, "addSamsungWidget() : cellInfo is a null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2252
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 2253
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 2257
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2255
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2261
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v3, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2262
    if-nez v0, :cond_8

    .line 2263
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2264
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2265
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_7

    .line 2266
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 2270
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2268
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2274
    :cond_8
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v3}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v4}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v8

    .line 2276
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 2278
    aget v0, v8, v7

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    .line 2279
    aget v0, v8, v10

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    .line 2281
    aget v0, v8, v7

    aget v3, v8, v10

    invoke-direct {p0, v2, v9, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2282
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v7

    aput v1, v0, v7

    .line 2284
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    aget v1, v8, v10

    aput v1, v0, v10

    .line 2286
    iput v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2288
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_0

    .line 2290
    :cond_9
    const/4 v0, -0x1

    .line 2291
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 2292
    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v1, v2, :cond_a

    .line 2293
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    move v0, v1

    .line 2296
    :cond_a
    invoke-direct {p0, v6, v0}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(II)V

    goto/16 :goto_0

    .line 2301
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2302
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v10

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2305
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 2306
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 2308
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v4, v9, v7

    aget v5, v9, v10

    aget v6, v8, v7

    aget v7, v8, v10

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 2315
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 2316
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_0
.end method

.method public addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1591
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v2, "Launcher"

    .line 5331
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->setApps(Ljava/util/ArrayList;)V

    .line 5332
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    .line 5335
    invoke-static {}, Lcom/sec/android/app/twlauncher/LauncherProvider;->getStateOfDBUpgraded_8_9()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 5336
    const-string v0, "Launcher"

    const-string v0, "[bindAllApplications] startFullUpdateDB!!!"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 5338
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopFullUpdateDB()V

    .line 5339
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->startFullUpdateDB()V

    .line 5340
    invoke-static {v3}, Lcom/sec/android/app/twlauncher/LauncherProvider;->setStateOfDBUpgraded_8_9(I)V

    .line 5343
    :cond_0
    const-string v0, "Launcher"

    const-string v0, "Main menu binding finished"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5345
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 5346
    const-string v0, "Launcher"

    const-string v0, "opening QuickViewMainMenu in bindAllApplications()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5347
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 5348
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 5353
    :cond_1
    return-void
.end method

.method public bindAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 13
    .parameter "item"

    .prologue
    .line 5147
    const-wide/16 v11, 0x0

    .line 5151
    .local v11, start:J
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5153
    .local v0, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v8, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5154
    .local v8, appWidgetId:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 5156
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v9, :cond_1

    .line 5160
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    if-eqz v1, :cond_0

    .line 5161
    move-object v10, p1

    .line 5162
    .local v10, infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v1, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    .line 5163
    iget-object v1, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    .line 5189
    .end local v10           #infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_0
    :goto_0
    return-void

    .line 5173
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5175
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5176
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5178
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5181
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5183
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bindAppsAdded(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5356
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 5371
    :goto_0
    return-void

    .line 5359
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5361
    if-eqz p1, :cond_1

    .line 5362
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5363
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5364
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 5365
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 5363
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5369
    .end local v0           #N:I
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 5370
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    goto :goto_0
.end method

.method public bindAppsRemoved(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5374
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 5392
    :goto_0
    return-void

    .line 5377
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5379
    if-eqz p1, :cond_1

    .line 5380
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5381
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5382
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 5383
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 5381
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5387
    .end local v0           #N:I
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v3, :cond_2

    .line 5388
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeItems(Ljava/util/ArrayList;)V

    .line 5390
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 5391
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindAppsUpdated(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5395
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 5404
    :goto_0
    return-void

    .line 5398
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5399
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v0, :cond_1

    .line 5400
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5402
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5403
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->updateApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public bindFolders(Ljava/util/HashMap;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5137
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5138
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5139
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ItemInfo;",
            ">;II)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    .line 5093
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move v9, p2

    .line 5095
    :goto_0
    if-ge v9, p3, :cond_2

    .line 5096
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v5, v0

    .line 5097
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5098
    iget v2, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    .line 5095
    :cond_0
    :goto_1
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    .line 5101
    :pswitch_0
    iget v2, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 5103
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5104
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    check-cast v5, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->loadApplication(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 5107
    :cond_1
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v7, v0

    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    .line 5108
    iget v3, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 5113
    :pswitch_1
    const v3, 0x7f030007

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v7, v0

    invoke-static {v3, p0, v2, v7}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v2

    .line 5116
    iget v3, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 5120
    :pswitch_2
    const v3, 0x7f03000d

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-object v7, v0

    invoke-static {v3, p0, v2, v7}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v2

    .line 5124
    iget v3, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget v4, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v7, v6

    invoke-virtual/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 5130
    :cond_2
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5131
    return-void

    .line 5098
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bindSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 19
    .parameter "info"

    .prologue
    .line 5197
    const-wide/16 v17, 0x0

    .line 5201
    .local v17, start:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v4, v0

    .line 5206
    .local v4, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    move-object v14, v0

    .line 5207
    .local v14, intent:Landroid/content/Intent;
    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 5212
    .local v12, cn:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-object v6, v0

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v15

    .line 5213
    .local v15, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v15, :cond_2

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 5216
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    move-object v5, v0

    .line 5217
    .local v5, view:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 5219
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellY:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    move v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5222
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5224
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    move v7, v0

    if-ne v6, v7, :cond_0

    .line 5226
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    move v6, v0

    if-eqz v6, :cond_0

    .line 5227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 5245
    .end local v5           #view:Landroid/view/View;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 5252
    :cond_1
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    .line 5253
    .end local v12           #cn:Landroid/content/ComponentName;
    .end local v14           #intent:Landroid/content/Intent;
    .end local v15           #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :goto_1
    return-void

    .line 5208
    :catch_0
    move-exception v6

    move-object v13, v6

    .line 5209
    .local v13, e:Ljava/lang/NullPointerException;
    goto :goto_1

    .line 5231
    .end local v13           #e:Ljava/lang/NullPointerException;
    .restart local v12       #cn:Landroid/content/ComponentName;
    .restart local v14       #intent:Landroid/content/Intent;
    .restart local v15       #item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :cond_2
    new-instance v5, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 5232
    .local v5, view:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance v16, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    move-object/from16 v0, v16

    move v1, v6

    move v2, v7

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5234
    .local v16, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    move v0, v6

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5235
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5236
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 5237
    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 5239
    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellY:I

    move v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    move v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    move v10, v0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5242
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto :goto_0
.end method

.method cancelAddWidget()V
    .locals 4

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 4665
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4666
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 4667
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4668
    :cond_0
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4669
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4670
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4678
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 4679
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4681
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->stopAutoScrollRunnable()V

    .line 4686
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 4687
    return-void

    .line 4671
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4672
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v0, :cond_3

    .line 4673
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 4675
    :cond_3
    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    goto :goto_0
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 4213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4214
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 4216
    return-void
.end method

.method checkWidgetSpace(I)Z
    .locals 9
    .parameter "screen"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4621
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4622
    .local v3, type:I
    if-eq v3, v8, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 4624
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4625
    .local v1, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4627
    .local v2, spans:[I
    invoke-virtual {v1, v6, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4630
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4631
    .local v4, xy:[I
    if-eqz v0, :cond_1

    aget v5, v2, v7

    aget v6, v2, v8

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 4639
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :goto_0
    return v5

    .line 4635
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v2       #spans:[I
    .restart local v4       #xy:[I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v8

    .line 4636
    goto :goto_0

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :cond_2
    move v5, v7

    .line 4639
    goto :goto_0
.end method

.method clearAddWidget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 4690
    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4692
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4693
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v1

    .line 4694
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 4696
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4697
    return-void
.end method

.method closeAllApplications()V
    .locals 1

    .prologue
    .line 3254
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    .line 3255
    return-void
.end method

.method closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2709
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 2710
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2711
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2712
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2714
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->onClose()V

    .line 2715
    return-void
.end method

.method closeQuickViewMainMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3335
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3353
    :goto_0
    return-void

    .line 3337
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 3338
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->close()V

    .line 3340
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 3341
    .local v0, newMenuPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 3342
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    .line 3348
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 3349
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3350
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3351
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 3352
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto :goto_0

    .line 3343
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 3344
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeQuickViewWorkspace()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3282
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3307
    :goto_0
    return-void

    .line 3284
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 3285
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->close()V

    .line 3287
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 3288
    .local v1, newWorkspace:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 3289
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    .line 3293
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 3294
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 3296
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 3297
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3298
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3299
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3301
    move v0, v1

    .line 3302
    .local v0, newScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$8;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$8;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3290
    .end local v0           #newScreen:I
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 3291
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1649
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1652
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1659
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1666
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1667
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1673
    :goto_2
    const/4 v0, 0x5

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1679
    :goto_3
    const/4 v0, 0x6

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1684
    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1685
    return-void

    .line 1654
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1661
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1674
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1680
    :catch_3
    move-exception v0

    goto :goto_4

    .line 1668
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1380
    invoke-direct {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1393
    :goto_0
    return-void

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    .line 1385
    if-eqz v0, :cond_1

    .line 1386
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x1020

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1388
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->container:J

    .line 1389
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v0, p3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    .line 1391
    :cond_1
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method completeAddWidget(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4643
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4645
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_1

    .line 4646
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v2

    .line 4647
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v4

    .line 4650
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 4652
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4653
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->completePreviewAppWidget()V

    .line 4658
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4660
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 4661
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4662
    return-void

    .line 4654
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4655
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V

    goto :goto_0
.end method

.method createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 4
    .parameter "layoutResId"
    .parameter "parent"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 1360
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1362
    .local v0, favorite:Landroid/widget/TextView;
    new-instance v1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {p3, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1365
    iget-object v1, p3, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1367
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1369
    return-object v0
.end method

.method createShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    .line 1346
    const v1, 0x7f030001

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v1, v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2576
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2674
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 2579
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2580
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2581
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    :cond_1
    move v0, v1

    .line 2599
    goto :goto_1

    .line 2601
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 2602
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2603
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v1

    .line 2604
    goto :goto_1

    .line 2606
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2607
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer()V

    :cond_3
    move v0, v1

    .line 2609
    goto :goto_1

    .line 2611
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2613
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2615
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v0, v1

    .line 2623
    goto :goto_1

    .line 2619
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2620
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    move v0, v1

    .line 2621
    goto :goto_1

    .line 2626
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 2670
    goto :goto_1

    .line 2629
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 2630
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 2631
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2632
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v1

    .line 2633
    goto :goto_1

    .line 2636
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v0, :cond_9

    .line 2637
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto/16 :goto_1

    .line 2638
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 2639
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 2640
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 2641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    move v0, v1

    .line 2643
    goto/16 :goto_1

    .line 2646
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_a

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-ne v0, v1, :cond_b

    .line 2647
    :cond_a
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 2648
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 2649
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    move v0, v1

    .line 2651
    goto/16 :goto_1

    .line 2655
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    if-eqz v0, :cond_d

    .line 2656
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer()V

    .line 2657
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2664
    :goto_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 2665
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_c
    move v0, v1

    .line 2667
    goto/16 :goto_1

    .line 2660
    :cond_d
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    goto :goto_2

    .line 2576
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2615
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 2626
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public finishBindingAllWorkspaceItems()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 5288
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_4

    .line 5289
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5290
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 5293
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v1, "launcher.user_folder"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 5294
    if-eqz v1, :cond_3

    .line 5295
    array-length v2, v1

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_2

    aget-wide v4, v1, v3

    .line 5296
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5297
    if-eqz v0, :cond_1

    .line 5298
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 5295
    :cond_1
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 5301
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 5302
    if-eqz v0, :cond_3

    .line 5303
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus()Z

    .line 5307
    :cond_3
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5310
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    .line 5312
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v0}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5316
    :goto_1
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 5319
    :cond_5
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 5321
    const-string v0, "Launcher"

    const-string v1, "Workspace binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5325
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5327
    return-void

    .line 5313
    :catch_0
    move-exception v0

    .line 5314
    iput-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    goto :goto_1
.end method

.method public finishBindingAppWidgets()V
    .locals 2

    .prologue
    .line 5276
    const-string v0, "Launcher"

    const-string v1, "App widget binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5277
    return-void
.end method

.method public finishBindingSamsungWidgets()V
    .locals 2

    .prologue
    .line 5279
    const-string v0, "Launcher"

    const-string v1, "Samung widget binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5280
    return-void
.end method

.method public finishBindingShortcuts()V
    .locals 2

    .prologue
    .line 5256
    const-string v0, "Launcher"

    const-string v1, "Workspace shortcut binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5274
    return-void
.end method

.method getAdjacentBlankScreen(I)I
    .locals 12
    .parameter "screen"

    .prologue
    .line 4748
    iget v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4749
    .local v7, type:I
    const/4 v4, -0x1

    .line 4750
    .local v4, ret:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    .line 4751
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4752
    .local v9, xy:[I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4754
    .local v6, spans:[I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4755
    .local v8, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 4757
    .local v1, count:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4758
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4759
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4760
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_2

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4761
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x0

    aput v2, v10, v11

    .line 4762
    move v4, v2

    .line 4767
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    if-nez p1, :cond_3

    move v5, v4

    .line 4780
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #ret:I
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    .local v5, ret:I
    :goto_1
    return v5

    .line 4757
    .end local v5           #ret:I
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #count:I
    .restart local v2       #i:I
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v4       #ret:I
    .restart local v6       #spans:[I
    .restart local v8       #w:Lcom/sec/android/app/twlauncher/Workspace;
    .restart local v9       #xy:[I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4769
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_3
    const/4 v10, 0x1

    sub-int v2, p1, v10

    :goto_2
    if-ltz v2, :cond_6

    .line 4770
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4771
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4772
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_5

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4773
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    .line 4774
    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    move v4, v2

    :cond_4
    move v5, v4

    .line 4775
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1

    .line 4769
    .end local v5           #ret:I
    .restart local v4       #ret:I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    :cond_6
    move v5, v4

    .line 4780
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1
.end method

.method getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .locals 1

    .prologue
    .line 3372
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1569
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayoutId(I)I
    .locals 1
    .parameter

    .prologue
    .line 4291
    packed-switch p1, :pswitch_data_0

    .line 4308
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 4293
    :pswitch_0
    const v0, 0x7f060002

    goto :goto_0

    .line 4295
    :pswitch_1
    const v0, 0x7f060003

    goto :goto_0

    .line 4297
    :pswitch_2
    const v0, 0x7f060004

    goto :goto_0

    .line 4299
    :pswitch_3
    const v0, 0x7f060005

    goto :goto_0

    .line 4301
    :pswitch_4
    const v0, 0x7f060006

    goto :goto_0

    .line 4303
    :pswitch_5
    const v0, 0x7f060007

    goto :goto_0

    .line 4305
    :pswitch_6
    const v0, 0x7f060008

    goto :goto_0

    .line 4291
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method getCurrentImageMenuWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4955
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4951
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 5407
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v0

    return v0
.end method

.method getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;
    .locals 1

    .prologue
    .line 3392
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    return-object v0
.end method

.method getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1

    .prologue
    .line 3388
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;
    .locals 1

    .prologue
    .line 3384
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    return-object v0
.end method

.method getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1

    .prologue
    .line 3380
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1

    .prologue
    .line 3356
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 3310
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method getResOrientation()I
    .locals 1

    .prologue
    .line 4823
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    return v0
.end method

.method getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 3368
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getStateQuickNavigation()I
    .locals 1

    .prologue
    .line 4833
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    return v0
.end method

.method getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;
    .locals 1

    .prologue
    .line 3376
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    return-object v0
.end method

.method getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1

    .prologue
    .line 3364
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method isAddWidgetState()Z
    .locals 1

    .prologue
    .line 3396
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAllAppsVisible()Z
    .locals 1

    .prologue
    .line 5411
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAllPageSlot(I)Z
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f0a0042

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 4729
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v0, v2

    .line 4730
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v0, v3

    .line 4731
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAdjacentBlankScreen(I)I

    move-result v0

    .line 4734
    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ne v0, v1, :cond_1

    .line 4735
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 4736
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 4740
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v3

    .line 4744
    :goto_1
    return v0

    .line 4738
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 4744
    goto :goto_1
.end method

.method public isDefaultIMEI()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "Default"

    .line 513
    const-string v1, "357858010034783"

    .line 514
    .local v1, defaultIMEI:Ljava/lang/String;
    const-string v2, "ril.IMEI"

    const-string v3, "Default"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, currentIMEI:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 517
    const/4 v2, 0x1

    .line 524
    :goto_0
    return v2

    .line 519
    :cond_0
    const-string v2, "Default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 520
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v6

    .line 521
    goto :goto_0

    :cond_1
    move v2, v6

    .line 524
    goto :goto_0
.end method

.method isWindowOpaque()Z
    .locals 1

    .prologue
    .line 4857
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 2180
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method loadMenuMode()I
    .locals 3

    .prologue
    .line 4558
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "menu"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method lockAllApps()V
    .locals 1

    .prologue
    .line 3553
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 3554
    return-void
.end method

.method menudiscard()V
    .locals 2

    .prologue
    .line 4190
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 4191
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 4192
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplications()V

    .line 4193
    return-void
.end method

.method menusave()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const v9, 0xffff

    .line 4123
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 4124
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 4126
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 4128
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v3

    move v4, v10

    .line 4129
    :goto_0
    if-ge v4, v3, :cond_2

    .line 4130
    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 4131
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4132
    instance-of v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v5, :cond_1

    .line 4133
    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 4134
    iget v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-ne v5, v4, :cond_0

    iget v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v5, v9, :cond_0

    iget v5, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v5, v9, :cond_1

    .line 4137
    :cond_0
    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 4138
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 4139
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 4140
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 4141
    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4142
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4143
    iput v9, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 4144
    invoke-static {p0, v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 4129
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 4149
    :cond_2
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    move v4, v10

    move v5, v10

    .line 4151
    :goto_1
    if-ge v4, v3, :cond_7

    .line 4152
    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4153
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v6

    move v7, v10

    .line 4154
    :goto_2
    if-ge v7, v6, :cond_6

    .line 4155
    invoke-virtual {v0, v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4156
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 4157
    instance-of v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v8, :cond_4

    .line 4158
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 4159
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-ne v8, v9, :cond_3

    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v8, v5, :cond_3

    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v8, v7, :cond_5

    .line 4163
    :cond_3
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v8, v9, :cond_9

    .line 4164
    const/4 v8, 0x1

    .line 4166
    :goto_3
    iput v9, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 4167
    iput v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 4168
    iput v7, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 4169
    iput-boolean v10, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 4170
    iput v9, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4171
    iput v5, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4172
    iput v7, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 4173
    if-eqz v8, :cond_4

    .line 4174
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 4154
    :cond_4
    :goto_4
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_2

    .line 4177
    :cond_5
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4178
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4179
    iget v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_4

    .line 4183
    :cond_6
    if-lez v6, :cond_8

    .line 4184
    add-int/lit8 v0, v5, 0x1

    .line 4151
    :goto_5
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    move v5, v0

    goto :goto_1

    .line 4187
    :cond_7
    return-void

    :cond_8
    move v0, v5

    goto :goto_5

    :cond_9
    move v8, v10

    goto :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 816
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 818
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(). reqCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", resultCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAddItemCellInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    if-ne p2, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 829
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 832
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 873
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 834
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0, p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0

    .line 837
    :pswitch_2
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, p3, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 840
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 841
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 845
    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 848
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 849
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 853
    :pswitch_6
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 856
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v0}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 864
    :cond_2
    const/16 v0, 0x9

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    :cond_3
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 868
    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 869
    if-eq v0, v4, :cond_1

    .line 870
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 832
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 3094
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 3095
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v3, :cond_1

    .line 3097
    check-cast v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v2           #tag:Ljava/lang/Object;
    iget-object v0, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3098
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 3099
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 3100
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v1, v6

    aget v5, v1, v8

    aget v6, v1, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    aget v7, v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 3102
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 3106
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pos:[I
    :cond_0
    :goto_0
    return-void

    .line 3103
    .restart local v2       #tag:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v3, :cond_0

    .line 3104
    check-cast v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 393
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 394
    .local v2, tmpB:Z
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 395
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    .line 396
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 399
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 401
    const-string v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWindowManager:Landroid/view/IWindowManager;

    .line 403
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 404
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    .line 405
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 406
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 408
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getProductModelFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 409
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getProductModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 412
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUse16BitWindow(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 413
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getScreenCount(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 414
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getDefaultScreenCount(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 415
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseMainMenuConcentrationEffect(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 416
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseMainMenuListMode(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 417
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getWorkspaceCellsX(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 418
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getWorkspaceCellsY(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 420
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 422
    const-string v3, "launcher"

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 430
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 431
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    const/16 v4, 0x400

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    .line 432
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 434
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    .line 440
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkForLocaleChange()V

    .line 442
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 443
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v3, p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 447
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 448
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    .line 454
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 455
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 458
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setupViews()V

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerIntentReceivers()V

    .line 461
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerContentObservers()V

    .line 462
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerSelectiveResetReceiver()V

    .line 464
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 465
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 471
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v3, :cond_1

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 473
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v3, p0, v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 478
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 479
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v5}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 481
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 485
    new-instance v3, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    .line 486
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 487
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setId(I)V

    .line 488
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 490
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->bringToFront()V

    .line 498
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    if-eqz v3, :cond_2

    .line 500
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_usb_connection_status"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "media_player_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 502
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "end_key_press"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 503
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_usb_conditions_met"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 504
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_running_status"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 505
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "phone_lock_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 507
    :cond_2
    sput-boolean v5, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    .line 509
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 3401
    packed-switch p1, :pswitch_data_0

    .line 3414
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3403
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3405
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3407
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3409
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3411
    :pswitch_5
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3401
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2019
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v0, :cond_0

    move v0, v3

    .line 2064
    :goto_0
    return v0

    .line 2021
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2023
    const v0, 0x7f0a0024

    invoke-interface {p1, v6, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020040

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2026
    const v0, 0x7f0a0025

    invoke-interface {p1, v3, v7, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2029
    const v0, 0x7f0a0026

    invoke-interface {p1, v3, v5, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020047

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2032
    const/4 v0, 0x5

    const v1, 0x7f0a0027

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020042

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x4e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2035
    const/16 v0, 0xd

    const v1, 0x7f0a002b

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020043

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 2039
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2040
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2043
    const/4 v1, 0x7

    const v2, 0x7f0a0029

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020048

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2047
    const/16 v0, 0x8

    const v1, 0x7f0a002a

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020043

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2050
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v0, :cond_1

    .line 2051
    const/16 v0, 0x9

    const v1, 0x7f0a002c

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020045

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2057
    :cond_1
    const/16 v0, 0xa

    const v1, 0x7f0a002d

    invoke-interface {p1, v7, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020044

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2060
    const/16 v0, 0xb

    const v1, 0x7f0a002e

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020046

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2062
    const/16 v0, 0xc

    const v1, 0x7f0a002f

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v0, v6

    .line 2064
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const-string v2, "Launcher"

    .line 1902
    const-string v0, "Launcher"

    const-string v0, "onDestroy()"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    .line 1906
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 1908
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1911
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1916
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/method/TextKeyListener;->release()V

    .line 1918
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopLoader()V

    .line 1920
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->unbindDesktopItems()V

    .line 1922
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 1924
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbind()V

    .line 1927
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1928
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1930
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1931
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1932
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1933
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiverContactChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1934
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1936
    return-void

    .line 1912
    :catch_0
    move-exception v0

    .line 1913
    const-string v1, "Launcher"

    const-string v1, "problem while stopping AppWidgetHost during Launcher destruction"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1105
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1106
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 1107
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1109
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1116
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move-result v2

    .line 1125
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    :cond_0
    move v2, v1

    goto :goto_0
.end method

.method public onLoadingStart()V
    .locals 0

    .prologue
    .line 5050
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3214
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 3250
    :goto_0
    return v1

    .line 3222
    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v1, :cond_1

    .line 3223
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 3226
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3229
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v1, v3

    .line 3231
    goto :goto_0

    .line 3236
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3237
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_4

    .line 3238
    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_3

    .line 3240
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setAllowLongPress(Z)V

    .line 3241
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_3
    :goto_1
    move v1, v3

    .line 3250
    goto :goto_0

    .line 3244
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v1, :cond_3

    .line 3246
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7
    .parameter

    .prologue
    const/high16 v3, 0x40

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "className"

    const-string v2, "widgetInstall"

    .line 1689
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 1692
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1693
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeSystemDialogs()V

    .line 1698
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 1701
    const-string v0, "widgetInstall"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1702
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1703
    const-string v1, "widgetInstall"

    const-string v1, "widgetInstall"

    invoke-virtual {p1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1704
    const-string v1, "packageName"

    const-string v2, "packageName"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1705
    const-string v1, "className"

    const-string v1, "className"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move v0, v5

    .line 1709
    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-eq v1, v3, :cond_5

    .line 1712
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1713
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1716
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1717
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1720
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1721
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 1722
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1723
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 1749
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    .line 1750
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1751
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1753
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1762
    :cond_2
    :goto_2
    return-void

    .line 1725
    :cond_3
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1726
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_1

    .line 1728
    :cond_4
    if-nez v0, :cond_1

    .line 1729
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->moveToDefaultScreen()V

    .line 1741
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sub-int/2addr v0, v5

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1745
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    goto :goto_1

    .line 1756
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1757
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 1758
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 1759
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_2

    :cond_6
    move v0, v4

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2165
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2122
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addItems()V

    move v0, v2

    .line 2123
    goto :goto_0

    .line 2125
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V

    move v0, v2

    .line 2126
    goto :goto_0

    .line 2128
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move v0, v2

    .line 2129
    goto :goto_0

    .line 2131
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showNotifications()V

    move v0, v2

    .line 2132
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 2134
    goto :goto_0

    .line 2136
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2137
    goto :goto_0

    .line 2139
    :pswitch_7
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v0, :cond_0

    .line 2140
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    :goto_1
    move v0, v2

    .line 2144
    goto :goto_0

    .line 2142
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    goto :goto_1

    .line 2146
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2147
    goto :goto_0

    .line 2149
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2150
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2151
    goto :goto_0

    .line 2153
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showDiscardMenuEdit()V

    move v0, v2

    .line 2154
    goto :goto_0

    .line 2156
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 2157
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v2

    .line 2158
    goto :goto_0

    .line 2160
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 2161
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    move v0, v2

    .line 2162
    goto :goto_0

    .line 2120
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1055
    const-string v0, "Launcher"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1060
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1061
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1064
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1066
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1072
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1075
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1078
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperVisiblity(Z)V

    .line 1079
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3419
    packed-switch p1, :pswitch_data_0

    .line 3431
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3423
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_0

    .line 3424
    const v0, 0x7f060024

    invoke-virtual {p2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3425
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3426
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3427
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 3419
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2069
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2071
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2115
    :goto_0
    return v0

    .line 2073
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    .line 2075
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getAnimateStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 2077
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2078
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2079
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2080
    const/4 v0, 0x5

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2082
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 2083
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2084
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2085
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2096
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    if-nez v0, :cond_7

    .line 2097
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    move v0, v3

    .line 2115
    goto :goto_0

    .line 2086
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 2087
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2088
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2089
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 2090
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 2091
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2092
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2093
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 2099
    :cond_7
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 2104
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2107
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2108
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2109
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2110
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2111
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2112
    const/4 v0, 0x5

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 2105
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, -0x1

    const-string v5, "android:views"

    const-string v4, "android:focusedViewId"

    .line 1797
    const-string v0, "android:viewHierarchyState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1798
    const/4 v1, 0x0

    .line 1801
    if-eqz v0, :cond_1

    .line 1802
    const-string v1, "android:views"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1803
    const-string v2, "android:views"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1804
    const-string v2, "android:focusedViewId"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1805
    const-string v3, "android:focusedViewId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    move v6, v2

    move-object v2, v1

    move v1, v6

    .line 1808
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1810
    if-eqz v0, :cond_0

    .line 1811
    const-string v3, "android:views"

    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1812
    const-string v2, "android:focusedViewId"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1813
    const-string v1, "android:Panels"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1816
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1817
    return-void

    :cond_1
    move-object v2, v1

    move v1, v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "Launcher"

    const-string v2, ""

    .line 877
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume(). mIsNewIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowEnter()V

    .line 880
    const-string v0, ""

    const-string v0, "onResume() check 0"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 884
    const-string v0, ""

    const-string v0, "onResume() check 1"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 888
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 890
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 892
    const-string v0, ""

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume() check 2, mRestoring : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-eqz v0, :cond_5

    .line 896
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 898
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 899
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 907
    :cond_0
    :goto_0
    const-string v0, ""

    const-string v0, "onResume() check 3"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->broadcastStkIntent(Landroid/content/Context;)V

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 915
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->resume()V

    .line 917
    const-string v0, ""

    const-string v0, "onResume() check 4"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    if-eqz v0, :cond_6

    .line 920
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 926
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 927
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 929
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 930
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 933
    :cond_3
    const-string v0, ""

    const-string v0, "onResume() check 5"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 936
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    .line 938
    invoke-direct {p0, p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchMtpApp(Landroid/content/Context;)V

    .line 945
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 946
    const v0, 0x7f06000f

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 947
    if-eqz v0, :cond_4

    .line 948
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 955
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkFactoryReset2ndAck()V

    .line 956
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    if-eqz v0, :cond_7

    .line 957
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    .line 966
    :goto_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 979
    :goto_4
    const-string v0, "Launcher"

    const-string v0, "onResume() ended"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void

    .line 901
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    if-eqz v0, :cond_0

    .line 902
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 922
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resume(I)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1

    .line 959
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 970
    :catch_0
    move-exception v0

    goto :goto_4

    .line 967
    :catch_1
    move-exception v0

    goto :goto_4

    .line 951
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopLoader()V

    .line 1094
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v3, -0x1

    const-string v5, "launcher.quick_navigation"

    const-string v4, "launcher.delete_index"

    .line 1821
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1823
    const-string v0, "launcher.current_screen"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1825
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    .line 1827
    const-string v1, "launcher.delete_application"

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1829
    const-string v1, "launcher.menu_mode"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1831
    const-string v1, "launcher.menu_current_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1833
    const-string v0, "launcher.menu_screen_count"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1836
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-le v0, v3, :cond_1

    .line 1837
    const-string v0, "launcher.quick_navigation"

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    invoke-virtual {p1, v5, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1838
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-le v0, v3, :cond_0

    .line 1839
    const-string v0, "launcher.delete_index"

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1856
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v1

    .line 1857
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 1858
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1859
    new-array v3, v2, [J

    move v4, v7

    .line 1860
    :goto_1
    if-ge v4, v2, :cond_5

    .line 1861
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v0

    .line 1862
    iget-wide v5, v0, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    aput-wide v5, v3, v4

    .line 1860
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 1841
    :cond_0
    const-string v0, "launcher.delete_index"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1843
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1844
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1845
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    if-eqz v0, :cond_2

    .line 1846
    const-string v0, "launcher.delete_index"

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDeleteIndex()I

    move-result v0

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1848
    :cond_2
    const-string v0, "launcher.delete_index"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1850
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1851
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1853
    :cond_4
    const-string v0, "launcher.quick_navigation"

    invoke-virtual {p1, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1864
    :cond_5
    const-string v0, "launcher.user_folder"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1871
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1872
    const-string v0, "launcher.all_apps_folder"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1875
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_8

    .line 1876
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1877
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1879
    if-nez v0, :cond_a

    .line 1880
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iput-boolean v7, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1894
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v0, :cond_9

    .line 1895
    const-string v0, "launcher.rename_folder"

    invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1896
    const-string v0, "launcher.rename_folder_id"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v1, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1898
    :cond_9
    return-void

    .line 1882
    :cond_a
    const-string v2, "launcher.add_screen"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1883
    const-string v2, "launcher.add_cellX"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1884
    const-string v2, "launcher.add_cellY"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1885
    const-string v2, "launcher.add_spanX"

    iget v3, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1886
    const-string v2, "launcher.add_spanY"

    iget v1, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1887
    const-string v1, "launcher.add_countX"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1888
    const-string v1, "launcher.add_countY"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1889
    const-string v1, "launcher.add_occupied_cells"

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getOccupiedCells()[Z

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2175
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2176
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    .line 4839
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4840
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 4842
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 4844
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 4846
    if-eqz p1, :cond_0

    .line 4847
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 4852
    :goto_0
    return-void

    .line 4849
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 4850
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    goto :goto_0
.end method

.method openQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 3314
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3332
    :goto_0
    return-void

    .line 3316
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3318
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3321
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3322
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setBackgroundNotification(I)V

    .line 3323
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 3324
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    if-lez v0, :cond_2

    .line 3325
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    .line 3330
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 3331
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->open()V

    goto :goto_0

    .line 3327
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    goto :goto_1
.end method

.method openQuickViewWorkspace()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    .line 3258
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3260
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3263
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3264
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3266
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 3267
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3268
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->initScreen(I)V

    .line 3270
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 3271
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->open()V

    .line 3273
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    .line 3274
    .local v0, curScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$7;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$7;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3279
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowEnter()V
    .locals 2

    .prologue
    .line 4910
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 4911
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 4913
    :cond_0
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowExit()V
    .locals 2

    .prologue
    .line 4916
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 4917
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 4919
    :cond_0
    return-void
.end method

.method previewAddSamsungWidget()V
    .locals 7

    .prologue
    .line 2321
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-nez v0, :cond_0

    .line 2322
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2334
    :goto_0
    return-void

    .line 2326
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2328
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2329
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2331
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    mul-int/2addr v1, v6

    iget v0, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    mul-int/2addr v0, v2

    invoke-direct {v5, v1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2338
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2339
    const-string v1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2341
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2343
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2345
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2346
    const-string v2, "android.intent.extra.INTENT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2347
    invoke-virtual {p0, v1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2351
    :goto_0
    return-void

    .line 2349
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1562
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1566
    return-void
.end method

.method removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2390
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2394
    return-void
.end method

.method removePage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4206
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4207
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    .line 4208
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 4210
    return-void
.end method

.method public removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1580
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1584
    return-void
.end method

.method public removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1573
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1577
    return-void
.end method

.method saveMenuMode(I)V
    .locals 2
    .parameter

    .prologue
    .line 4552
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4553
    const-string v1, "menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4554
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4555
    return-void
.end method

.method public saveScreenInfo()V
    .locals 3

    .prologue
    .line 4312
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4313
    const-string v1, "screencount"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4314
    const-string v1, "currentscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4315
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4316
    return-void
.end method

.method public setBackgroundNotification(I)V
    .locals 1
    .parameter

    .prologue
    .line 4828
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4829
    return-void
.end method

.method setWallpaperVisiblity(Z)V
    .locals 2
    .parameter "visiblity"

    .prologue
    .line 4810
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 4811
    .local v0, wpm:Landroid/app/WallpaperManager;
    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 4812
    return-void
.end method

.method setWindowOpaque()V
    .locals 2

    .prologue
    .line 4901
    const-string v0, "Launcher"

    const-string v1, "setWindowOpaque()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4902
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4903
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4904
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 4905
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 4907
    return-void
.end method

.method setWindowTranslucent()V
    .locals 2

    .prologue
    .line 4893
    const-string v0, "Launcher"

    const-string v1, "setWindowTranslucent()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4894
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4895
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4896
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 4897
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 4898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 4899
    return-void
.end method

.method showDeleteApplication(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4200
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4201
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4202
    return-void
.end method

.method showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 4219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4220
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4221
    return-void
.end method

.method showDiscardMenuEdit()V
    .locals 1

    .prologue
    .line 4196
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4197
    return-void
.end method

.method showRenameDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3434
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 3435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 3436
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3437
    return-void
.end method

.method showWidgetMessage(Z)V
    .locals 4
    .parameter

    .prologue
    const v3, 0x7f0a001e

    const v2, 0x7f0a000e

    const/4 v1, 0x0

    .line 4562
    if-eqz p1, :cond_1

    .line 4563
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 4564
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 4575
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4576
    return-void

    .line 4566
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4569
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 4570
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 4572
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, v2}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 1940
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1941
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1942
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0a0006

    const/4 v4, 0x0

    const-string v0, "phone"

    const-string v7, " intent="

    const-string v5, "Launcher"

    .line 3109
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3110
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 3113
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 3116
    const-string v0, "com.sec.android.app.dialertab"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3119
    :try_start_1
    const-string v1, "phone"

    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3120
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v1

    .line 3124
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3125
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 3126
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 3128
    :try_start_3
    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3153
    :goto_1
    return-void

    .line 3121
    :catch_0
    move-exception v1

    .line 3122
    :try_start_4
    const-string v2, "Launcher"

    const-string v3, "phone.isOffhook() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move v1, v4

    goto :goto_0

    .line 3129
    :catch_1
    move-exception v0

    .line 3130
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 3143
    :catch_2
    move-exception v0

    .line 3144
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3145
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to launch. tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 3134
    :cond_1
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3135
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    .line 3146
    :catch_3
    move-exception v0

    .line 3147
    invoke-static {p0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 3148
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launcher does not have the permission to launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "or use the exported attribute for this activity. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " intent="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 3139
    :cond_2
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3140
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_1
.end method

.method public startBinding()V
    .locals 4

    .prologue
    .line 5061
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 5064
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 5066
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5067
    .local v2, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 5068
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5070
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 5068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5084
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1948
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$5;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$5;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1960
    if-nez p1, :cond_2

    .line 1962
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object v0

    .line 1963
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearTypedText()V

    move-object v1, v0

    .line 1970
    :goto_0
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1973
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->storeAnimation()V

    .line 1975
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAnimationScales:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAnimationScales:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 1977
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setNoAnimation()V

    .line 1978
    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    .line 1979
    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$6;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/Launcher$6;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1986
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1988
    return-void

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method uninstallPackage()V
    .locals 5

    .prologue
    const-string v4, "Launcher"

    .line 4235
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uninstallPackage(). package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4236
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4238
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4240
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4245
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4246
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4247
    return-void

    .line 4241
    :catch_0
    move-exception v0

    .line 4242
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstallPackage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4243
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0
.end method

.method updateTopfourBadge()V
    .locals 1

    .prologue
    .line 2827
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-nez v0, :cond_0

    .line 2829
    :goto_0
    return-void

    .line 2828
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->updateBadges()V

    goto :goto_0
.end method

.method updateWallpaperVisiblity()V
    .locals 2

    .prologue
    .line 4815
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 4816
    .local v0, wpm:Landroid/app/WallpaperManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4817
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 4820
    :goto_0
    return-void

    .line 4819
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    goto :goto_0
.end method

.method updateWindowTransparency()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4863
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    if-nez v5, :cond_0

    .line 4890
    :goto_0
    return-void

    .line 4870
    :cond_0
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 4871
    .local v4, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 4873
    .local v3, wi:Landroid/app/WallpaperInfo;
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    move v2, v5

    .line 4875
    .local v2, usingLiveWallpaper:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 4876
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowTranslucent()V

    .line 4877
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 4878
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v2           #usingLiveWallpaper:Z
    :cond_1
    move v2, v6

    .line 4873
    goto :goto_1

    .line 4882
    .restart local v2       #usingLiveWallpaper:Z
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowOpaque()V

    .line 4883
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 4885
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4886
    .local v0, time1:J
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 4887
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->makeBitmapMenuWallpaper()V

    goto :goto_0
.end method

.method updateWorkspaceBadge()V
    .locals 12

    .prologue
    .line 2801
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2802
    .local v9, wcount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 2803
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2804
    .local v3, child:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2805
    .local v2, cellCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 2806
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2807
    .local v1, cell:Landroid/view/View;
    instance-of v10, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v10, :cond_1

    .line 2808
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v8, v0

    .line 2809
    .local v8, uf:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/UserFolder;->notifyDataSetChanged()V

    .line 2805
    .end local v8           #uf:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2813
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 2814
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v10, v7, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v10, :cond_0

    .line 2816
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v6, v0

    .line 2817
    .local v6, si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v10

    iput v10, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 2818
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 2822
    .end local v1           #cell:Landroid/view/View;
    .end local v6           #si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 2802
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2824
    .end local v2           #cellCount:I
    .end local v3           #child:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #j:I
    :cond_3
    return-void
.end method
