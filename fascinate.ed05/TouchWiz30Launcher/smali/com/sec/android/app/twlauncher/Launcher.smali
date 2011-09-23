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
.field private static final ACTION_CONTACT_CHANGED:Ljava/lang/String; = "android.intent.action.CONTACT_CHANGED"

.field private static final ADB_ENABLED:Ljava/lang/String; = "adb_enabled"

.field private static final ADDWIDGET_APPWIDGET:I = 0x2

.field private static final ADDWIDGET_NONE:I = 0x0

.field private static final ADDWIDGET_SAMSUNGWIDGET:I = 0x3

.field private static final ADDWIDGET_SEARCH:I = 0x1

.field static final APPWIDGET_HOST_ID:I = 0x400

.field public static final BADGE_APPS_CLASS:Ljava/lang/String; = "class"

.field public static final BADGE_APPS_COUNT:Ljava/lang/String; = "badgecount"

.field public static final BADGE_APPS_PACKAGE:Ljava/lang/String; = "package"

.field public static final BADGE_AUTHORITY:Ljava/lang/String; = "com.sec.badge"

.field public static final BADGE_TABLE_APPS:Ljava/lang/String; = "apps"

.field private static final CANNOT_READ_IMEI:I = 0x2

.field static final DEBUG:Z = true

.field static final DEBUG_USER_INTERFACE:Z = false

.field static final DEBUG_WIDGETS:Z = true

.field static final DEFAULT_SCREEN:I = 0x3

.field static DEFAULT_SCREEN_COUNT:I = 0x0

.field private static final DIALOG_CREATE_SHORTCUT:I = 0x1

.field static final DIALOG_DELETE_APPLICATION:I = 0x4

.field static final DIALOG_DELETE_WORKSCREEN:I = 0x6

.field static final DIALOG_DISCARD_MENUEDIT:I = 0x5

.field static final DIALOG_RENAME_FOLDER:I = 0x2

.field static final EXTRA_CUSTOM_WIDGET:Ljava/lang/String; = "custom_widget"

.field static final EXTRA_SHORTCUT_DUPLICATE:Ljava/lang/String; = "duplicate"

.field public static final EXTRA_WIDGET_ADD:Ljava/lang/String; = "widgetInstall"

.field public static final EXTRA_WIDGET_CLASS:Ljava/lang/String; = "className"

.field public static final EXTRA_WIDGET_PACKAGE:Ljava/lang/String; = "packageName"

.field public static final FAILED:I = 0x0

.field private static final INTENT_ACTION_MULTI_CSC_CLEAR:Ljava/lang/String; = "android.intent.action.MULTI_CSC_CLEAR"

.field static final LOG_TAG:Ljava/lang/String; = "Launcher"

.field private static final MENU_ADD:I = 0x2

.field private static final MENU_DISCARD:I = 0xc

.field private static final MENU_EDIT:I = 0x6

.field private static final MENU_GRIDVIEW:I = 0xa

.field private static final MENU_GROUP_ADD:I = 0x1

.field private static final MENU_GROUP_DEFAULT:I = 0x0

.field private static final MENU_GROUP_DEFAULT_MENU:I = 0x2

.field private static final MENU_GROUP_EDIT_MENU:I = 0x4

.field private static final MENU_GROUP_HOMESCREEN_EDIT_MENU:I = 0x5

.field private static final MENU_GROUP_LIST_MENU:I = 0x3

.field private static final MENU_LISTVIEW:I = 0x9

.field private static final MENU_MENUEDIT:I = 0x8

.field private static final MENU_NOTIFICATIONS:I = 0x5

.field private static final MENU_QUICKVIEW_MAINMENU:I = 0xe

.field private static final MENU_QUICKVIEW_WORKSPACE:I = 0xd

.field private static final MENU_SAVE:I = 0xb

.field private static final MENU_SEARCH:I = 0x4

.field private static final MENU_SETTINGS:I = 0x7

.field private static final MENU_WALLPAPER_SETTINGS:I = 0x3

.field private static final MTP_USB_CONDITIONS_MET:Ljava/lang/String; = "mtp_usb_conditions_met"

.field private static final MTP_USB_CONNECTION_STATUS:Ljava/lang/String; = "mtp_usb_connection_status"

.field static NUMBER_CELLS_X:I = 0x0

.field static NUMBER_CELLS_Y:I = 0x0

.field static final PATH_SELECTIVEVERIFY:Ljava/lang/String; = "//data/factory/.selectiveverify"

.field static final PATH_SHUTDOWNVERIFY:Ljava/lang/String; = "//data/factory/.resetverify"

.field private static final PREFERENCES:Ljava/lang/String; = "launcher.preferences"

.field private static final PREFERENCES_BUILDVERSION:Ljava/lang/String; = "buildversion"

.field private static final PREFERENCES_CURRENTSCREEN:Ljava/lang/String; = "currentscreen"

.field private static final PREFERENCES_HOMESCREEN:Ljava/lang/String; = "homescreen"

.field private static final PREFERENCES_LAUNCHER:Ljava/lang/String; = "launcher"

.field private static final PREFERENCES_MENUMODE:Ljava/lang/String; = "menu"

.field private static final PREFERENCES_SCREENCOUNT:Ljava/lang/String; = "screencount"

.field private static final PROFILE_ROTATE:Z = false

.field private static final PROFILE_STARTUP:Z = false

.field private static final QUICKMODE_MAINMENU:I = 0x1

.field private static final QUICKMODE_WORKSCREEN:I = 0x0

.field private static final REQUEST_CREATE_APPWIDGET:I = 0x5

.field private static final REQUEST_CREATE_LIVE_FOLDER:I = 0x4

.field private static final REQUEST_CREATE_SHORTCUT:I = 0x1

.field private static final REQUEST_PICK_APPLICATION:I = 0x6

.field private static final REQUEST_PICK_APPWIDGET:I = 0x9

.field private static final REQUEST_PICK_LIVE_FOLDER:I = 0x8

.field private static final REQUEST_PICK_SHORTCUT:I = 0x7

.field private static final REQUEST_PICK_WALLPAPER:I = 0xa

.field static final ROTATION_CONFIG_CHANGE:Z = false

.field private static final RUNTIME_STATE_ALL_APPS_FOLDER:Ljava/lang/String; = "launcher.all_apps_folder"

.field private static final RUNTIME_STATE_CURRENT_SCREEN:Ljava/lang/String; = "launcher.current_screen"

.field private static final RUNTIME_STATE_DELETE_APPLICATION:Ljava/lang/String; = "launcher.delete_application"

.field private static final RUNTIME_STATE_DELETE_WORKSCREEN_INDEX:Ljava/lang/String; = "launcher.delete_index"

.field private static final RUNTIME_STATE_MENU_CURRENT_MODE:Ljava/lang/String; = "launcher.menu_mode"

.field private static final RUNTIME_STATE_MENU_CURRENT_SCREEN:Ljava/lang/String; = "launcher.menu_current_screen"

.field private static final RUNTIME_STATE_MENU_SCREEN_COUNT:Ljava/lang/String; = "launcher.menu_screen_count"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_X:Ljava/lang/String; = "launcher.add_cellX"

.field private static final RUNTIME_STATE_PENDING_ADD_CELL_Y:Ljava/lang/String; = "launcher.add_cellY"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_X:Ljava/lang/String; = "launcher.add_countX"

.field private static final RUNTIME_STATE_PENDING_ADD_COUNT_Y:Ljava/lang/String; = "launcher.add_countY"

.field private static final RUNTIME_STATE_PENDING_ADD_OCCUPIED_CELLS:Ljava/lang/String; = "launcher.add_occupied_cells"

.field private static final RUNTIME_STATE_PENDING_ADD_SCREEN:Ljava/lang/String; = "launcher.add_screen"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_X:Ljava/lang/String; = "launcher.add_spanX"

.field private static final RUNTIME_STATE_PENDING_ADD_SPAN_Y:Ljava/lang/String; = "launcher.add_spanY"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME:Ljava/lang/String; = "launcher.rename_folder"

.field private static final RUNTIME_STATE_PENDING_FOLDER_RENAME_ID:Ljava/lang/String; = "launcher.rename_folder_id"

.field private static final RUNTIME_STATE_QUICK_NAVIGATION:Ljava/lang/String; = "launcher.quick_navigation"

.field private static final RUNTIME_STATE_USER_FOLDERS:Ljava/lang/String; = "launcher.user_folder"

.field static final SAMSUNGTEST_RESETACK:Ljava/lang/String; = "com.android.samsungtest.RESETACK"

.field static final SAMSUNGTEST_SELECTIVEACK:Ljava/lang/String; = "com.android.samsungtest.SELECTIVEACK"

.field static SCREEN_COUNT:I = 0x0

.field private static final SELECTIVE_RESET:Ljava/lang/String; = "android.intent.action.SELECTIVE_RESET"

.field public static final SUCCEEDED:I = 0x1

.field static final SamsungAppWidgetPackageName:Ljava/lang/String; = "com.sec.android.widgetapp"

.field public static final TOPAPP_COUNT:I = 0x3

.field private static final USB_SETTING_MODE:Ljava/lang/String; = "usb_setting_mode"

.field static USE_MAINMENU_CONCENTRATION_EFFECT:Z = false

.field static USE_MAINMENU_LISTMODE:Z = false

.field static final WALLPAPER_SCREENS_SPAN:I = 0x2

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

.field private mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

.field private mWorkspaceLoading:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 170
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 171
    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 172
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 173
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 183
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 184
    sput-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    .line 228
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    .line 355
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    .line 358
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

    .line 377
    invoke-direct {p0, v2}, Landroid/app/ActivityGroup;-><init>(Z)V

    .line 167
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    .line 238
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$SelectiveResetReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$SelectiveResetReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

    .line 242
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CloseSystemDialogsIntentReceiver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    .line 244
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$AppWidgetResetObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    .line 245
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$BadgeChangeObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    .line 270
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 273
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 277
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 279
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 280
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 329
    const-string v0, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->ACTION_APP_MORECONTENTS:Ljava/lang/String;

    .line 331
    const-string v0, "KEY_APP_CALLER"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->EXT_KEY_APP_CALLER:Ljava/lang/String;

    .line 332
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->APP_CALLER_HOME:I

    .line 344
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 345
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 346
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 347
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 351
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 352
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 366
    const-string v0, "S1"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 367
    const-string v0, "GT-I9000"

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 369
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 371
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    .line 373
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mOpenFolders:Ljava/util/ArrayList;

    .line 374
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mUserFolders:[J

    .line 558
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$1;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 577
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$2;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiverContactChanged:Landroid/content/BroadcastReceiver;

    .line 621
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$3;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 4155
    iput v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->UNINSTALL_COMPLETE:I

    .line 4161
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$8;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    .line 4480
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4482
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4484
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4485
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4486
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4488
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 4490
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    .line 4695
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$9;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/Launcher$9;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    .line 4746
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 378
    return-void
.end method

.method private acceptFilter()Z
    .locals 2

    .prologue
    .line 1049
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1051
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    return-object p1
.end method

.method static synthetic access$1700()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/twlauncher/Launcher;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/Launcher;->pickShortcut(II)V

    return-void
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/sec/android/app/twlauncher/Launcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mParam:I

    return p1
.end method

.method static synthetic access$2700(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onAppWidgetReset()V

    return-void
.end method

.method static synthetic access$2800(Lcom/sec/android/app/twlauncher/Launcher;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/sec/android/app/twlauncher/Launcher;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/Launcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/sec/android/app/twlauncher/Launcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSomethingsInDefaultIMEI()V

    return-void
.end method

.method static synthetic access$3300(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onBadgeChanged()V

    return-void
.end method

.method static synthetic access$3500(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setSelectiveReset2ndAck()V

    return-void
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/Launcher;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method private addItems()V
    .locals 1

    .prologue
    .line 2074
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 2075
    return-void
.end method

.method static addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 11
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 2306
    const-string v1, "android.intent.extra.livefolder.BASE_INTENT"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 2307
    .local v1, baseIntent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.livefolder.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2309
    .local v6, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2310
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .line 2312
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    const-string v3, "android.intent.extra.livefolder.ICON"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 2313
    .local v3, extra:Landroid/os/Parcelable;
    if-eqz v3, :cond_1

    instance-of v5, v3, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v5, :cond_1

    .line 2315
    :try_start_0
    move-object v0, v3

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v5, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2317
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    iget-object v7, v5, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v7

    .line 2319
    .local v7, resources:Landroid/content/res/Resources;
    iget-object v2, v5, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    .end local v2           #packageManager:Landroid/content/pm/PackageManager;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v2, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 2320
    .local v2, id:I
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .line 2326
    .end local v3           #extra:Landroid/os/Parcelable;
    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .end local v7           #resources:Landroid/content/res/Resources;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :goto_0
    if-nez v2, :cond_0

    .line 2327
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f02004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    move-object v3, v2

    .line 2330
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    :goto_1
    new-instance v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 2331
    .local v2, info:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    invoke-static {v3, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v3

    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 2332
    iput-object v6, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->title:Ljava/lang/CharSequence;

    .line 2333
    iput-object v4, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 2334
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 2335
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->baseIntent:Landroid/content/Intent;

    .line 2336
    const-string v1, "android.intent.extra.livefolder.DISPLAY_MODE"

    .end local v1           #baseIntent:Landroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .end local p1
    iput p1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->displayMode:I

    .line 2339
    const-wide/16 v3, -0x64

    iget v5, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v6, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .end local v6           #name:Ljava/lang/String;
    iget v7, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v1, p0

    move v8, p3

    invoke-static/range {v1 .. v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2341
    sget-object p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    .end local p0
    iget-wide p1, v2, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2343
    return-object v2

    .line 2321
    .restart local v1       #baseIntent:Landroid/content/Intent;
    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, extra:Landroid/os/Parcelable;
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    .restart local v6       #name:Ljava/lang/String;
    .restart local p0
    .restart local p1
    :catch_0
    move-exception v5

    move-object v10, v5

    move-object v5, v2

    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v5       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    move-object v2, v10

    .line 2322
    .local v2, e:Ljava/lang/Exception;
    :goto_2
    const-string v2, "Launcher"

    .end local v2           #e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not load live folder icon: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .end local v3           #extra:Landroid/os/Parcelable;
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    goto :goto_0

    .line 2321
    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .restart local v3       #extra:Landroid/os/Parcelable;
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    .restart local v5       #iconResource:Landroid/content/Intent$ShortcutIconResource;
    :catch_1
    move-exception v2

    goto :goto_2

    .end local v3           #extra:Landroid/os/Parcelable;
    .end local v5           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .restart local v2       #icon:Landroid/graphics/drawable/Drawable;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    :cond_0
    move-object v3, v2

    .end local v2           #icon:Landroid/graphics/drawable/Drawable;
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .local v2, iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v3, extra:Landroid/os/Parcelable;
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    :cond_1
    move-object v10, v2

    .end local v2           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v10, iconResource:Landroid/content/Intent$ShortcutIconResource;
    move-object v2, v4

    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .local v2, icon:Landroid/graphics/drawable/Drawable;
    move-object v4, v10

    .end local v10           #iconResource:Landroid/content/Intent$ShortcutIconResource;
    .local v4, iconResource:Landroid/content/Intent$ShortcutIconResource;
    goto :goto_0
.end method

.method private addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 4
    .parameter "occupied"
    .parameter "screen"
    .parameter "item"

    .prologue
    .line 5306
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-ne v2, p2, :cond_1

    .line 5307
    iget v0, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .local v0, xx:I
    :goto_0
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget v3, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 5308
    iget v1, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .local v1, yy:I
    :goto_1
    iget v2, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget v3, p3, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    .line 5309
    aget-object v2, p1, v0

    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 5308
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 5307
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5313
    .end local v0           #xx:I
    .end local v1           #yy:I
    :cond_1
    return-void
.end method

.method private blockChildrenFocus()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    const/high16 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDescendantFocusability(I)V

    .line 1275
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->requestFocus()Z

    .line 1276
    return-void
.end method

.method private checkBuildVersion()V
    .locals 8

    .prologue
    const/4 v5, 0x3

    const-string v7, "buildversion"

    const-string v6, "LauncherPrefsInitTest"

    .line 507
    const-string v3, "ro.build.PDA"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, newBuildNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "buildversion"

    const-string v4, "UNKNOWN"

    invoke-interface {v3, v7, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 509
    .local v2, oldBuildNumber:Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 511
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "LauncherPrefsInitTest"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() : oldver = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " newver = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 524
    :goto_0
    return-void

    .line 517
    :cond_0
    const-string v3, "LauncherPrefsInitTest"

    const-string v3, "onCreate() : initializing prefs values"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v3, "screencount"

    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 519
    const-string v3, "currentscreen"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 520
    const-string v3, "homescreen"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 521
    const-string v3, "buildversion"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 522
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private checkFactoryReset2ndAck()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    const-string v9, "firstboot"

    const-string v8, "Launcher"

    .line 5341
    const-string v6, "launcher"

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 5342
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v6, "firstboot"

    const/4 v6, 0x1

    invoke-interface {v5, v9, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 5344
    .local v4, isFirst:Z
    if-eqz v4, :cond_1

    .line 5346
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5348
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    new-instance v1, Ljava/io/File;

    const-string v6, "//data/factory/.selectiveverify"

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5349
    .local v1, f1:Ljava/io/File;
    new-instance v2, Ljava/io/File;

    const-string v6, "//data/factory/.resetverify"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5350
    .local v2, f2:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5351
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.samsungtest.SELECTIVEACK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5352
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5353
    const-string v6, "Launcher"

    const-string v6, "***** SAMSUNGTEST_SELECTIVEACK *****"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5359
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    const-string v6, "firstboot"

    invoke-interface {v0, v9, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5360
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5362
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #f1:Ljava/io/File;
    .end local v2           #f2:Ljava/io/File;
    :cond_1
    return-void

    .line 5354
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #f1:Ljava/io/File;
    .restart local v2       #f2:Ljava/io/File;
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5355
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.samsungtest.RESETACK"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5356
    .restart local v3       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    .line 5357
    const-string v6, "Launcher"

    const-string v6, "***** SAMSUNGTEST_RESETACK *****"

    invoke-static {v8, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkForLocaleChange()V
    .locals 9

    .prologue
    .line 636
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;

    const/4 v8, 0x0

    invoke-direct {v2, v8}, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;-><init>(Lcom/sec/android/app/twlauncher/Launcher$1;)V

    .line 637
    .local v2, localeConfiguration:Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 639
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 641
    .local v0, configuration:Landroid/content/res/Configuration;
    iget-object v5, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 642
    .local v5, previousLocale:Ljava/lang/String;
    iget-object v8, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 644
    .local v1, locale:Ljava/lang/String;
    iget v6, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 645
    .local v6, previousMcc:I
    iget v3, v0, Landroid/content/res/Configuration;->mcc:I

    .line 647
    .local v3, mcc:I
    iget v7, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 648
    .local v7, previousMnc:I
    iget v4, v0, Landroid/content/res/Configuration;->mnc:I

    .line 650
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

    .line 652
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    if-eqz v8, :cond_1

    .line 653
    iput-object v1, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 654
    iput v3, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 655
    iput v4, v2, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    .line 657
    invoke-static {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->writeConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V

    .line 658
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/IconCache;->flush()V

    .line 660
    :cond_1
    return-void

    .line 650
    :cond_2
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private checkHwNaviKey()V
    .locals 5

    .prologue
    const-string v4, "Launcher"

    .line 1253
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkHwNaviKey(). current configuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->navigation:I

    .line 1255
    .local v1, navigationConfig:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1256
    const-string v2, "Launcher"

    const-string v2, "No navigation h/w keys. block focus"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->blockChildrenFocus()V

    .line 1267
    :goto_0
    return-void

    .line 1259
    :cond_0
    const-string v0, "UNKNOWN"

    .line 1260
    .local v0, nameNav:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 1265
    :goto_1
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "You have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " navigation keys"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1261
    :pswitch_0
    const-string v0, "DPAD"

    goto :goto_1

    .line 1262
    :pswitch_1
    const-string v0, "TRACKBALL"

    goto :goto_1

    .line 1263
    :pswitch_2
    const-string v0, "WHEEL"

    goto :goto_1

    .line 1260
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private clearTypedText()V
    .locals 2

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 1086
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 1087
    return-void
.end method

.method private closeDrawer()V
    .locals 1

    .prologue
    .line 2567
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 2568
    return-void
.end method

.method private closeDrawer(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    .line 2571
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 2573
    .local v0, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2574
    if-eqz p1, :cond_2

    .line 2575
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->animateClose()V

    .line 2579
    :goto_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2580
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 2584
    :cond_0
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 2585
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2586
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 2588
    :cond_1
    return-void

    .line 2577
    :cond_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    goto :goto_0
.end method

.method private closeFolder()V
    .locals 2

    .prologue
    .line 2591
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v0

    .line 2592
    .local v0, folder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v0, :cond_0

    .line 2593
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 2595
    :cond_0
    return-void
.end method

.method private completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 1441
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1442
    .local v0, extras:Landroid/os/Bundle;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 1443
    return-void
.end method

.method private completeAddAppWidget(Landroid/os/Bundle;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 21
    .parameter "extras"
    .parameter "cellInfo"

    .prologue
    .line 1368
    const-string v5, "appWidgetId"

    const/4 v6, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v14

    .line 1370
    .local v14, appWidgetId:I
    const-string v5, "Launcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "completeAddAppWidget(): dumping extras content="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object v5, v0

    invoke-virtual {v5, v14}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v15

    .line 1376
    .local v15, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 1377
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p2

    iput v0, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1380
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1381
    .local v17, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget v5, v15, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v6, v15, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    move-object/from16 v0, v17

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v19

    .line 1384
    .local v19, spans:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    move-object/from16 v20, v0

    .line 1385
    .local v20, xy:[I
    const/4 v5, 0x0

    aget v5, v19, v5

    const/4 v6, 0x1

    aget v6, v19, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1386
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 1387
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v19, v7

    aput v7, v5, v6

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget v7, v19, v7

    aput v7, v5, v6

    .line 1391
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1431
    :cond_1
    :goto_0
    return-void

    .line 1395
    :cond_2
    const/16 v18, -0x1

    .line 1396
    .local v18, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v16

    .line 1397
    .local v16, count:I
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    move/from16 v0, v16

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 1398
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    .line 1399
    move/from16 v18, v16

    .line 1401
    :cond_3
    const/4 v5, 0x2

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(II)V

    goto :goto_0

    .line 1407
    .end local v16           #count:I
    .end local v18           #screen:I
    :cond_4
    new-instance v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v6, v14}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1408
    .local v6, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    const/4 v5, 0x0

    aget v5, v19, v5

    iput v5, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    .line 1409
    const/4 v5, 0x1

    aget v5, v19, v5

    iput v5, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    .line 1411
    const-wide/16 v7, -0x64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v9

    const/4 v5, 0x0

    aget v10, v20, v5

    const/4 v5, 0x1

    aget v11, v20, v5

    const/4 v12, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v12}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v15

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v5

    iput-object v5, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1421
    iget-object v5, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v14, v15}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1422
    iget-object v5, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v5, v6}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v7, v0

    iget-object v8, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    const/4 v5, 0x0

    aget v9, v20, v5

    const/4 v5, 0x1

    aget v10, v20, v5

    iget v11, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    iget v12, v6, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v13

    invoke-virtual/range {v7 .. v13}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto/16 :goto_0
.end method

.method private completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 8
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    const/4 v4, 0x1

    .line 2287
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2288
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2301
    :cond_0
    :goto_0
    return-void

    .line 2290
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v7

    .line 2292
    .local v7, info:Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v0, :cond_0

    .line 2293
    const v2, 0x7f03000d

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v7}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v1

    .line 2295
    .local v1, view:Landroid/view/View;
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
    .line 1342
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p2, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1343
    invoke-direct {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1358
    :cond_0
    :goto_0
    return-void

    .line 1345
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p1, p2, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    .line 1347
    .local v0, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v1, :cond_0

    .line 1356
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

    .line 1478
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    .line 1479
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1498
    :goto_0
    return-void

    .line 1482
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 1484
    .local v9, xy:[I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 1486
    .local v1, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1488
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    aget v5, v9, v7

    aget v6, v9, v8

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1492
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
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 4676
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v3, v3, v6

    if-ne v3, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v3, v5, :cond_1

    :cond_0
    move v3, v5

    .line 4692
    :goto_0
    return v3

    .line 4677
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4678
    .local v2, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 4679
    .local v1, count:I
    sget v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v1, v3, :cond_2

    .line 4680
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030013

    invoke-virtual {v3, v4, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4681
    .local v0, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 4682
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 4684
    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;)V

    .line 4686
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v1, v3, v6

    .line 4688
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    move v3, v1

    .line 4690
    goto :goto_0

    .end local v0           #cell:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_2
    move v3, v5

    .line 4692
    goto :goto_0
.end method

.method private findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z
    .locals 4
    .parameter "cellInfo"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2347
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2348
    .local v0, xy:[I
    invoke-direct {p0, p1, v0, v2, v2}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2349
    aget v1, v0, v3

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 2350
    aget v1, v0, v2

    iput v1, p1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move v1, v2

    .line 2353
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
    .line 2357
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
    .locals 5
    .parameter "cellInfo"
    .parameter "xy"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "showMessage"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2361
    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2362
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v2, "launcher.add_occupied_cells"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v1

    move-object v0, v1

    .line 2364
    .local v0, occupied:[Z
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object p1

    .line 2365
    if-eqz p1, :cond_2

    invoke-virtual {p1, p2, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2366
    if-nez p5, :cond_1

    move v1, v3

    .line 2371
    .end local v0           #occupied:[Z
    :goto_1
    return v1

    .line 2362
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 2367
    .restart local v0       #occupied:[Z
    :cond_1
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v1, v3

    .line 2368
    goto :goto_1

    .end local v0           #occupied:[Z
    :cond_2
    move v1, v4

    .line 2371
    goto :goto_1
.end method

.method static getScreen()I
    .locals 2

    .prologue
    .line 715
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 716
    :try_start_0
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    monitor-exit v0

    return v1

    .line 717
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
    .line 1080
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folderInfo"

    .prologue
    .line 3059
    iget-boolean v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    if-nez v2, :cond_1

    .line 3061
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3063
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3085
    :cond_0
    :goto_0
    return-void

    .line 3066
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getFolderForTag(Ljava/lang/Object;)Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v1

    .line 3068
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v1, :cond_2

    .line 3069
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getScreenForView(Landroid/view/View;)I

    move-result v0

    .line 3071
    .local v0, folderScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V

    .line 3072
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 3074
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3076
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0

    .line 3080
    .end local v0           #folderScreen:I
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    .line 3082
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method private isTestMode()Z
    .locals 2

    .prologue
    .line 935
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
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 985
    new-array v4, v8, [B

    .line 987
    .local v4, status:[B
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/sec/switch/tethering"

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 988
    .local v3, input:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileInputStream;->read([BII)I

    .line 989
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 995
    .end local v3           #input:Ljava/io/FileInputStream;
    :goto_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    .line 996
    .local v0, check:Ljava/lang/String;
    const-string v5, "MTP-LAUNCHER"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Tethering status = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v5, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 1000
    :goto_1
    return v5

    .line 990
    .end local v0           #check:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 991
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 992
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 993
    .local v2, f:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .end local v2           #f:Ljava/io/IOException;
    .restart local v0       #check:Ljava/lang/String;
    :cond_0
    move v5, v9

    .line 1000
    goto :goto_1
.end method

.method private launchMtpApp(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "usb_setting_mode"

    const-string v9, "mtp_usb_connection_status"

    const-string v6, "media_player_mode"

    .line 940
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 941
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v5, "mtp_usb_connection_status"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    .line 942
    const-string v5, "Launcher"

    const-string v6, "MTP-LAUNCHER: media scanning not yet finished . "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_0
    :goto_0
    return-void

    .line 946
    :cond_1
    const/4 v3, 0x0

    .line 947
    .local v3, isMtpSelected:Z
    const/4 v4, 0x0

    .line 948
    .local v4, isUsbConncted:Z
    const/4 v2, 0x0

    .line 962
    .local v2, isAskOnConnectionMTPMode:Z
    const-string v5, "mtp_usb_conditions_met"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_0

    .line 966
    const-string v5, "mtp_usb_connection_status"

    invoke-static {v0, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v8, :cond_2

    const/4 v4, 0x1

    .line 967
    :cond_2
    const-string v5, "media_player_mode"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_3

    const-string v5, "media_player_mode"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    :cond_3
    const/4 v2, 0x1

    .line 968
    :cond_4
    const-string v5, "usb_setting_mode"

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_5

    const-string v5, "usb_setting_mode"

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    .line 969
    :cond_5
    const-string v5, "adb_enabled"

    invoke-static {v0, v5, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_6

    const/4 v3, 0x1

    .line 972
    :cond_6
    if-nez v2, :cond_7

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 974
    :cond_7
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isTetheringEnabled()Z

    move-result v5

    if-ne v5, v8, :cond_8

    .line 975
    const-string v5, "MTP-LAUNCHER"

    const-string v6, "Tethering is enabled. dont launch MTP"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 978
    :cond_8
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 979
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.MtpApplication"

    const-string v6, "com.android.MtpApplication.MtpApplication"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 980
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private makeBitmapMenuWallpaper()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4814
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 4823
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 4825
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4826
    .local v1, canvas:Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4827
    const/16 v2, 0x99

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 4829
    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher$WallpaperFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 4831
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    :cond_0
    return-void
.end method

.method private makeNoPreviewImage([II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "spans"
    .parameter "type"

    .prologue
    const/high16 v12, 0x4000

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 4595
    move-object v2, p0

    .line 4596
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aget v8, p1, v9

    mul-int v6, v7, v8

    .line 4597
    .local v6, width:I
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f080005

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    aget v8, p1, v10

    mul-int v4, v7, v8

    .line 4598
    .local v4, height:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4600
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 4601
    .local v5, paint:Landroid/graphics/Paint;
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 4602
    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 4603
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f08001b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4605
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4607
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020002

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4608
    .local v3, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v9, v9, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4609
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4611
    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 4614
    if-ne p2, v10, :cond_0

    .line 4615
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-virtual {v1, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 4620
    :goto_0
    return-object v0

    .line 4617
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iget-object v7, v7, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    div-int/lit8 v8, v6, 0x2

    int-to-float v8, v8

    div-int/lit8 v9, v4, 0x2

    int-to-float v9, v9

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v10

    invoke-virtual {v5}, Landroid/graphics/Paint;->descent()F

    move-result v11

    add-float/2addr v10, v11

    div-float/2addr v10, v12

    sub-float/2addr v9, v10

    invoke-virtual {v1, v7, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private onAppWidgetReset()V
    .locals 2

    .prologue
    .line 2620
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 2621
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 2625
    :goto_0
    return-void

    .line 2623
    :cond_0
    const-string v0, "Launcher"

    const-string v1, "onAppWidgetReset() : DISCARD widget reset. Launcher destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onBadgeChanged()V
    .locals 13

    .prologue
    const-string v0, "onBadgeChanged() "

    const-string v0, "Launcher"

    .line 2644
    const/4 v8, 0x0

    .line 2647
    .local v8, cursor:Landroid/database/Cursor;
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

    move-result-object v8

    .line 2656
    :goto_0
    if-nez v8, :cond_0

    .line 2687
    :goto_1
    return-void

    .line 2648
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 2649
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBadgeChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2652
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    throw v0

    .line 2650
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 2651
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBadgeChanged() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 2658
    .end local v9           #e:Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 2660
    .local v12, updatedApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2662
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 2663
    .local v11, packageName:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2664
    .local v7, className:Ljava/lang/String;
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 2667
    .local v6, badgeCount:I
    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    .line 2668
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual {v10, v11, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2670
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/sec/android/app/twlauncher/BadgeCache;->setBadgeCount(Landroid/content/ComponentName;I)V

    .line 2672
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2673
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2676
    .end local v6           #badgeCount:I
    .end local v7           #className:Ljava/lang/String;
    .end local v10           #intent:Landroid/content/Intent;
    .end local v11           #packageName:Ljava/lang/String;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    .line 2680
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/MenuManager;->updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V

    .line 2681
    invoke-virtual {v12}, Ljava/util/ArrayList;->clear()V

    .line 2683
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0, v12}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateBadgeCount(Ljava/util/List;)V

    .line 2685
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    .line 2686
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateTopfourBadge()V

    goto/16 :goto_1
.end method

.method private openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 8
    .parameter "folderInfo"

    .prologue
    const/4 v3, 0x0

    .line 3097
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v0, :cond_1

    .line 3098
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/UserFolder;->fromXml(Landroid/content/Context;)Lcom/sec/android/app/twlauncher/UserFolder;

    move-result-object v1

    .line 3105
    .local v1, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Folder;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 3106
    invoke-virtual {v1, p0}, Lcom/sec/android/app/twlauncher/Folder;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 3108
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/Folder;->bind(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 3109
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 3111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 3112
    .local v7, screen:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->screen:I

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getShortAxisCells()I

    move-result v5

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getLongAxisCells()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 3113
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Folder;->onOpen()V

    .line 3114
    .end local v1           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    .end local v7           #screen:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void

    .line 3099
    :cond_1
    instance-of v0, p1, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-eqz v0, :cond_0

    .line 3100
    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LiveFolder;->fromXml(Landroid/content/Context;Lcom/sec/android/app/twlauncher/FolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolder;

    move-result-object v1

    .restart local v1       #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    goto :goto_0
.end method

.method private pickShortcut(II)V
    .locals 7
    .parameter "requestCode"
    .parameter "title"

    .prologue
    .line 3349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3351
    .local v0, bundle:Landroid/os/Bundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3352
    .local v3, shortcutNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const v4, 0x7f0a0013

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3353
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3355
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3356
    .local v2, shortcutIcons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/Intent$ShortcutIconResource;>;"
    const v4, 0x7f020049

    invoke-static {p0, v4}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3358
    const-string v4, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3360
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3361
    .local v1, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3362
    const-string v4, "android.intent.extra.TITLE"

    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 3363
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 3365
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 3366
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

    .line 4493
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4495
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 4496
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAppWidget()V

    .line 4504
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->initAddWidget()V

    .line 4505
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4507
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4509
    const/4 v0, -0x1

    .line 4510
    .local v0, blankscreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    .line 4511
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v2

    .line 4515
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->setAtuoScrollScreen(I)V

    .line 4516
    .end local v0           #blankscreen:I
    :goto_2
    return-void

    .line 4497
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 4498
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->previewAddSamsungWidget()V

    goto :goto_0

    .line 4500
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto :goto_2

    .line 4512
    .restart local v0       #blankscreen:I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v1, v1, v4

    if-eq v1, v3, :cond_0

    .line 4513
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aget v0, v1, v4

    goto :goto_1
.end method

.method private previewAppWidget()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 1446
    iget v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    if-nez v6, :cond_1

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1475
    :goto_0
    return-void

    .line 1451
    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 1452
    .local v0, appWidgetId:I
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 1453
    .local v5, spans:[I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 1456
    .local v1, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    new-instance v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {v4, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;-><init>(I)V

    .line 1457
    .local v4, launcherInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    aget v6, v5, v11

    iput v6, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    .line 1458
    const/4 v6, 0x1

    aget v6, v5, v6

    iput v6, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    .line 1461
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v6, p0, v0, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v6

    iput-object v6, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1463
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, v0, v1}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 1464
    iget-object v6, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v6, v4}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 1466
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1467
    .local v3, cellWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1469
    .local v2, cellHeight:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v7, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    new-instance v8, Landroid/view/ViewGroup$LayoutParams;

    iget v9, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    mul-int/2addr v9, v3

    iget v10, v4, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    mul-int/2addr v10, v2

    invoke-direct {v8, v9, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1472
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 1474
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    goto :goto_0
.end method

.method private static readConfiguration(Landroid/content/Context;Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;)V
    .locals 4
    .parameter "context"
    .parameter "configuration"

    .prologue
    .line 669
    const/4 v0, 0x0

    .line 671
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

    .line 672
    .end local v0           #in:Ljava/io/DataInputStream;
    .local v1, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    .line 673
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    .line 674
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    iput v2, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 680
    if-eqz v1, :cond_2

    .line 682
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v0, v1

    .line 688
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    :cond_0
    :goto_0
    return-void

    .line 683
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 685
    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_0

    .line 675
    :catch_1
    move-exception v2

    .line 680
    :goto_1
    if-eqz v0, :cond_0

    .line 682
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 683
    :catch_2
    move-exception v2

    goto :goto_0

    .line 677
    :catch_3
    move-exception v2

    .line 680
    :goto_2
    if-eqz v0, :cond_0

    .line 682
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    .line 683
    :catch_4
    move-exception v2

    goto :goto_0

    .line 680
    :catchall_0
    move-exception v2

    :goto_3
    if-eqz v0, :cond_1

    .line 682
    :try_start_5
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 685
    :cond_1
    :goto_4
    throw v2

    .line 683
    :catch_5
    move-exception v3

    goto :goto_4

    .line 680
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 677
    .end local v0           #in:Ljava/io/DataInputStream;
    .restart local v1       #in:Ljava/io/DataInputStream;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1           #in:Ljava/io/DataInputStream;
    .restart local v0       #in:Ljava/io/DataInputStream;
    goto :goto_2

    .line 675
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

    .line 2429
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2431
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherProvider;->CONTENT_APPWIDGET_RESET_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2433
    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 2435
    return-void
.end method

.method private registerIntentReceivers()V
    .locals 2

    .prologue
    .line 2404
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 2405
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2408
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2409
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2410
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2411
    const-string v1, "android.intent.action.MULTI_CSC_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2412
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2414
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2415
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2416
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2418
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2419
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONTACT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2420
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiverContactChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2422
    return-void
.end method

.method private registerSelectiveResetReceiver()V
    .locals 2

    .prologue
    .line 5325
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SELECTIVE_RESET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 5326
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/Launcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 5327
    return-void
.end method

.method private restoreState(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedState"

    .prologue
    .line 1095
    if-nez p1, :cond_1

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1099
    :cond_1
    const-string v9, "launcher.delete_application"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    sput-object v9, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1101
    const-string v9, "launcher.current_screen"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1102
    .local v3, currentScreen:I
    const/4 v9, -0x1

    if-le v3, v9, :cond_2

    .line 1103
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9, v3}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1106
    :cond_2
    const-string v9, "launcher.menu_mode"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 1107
    .local v7, mmMode:I
    const/4 v9, 0x2

    if-ne v7, v9, :cond_3

    .line 1108
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 1111
    :cond_3
    const-string v9, "launcher.menu_current_screen"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 1112
    .local v6, mmCurrentScreen:I
    const/4 v9, -0x1

    if-le v6, v9, :cond_4

    .line 1113
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    .line 1116
    :cond_4
    const-string v9, "launcher.add_screen"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 1117
    .local v1, addScreen:I
    const/4 v9, -0x1

    if-le v1, v9, :cond_5

    .line 1118
    new-instance v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {v9}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;-><init>()V

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1119
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1120
    .local v0, addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1121
    iput v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1122
    const-string v9, "launcher.add_cellX"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    .line 1123
    const-string v9, "launcher.add_cellY"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    .line 1124
    const-string v9, "launcher.add_spanX"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    .line 1125
    const-string v9, "launcher.add_spanY"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    .line 1126
    const-string v9, "launcher.add_occupied_cells"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v9

    const-string v10, "launcher.add_countX"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "launcher.add_countY"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findVacantCellsFromOccupied([ZII)V

    .line 1130
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1133
    .end local v0           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    :cond_5
    const-string v9, "launcher.rename_folder"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 1134
    .local v8, renameFolder:Z
    if-eqz v8, :cond_6

    .line 1135
    const-string v9, "launcher.rename_folder_id"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1136
    .local v4, id:J
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    sget-object v10, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v9, p0, v10, v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v9

    iput-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1137
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 1140
    .end local v4           #id:J
    :cond_6
    const-string v9, "launcher.all_apps_folder"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1141
    .local v2, allApps:Z
    if-eqz v2, :cond_7

    .line 1142
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->open()V

    .line 1145
    :cond_7
    const-string v9, "launcher.quick_navigation"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1147
    iget v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1149
    iget-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    if-nez v9, :cond_8

    .line 1150
    const-string v9, "Launcher"

    const-string v10, "MainMenu loading is already finished. opening QuickViewMainMenu in restoreState()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 1152
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 1160
    :cond_8
    :goto_1
    const-string v9, "launcher.menu_screen_count"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    .line 1162
    const-string v9, "launcher.delete_index"

    const/4 v10, -0x1

    invoke-virtual {p1, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    .line 1163
    iget v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    if-ltz v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    goto/16 :goto_0

    .line 1154
    :cond_9
    iget v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    if-nez v9, :cond_8

    .line 1155
    const-string v9, "Launcher"

    const-string v10, "opening QuickViewWorkspace in restoreState()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    .line 1157
    const/4 v9, -0x1

    iput v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_1
.end method

.method private sendFakeCall(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4223
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x19

    if-eq v2, v3, :cond_1

    :cond_0
    move v2, v4

    .line 4237
    :goto_0
    return v2

    .line 4227
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "fakecall_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_2

    move v1, v5

    .line 4230
    .local v1, isFakeCallEnabled:Z
    :goto_1
    if-nez v1, :cond_3

    move v2, v4

    .line 4231
    goto :goto_0

    .end local v1           #isFakeCallEnabled:Z
    :cond_2
    move v1, v4

    .line 4227
    goto :goto_1

    .line 4233
    .restart local v1       #isFakeCallEnabled:Z
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.phone.FakeCall"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4234
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4235
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v2, v5

    .line 4237
    goto :goto_0
.end method

.method static setScreen(I)V
    .locals 2
    .parameter "screen"

    .prologue
    .line 721
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 722
    :try_start_0
    sput p0, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 723
    monitor-exit v0

    .line 724
    return-void

    .line 723
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setSelectiveReset2ndAck()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "firstboot"

    .line 5330
    const-string v3, "launcher"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 5331
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v3, "firstboot"

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 5333
    .local v1, isFirst:Z
    if-nez v1, :cond_0

    .line 5334
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5335
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "firstboot"

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 5336
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 5338
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method

.method private setSomethingsInDefaultIMEI()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string v7, "ro.build.PDA"

    const-string v6, "Not Available"

    .line 544
    const-string v3, "ro.build.PDA"

    const-string v3, "Not Available"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 545
    .local v2, pdabootver:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "uartapcpmode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 546
    .local v0, currentUart:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "usbapcpmode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 548
    .local v1, currentUsb:I
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->mIsDefaultIMEI:Z

    .line 549
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

    .line 550
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

    .line 551
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

    .line 552
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

    .line 553
    if-nez v0, :cond_0

    const-string v3, "UART: MODEM"

    :goto_0
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUART:Ljava/lang/String;

    .line 554
    if-nez v1, :cond_1

    const-string v3, "USB: MODEM"

    :goto_1
    sput-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUSB:Ljava/lang/String;

    .line 555
    return-void

    .line 553
    :cond_0
    const-string v3, "UART: PDA"

    goto :goto_0

    .line 554
    :cond_1
    const-string v3, "USB: PDA"

    goto :goto_1
.end method

.method private setWallpaperDimension()V
    .locals 7

    .prologue
    .line 749
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 751
    .local v4, wpm:Landroid/app/WallpaperManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 752
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_1

    const/4 v5, 0x1

    move v2, v5

    .line 754
    .local v2, isPortrait:Z
    :goto_0
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v3, v5

    .line 755
    .local v3, width:I
    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v1, v5

    .line 756
    .local v1, height:I
    :goto_2
    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, v5, v1}, Landroid/app/WallpaperManager;->suggestDesiredDimensions(II)V

    .line 758
    sget-object v5, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    if-eqz v5, :cond_0

    .line 759
    mul-int/lit8 v5, v3, 0x2

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    sput-object v5, Lcom/sec/android/app/twlauncher/Launcher;->mMenuWallpaperBitmap:Landroid/graphics/Bitmap;

    .line 761
    :cond_0
    return-void

    .line 752
    .end local v1           #height:I
    .end local v2           #isPortrait:Z
    .end local v3           #width:I
    :cond_1
    const/4 v5, 0x0

    move v2, v5

    goto :goto_0

    .line 754
    .restart local v2       #isPortrait:Z
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v5

    move v3, v5

    goto :goto_1

    .line 755
    .restart local v3       #width:I
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    move v1, v5

    goto :goto_2
.end method

.method private setupViews()V
    .locals 15

    .prologue
    const/4 v14, -0x1

    .line 1174
    const v11, 0x7f06000e

    invoke-virtual {p0, v11}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/DragLayer;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1175
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    .line 1177
    .local v3, dragLayer:Lcom/sec/android/app/twlauncher/DragLayer;
    const v11, 0x7f060010

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/Workspace;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1178
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1180
    .local v10, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    const v11, 0x7f060011

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/MenuDrawer;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1181
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    .line 1183
    .local v6, menudrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;
    const v11, 0x7f060012

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1184
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1186
    .local v7, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    const v11, 0x7f060014

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/DeleteZone;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    .line 1188
    const v11, 0x7f060013

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1189
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1190
    .local v0, appShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1191
    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1193
    const v11, 0x7f06001b

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/TopFourZone;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    .line 1194
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v11, :cond_0

    .line 1195
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    .line 1196
    .local v9, topFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;
    invoke-virtual {v9, p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1200
    .end local v9           #topFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;
    :cond_0
    invoke-virtual {v7, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1201
    invoke-virtual {v7, p0}, Lcom/sec/android/app/twlauncher/MenuManager;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1202
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->loadMenuMode()I

    move-result v11

    invoke-virtual {v7, v11}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 1204
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "screencount"

    sget v13, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 1206
    .local v8, screenCount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 1207
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030013

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1208
    .local v1, cell:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 1210
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1211
    .local v5, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v5, :cond_1

    .line 1212
    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v5, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1214
    .restart local v5       #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-virtual {v10, v1, v5}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1206
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1216
    .end local v1           #cell:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v12, "currentscreen"

    invoke-interface {v11, v12, v14}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1217
    .local v2, currentScreen:I
    if-eq v2, v14, :cond_3

    if-lt v2, v8, :cond_4

    .line 1219
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v2

    .line 1224
    :cond_4
    sput v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1226
    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1227
    invoke-virtual {v10, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1228
    invoke-virtual {v10, v3}, Lcom/sec/android/app/twlauncher/Workspace;->setDragger(Lcom/sec/android/app/twlauncher/DragController;)V

    .line 1229
    invoke-virtual {v10, p0}, Lcom/sec/android/app/twlauncher/Workspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1231
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v11, p0}, Lcom/sec/android/app/twlauncher/DeleteZone;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1232
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v11, v3}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragController(Lcom/sec/android/app/twlauncher/DragLayer;)V

    .line 1233
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    iget-object v12, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v11, v12}, Lcom/sec/android/app/twlauncher/DeleteZone;->setHandle(Landroid/view/View;)V

    .line 1235
    invoke-virtual {v3, v6}, Lcom/sec/android/app/twlauncher/DragLayer;->setIgnoredDropTarget(Landroid/view/View;)V

    .line 1236
    invoke-virtual {v3, v10}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1237
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1238
    invoke-virtual {v3, v7}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuScoller(Lcom/sec/android/app/twlauncher/DragScroller;)V

    .line 1241
    const v11, 0x7f060019

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    .line 1242
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v11, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1244
    const v11, 0x7f06001a

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    .line 1245
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v11, p0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 1247
    const v11, 0x7f060016

    invoke-virtual {v3, v11}, Lcom/sec/android/app/twlauncher/DragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/sec/android/app/twlauncher/WidgetPreview;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    .line 1249
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkHwNaviKey()V

    .line 1250
    return-void
.end method

.method private showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 1
    .parameter "cellInfo"

    .prologue
    const/4 v0, 0x1

    .line 3343
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3344
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 3345
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3346
    return-void
.end method

.method private showNotifications()V
    .locals 2

    .prologue
    .line 2375
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2376
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 2377
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->expand()V

    .line 2379
    :cond_0
    return-void
.end method

.method private startWallpaper()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2382
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2383
    .local v2, pickWallpaper:Landroid/content/Intent;
    const v5, 0x7f0a0003

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 2385
    .local v0, chooser:Landroid/content/Intent;
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 2387
    .local v4, wm:Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 2388
    .local v3, wi:Landroid/app/WallpaperInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2389
    new-instance v1, Landroid/content/pm/LabeledIntent;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f0a0007

    invoke-direct {v1, v5, v6, v7}, Landroid/content/pm/LabeledIntent;-><init>(Ljava/lang/String;II)V

    .line 2391
    .local v1, li:Landroid/content/pm/LabeledIntent;
    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/WallpaperInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/LabeledIntent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2392
    const-string v5, "android.intent.extra.INITIAL_INTENTS"

    const/4 v6, 0x1

    new-array v6, v6, [Landroid/content/Intent;

    aput-object v1, v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2394
    .end local v1           #li:Landroid/content/pm/LabeledIntent;
    :cond_0
    const/16 v5, 0xa

    invoke-virtual {p0, v0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2395
    return-void
.end method

.method private unbindDesktopItems()V
    .locals 3

    .prologue
    .line 2632
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

    .line 2633
    .local v1, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->unbind()V

    goto :goto_0

    .line 2635
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

    .line 691
    const/4 v1, 0x0

    .line 693
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

    .line 694
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    :try_start_1
    iget-object v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->locale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 695
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mcc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 696
    iget v3, p1, Lcom/sec/android/app/twlauncher/Launcher$LocaleConfiguration;->mnc:I

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 697
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 704
    if-eqz v2, :cond_2

    .line 706
    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 712
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 707
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 709
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_0

    .line 698
    :catch_1
    move-exception v3

    .line 704
    :goto_1
    if-eqz v1, :cond_0

    .line 706
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 707
    :catch_2
    move-exception v3

    goto :goto_0

    .line 700
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 702
    .local v0, e:Ljava/io/IOException;
    :goto_2
    :try_start_4
    const-string v3, "launcher.preferences"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 704
    if-eqz v1, :cond_0

    .line 706
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_0

    .line 707
    :catch_4
    move-exception v3

    goto :goto_0

    .line 704
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v1, :cond_1

    .line 706
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 709
    :cond_1
    :goto_4
    throw v3

    .line 707
    :catch_5
    move-exception v4

    goto :goto_4

    .line 704
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_3

    .line 700
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_6
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_2

    .line 698
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
    .locals 12
    .parameter "data"

    .prologue
    const/4 v10, 0x5

    const/4 v9, -0x1

    const-string v11, "appWidgetId"

    .line 2091
    const-string v7, "appWidgetId"

    invoke-virtual {p1, v11, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2093
    .local v1, appWidgetId:I
    const-string v7, "custom_widget"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2095
    .local v2, customWidget:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 2096
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getWidgetItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 2097
    .local v5, samsungWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    .line 2098
    .local v6, sawi:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v6, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2101
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v7, v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 2103
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V

    .line 2122
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #samsungWidgets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;>;"
    .end local v6           #sawi:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    :goto_0
    return-void

    .line 2109
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v7, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 2111
    .local v0, appWidget:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v7, :cond_2

    .line 2113
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.appwidget.action.APPWIDGET_CONFIGURE"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2114
    .local v4, intent:Landroid/content/Intent;
    iget-object v7, v0, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2115
    const-string v7, "appWidgetId"

    invoke-virtual {v4, v11, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2117
    invoke-virtual {p0, v4, v10}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 2120
    .end local v4           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v10, v9, p1}, Lcom/sec/android/app/twlauncher/Launcher;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method addFolder()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 2256
    new-instance v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    invoke-direct {v1}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 2257
    .local v1, folderInfo:Lcom/sec/android/app/twlauncher/UserFolderInfo;
    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->title:Ljava/lang/CharSequence;

    .line 2259
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2260
    .local v9, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    iput v0, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 2261
    invoke-direct {p0, v9}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2277
    :goto_0
    return-void

    .line 2264
    :cond_0
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    iget v5, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2266
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v4, v1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2269
    const v2, 0x7f030007

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v2, p0, v0, v1}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v3

    .line 2271
    .local v3, newFolder:Lcom/sec/android/app/twlauncher/FolderIcon;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v4, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v5, v9, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v8

    move v6, v10

    move v7, v10

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIIIZ)V

    goto :goto_0
.end method

.method addLiveFolder(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 2245
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2246
    .local v0, folderName:Ljava/lang/String;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2248
    .local v1, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2249
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addFolder()V

    .line 2253
    :goto_0
    return-void

    .line 2251
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {p0, p1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;I)V
    .locals 12
    .parameter "info"
    .parameter "screen"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 4407
    if-nez p1, :cond_1

    .line 4408
    const-string v0, "Launcher"

    const-string v2, "addSamsungWidget(..) : SamsungWidget is a null"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 4432
    :cond_0
    :goto_0
    return-void

    .line 4413
    :cond_1
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4414
    .local v10, xy:[I
    iget v8, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    .line 4415
    .local v8, spanX:I
    iget v9, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    .line 4417
    .local v9, spanY:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4418
    const-wide/16 v2, -0x64

    aget v5, v10, v7

    aget v6, v10, v11

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 4421
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 4422
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 4424
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    aget v3, v10, v7

    aget v4, v10, v11

    move v2, p2

    move v5, v8

    move v6, v9

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 4425
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 4426
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_0
.end method

.method addSamsungWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)V
    .locals 14
    .parameter "item"

    .prologue
    .line 2125
    if-nez p1, :cond_1

    .line 2208
    :cond_0
    :goto_0
    return-void

    .line 2126
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-result-object v1

    .line 2128
    .local v1, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    if-nez v1, :cond_2

    .line 2129
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget() : SamsungWidget is a null"

    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2133
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v0, v2, :cond_4

    .line 2134
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2137
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 2139
    .local v8, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v8, :cond_6

    .line 2140
    const-string v0, "Launcher"

    const-string v1, "addSamsungWidget() : cellInfo is a null"

    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2142
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_5

    .line 2143
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 2147
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2145
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 2151
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v2, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2152
    .local v10, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v10, :cond_8

    .line 2153
    const-string v0, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addSamsungWidget() : CellLayout is a null("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_7

    .line 2156
    const v0, 0x7f0a0039

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 2160
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2158
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 2164
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_8
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getWidth(I)I

    move-result v0

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;->getHeight(I)I

    move-result v2

    invoke-virtual {v10, v0, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v12

    .line 2166
    .local v12, spans:[I
    iget-object v13, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 2168
    .local v13, xy:[I
    const/4 v0, 0x0

    aget v0, v12, v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    .line 2169
    const/4 v0, 0x1

    aget v0, v12, v0

    iput v0, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    .line 2171
    const/4 v0, 0x0

    aget v0, v12, v0

    const/4 v2, 0x1

    aget v2, v12, v2

    invoke-direct {p0, v8, v13, v0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v0

    if-nez v0, :cond_b

    .line 2172
    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2173
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, v12, v2

    .end local v1           #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    aput v2, v0, v1

    .line 2174
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, v12, v2

    aput v2, v0, v1

    .line 2176
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 2177
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAllPageSlot(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2178
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    goto/16 :goto_0

    .line 2180
    :cond_9
    const/4 v11, -0x1

    .line 2181
    .local v11, screen:I
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2182
    .local v9, count:I
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v9, v0, :cond_a

    .line 2183
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->createBlankPage()I

    .line 2184
    move v11, v9

    .line 2186
    :cond_a
    const/4 v0, 0x3

    invoke-direct {p0, v0, v11}, Lcom/sec/android/app/twlauncher/Launcher;->prepareWidgetPreview(II)V

    goto/16 :goto_0

    .line 2191
    .end local v9           #count:I
    .end local v11           #screen:I
    .restart local v1       #info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2192
    const-wide/16 v2, -0x64

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v4

    const/4 v0, 0x0

    aget v5, v13, v0

    const/4 v0, 0x1

    aget v6, v13, v0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 2195
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 2196
    .local v3, view:Landroid/view/View;
    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 2198
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v0, 0x0

    aget v4, v13, v0

    const/4 v0, 0x1

    aget v5, v13, v0

    const/4 v0, 0x0

    aget v6, v12, v0

    const/4 v0, 0x1

    aget v7, v12, v0

    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInCurrentScreen(Landroid/view/View;IIII)V

    .line 2205
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v0, :cond_0

    .line 2206
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v0, p0, v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_0
.end method

.method public addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1527
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1531
    return-void
.end method

.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 3
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
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const-string v2, "Launcher"

    .line 5212
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->setApps(Ljava/util/ArrayList;)V

    .line 5213
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    .line 5215
    const-string v0, "Launcher"

    const-string v0, "Main menu binding finished"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5217
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 5218
    const-string v0, "Launcher"

    const-string v0, "opening QuickViewMainMenu in bindAllApplications()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5219
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 5220
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    .line 5225
    :cond_0
    return-void
.end method

.method public bindAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 14
    .parameter "item"

    .prologue
    const-string v13, "Launcher"

    .line 5016
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 5018
    .local v11, start:J
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5022
    .local v0, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v8, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 5023
    .local v8, appWidgetId:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v1, v8}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v9

    .line 5025
    .local v9, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v9, :cond_1

    .line 5027
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget(). appWidget id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5029
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    if-eqz v1, :cond_0

    .line 5030
    move-object v10, p1

    .line 5031
    .local v10, infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    iget-object v1, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v1, :cond_0

    .line 5032
    iget-object v1, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, v10, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->removeInScreen(Landroid/view/View;I)V

    .line 5058
    .end local v10           #infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;
    :cond_0
    :goto_0
    return-void

    .line 5039
    :cond_1
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindAppWidget: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v9, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5042
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, p0, v8, v9}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILandroid/appwidget/AppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v1

    iput-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 5044
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v8, v9}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 5045
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, p1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    .line 5047
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v2, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5050
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5052
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5055
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bound widget id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v11

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .line 5228
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 5243
    :goto_0
    return-void

    .line 5231
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5233
    if-eqz p1, :cond_1

    .line 5234
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5235
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5236
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 5237
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->addAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 5235
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5241
    .end local v0           #N:I
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 5242
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
    .line 5246
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v3, :cond_0

    .line 5264
    :goto_0
    return-void

    .line 5249
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5251
    if-eqz p1, :cond_1

    .line 5252
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5253
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 5254
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 5255
    .local v1, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-static {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->removeAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .line 5253
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 5259
    .end local v0           #N:I
    .end local v1           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #i:I
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v3, :cond_2

    .line 5260
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeItems(Ljava/util/ArrayList;)V

    .line 5262
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/Workspace;->removeItems(Ljava/util/ArrayList;)V

    .line 5263
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
    .line 5267
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 5276
    :goto_0
    return-void

    .line 5270
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->removeDialog(I)V

    .line 5271
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v0, :cond_1

    .line 5272
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5274
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->updateShortcuts(Ljava/util/ArrayList;)V

    .line 5275
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
    .line 5006
    .local p1, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 5007
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 5008
    return-void
.end method

.method public bindItems(Ljava/util/ArrayList;II)V
    .locals 19
    .parameter
    .parameter "start"
    .parameter "end"
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
    .line 4962
    .local p1, shortcuts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    move-object v4, v0

    .line 4964
    .local v4, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    move/from16 v16, p2

    .end local p2
    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p3

    if-ge v0, v1, :cond_2

    .line 4965
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/ItemInfo;

    .line 4966
    .local v17, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4967
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    move v6, v0

    packed-switch v6, :pswitch_data_0

    .line 4964
    .end local v17           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 4970
    .restart local v17       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :pswitch_0
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    .line 4972
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 4973
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v6

    check-cast v17, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v17           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->loadApplication(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_1

    .line 4976
    .restart local v17       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1
    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->createShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v5

    .line 4977
    .local v5, shortcut:Landroid/view/View;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v6, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move v7, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v8, v0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 4982
    .end local v5           #shortcut:Landroid/view/View;
    :pswitch_1
    const v6, 0x7f030007

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object/from16 v18, v0

    move v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/FolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/UserFolderInfo;)Lcom/sec/android/app/twlauncher/FolderIcon;

    move-result-object v7

    .line 4985
    .local v7, newFolder:Lcom/sec/android/app/twlauncher/FolderIcon;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v8, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move v9, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v10, v0

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object v6, v4

    invoke-virtual/range {v6 .. v13}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto :goto_1

    .line 4989
    .end local v7           #newFolder:Lcom/sec/android/app/twlauncher/FolderIcon;
    :pswitch_2
    const v6, 0x7f03000d

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-object/from16 v18, v0

    move v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LiveFolderIcon;->fromXml(ILcom/sec/android/app/twlauncher/Launcher;Landroid/view/ViewGroup;Lcom/sec/android/app/twlauncher/LiveFolderInfo;)Lcom/sec/android/app/twlauncher/LiveFolderIcon;

    move-result-object v9

    .line 4993
    .local v9, newLiveFolder:Lcom/sec/android/app/twlauncher/FolderIcon;
    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    move v10, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    move v11, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    move v12, v0

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v8, v4

    invoke-virtual/range {v8 .. v15}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    goto/16 :goto_1

    .line 4999
    .end local v9           #newLiveFolder:Lcom/sec/android/app/twlauncher/FolderIcon;
    .end local v17           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_2
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5000
    return-void

    .line 4967
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
    .locals 14
    .parameter "info"

    .prologue
    const/4 v5, -0x2

    const/4 v7, 0x0

    .line 5088
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 5090
    .local v12, start:J
    const-string v2, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindSamsungAppWidget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 5094
    .local v0, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v9, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->intent:Landroid/content/Intent;

    .line 5095
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    .line 5097
    .local v8, cn:Landroid/content/ComponentName;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->findWidget(Ljava/lang/String;Ljava/lang/String;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;

    move-result-object v10

    .line 5098
    .local v10, item:Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;
    if-eqz v10, :cond_2

    .line 5099
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2, p0, v10, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->createWidget(Landroid/content/Context;Lcom/sec/android/app/twlauncher/SamsungAppWidgetItem;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 5101
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 5102
    .local v1, view:Landroid/view/View;
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 5104
    iget v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5107
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    .line 5109
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v2

    iget v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    if-ne v2, v3, :cond_0

    .line 5111
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    if-eqz v2, :cond_0

    .line 5112
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v2, p0, p1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->resumeWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 5130
    .end local v1           #view:Landroid/view/View;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5133
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5134
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    .line 5137
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mConfigChange:Z

    .line 5138
    return-void

    .line 5116
    :cond_2
    new-instance v1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;)V

    .line 5117
    .local v1, view:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v11, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5119
    .local v11, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 5120
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getErrorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v11}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5121
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->setTag(Ljava/lang/Object;)V

    .line 5122
    iput-object v1, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    .line 5124
    iget v2, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->screen:I

    iget v3, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellX:I

    iget v4, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->cellY:I

    iget v5, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    iget v6, p1, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5127
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->requestLayout()V

    goto :goto_0
.end method

.method cancelAddWidget()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 4563
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4564
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4565
    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 4566
    :cond_0
    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4567
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 4568
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLauncherAppWidgetInfo:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    .line 4576
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 4577
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4579
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->stopAutoScrollRunnable()V

    .line 4580
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    .line 4581
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 4582
    return-void

    .line 4569
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4570
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v1, :cond_4

    .line 4571
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/LocalActivityManager;->destroyActivity(Ljava/lang/String;Z)Landroid/view/Window;

    .line 4573
    :cond_4
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    goto :goto_0
.end method

.method cancelRemovePage()V
    .locals 1

    .prologue
    .line 4111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDeleteView()V

    .line 4114
    return-void
.end method

.method checkMoreContents()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4441
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4442
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 4443
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4444
    const/4 v2, 0x1

    .line 4446
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method checkWidgetSpace(I)Z
    .locals 9
    .parameter "screen"

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 4519
    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4520
    .local v3, type:I
    if-eq v3, v8, :cond_0

    const/4 v5, 0x2

    if-eq v3, v5, :cond_0

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2

    .line 4522
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v5, p1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4523
    .local v1, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4525
    .local v2, spans:[I
    invoke-virtual {v1, v6, v6}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4528
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4529
    .local v4, xy:[I
    if-eqz v0, :cond_1

    aget v5, v2, v7

    aget v6, v2, v8

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/sec/android/app/twlauncher/Launcher;->findSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;[III)Z

    move-result v5

    if-nez v5, :cond_1

    move v5, v7

    .line 4537
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :goto_0
    return v5

    .line 4533
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v1       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .restart local v2       #spans:[I
    .restart local v4       #xy:[I
    :cond_1
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/Launcher;->showWidgetMessage(Z)V

    move v5, v8

    .line 4534
    goto :goto_0

    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v1           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v2           #spans:[I
    .end local v4           #xy:[I
    :cond_2
    move v5, v7

    .line 4537
    goto :goto_0
.end method

.method clearAddWidget()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 4585
    iput v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4587
    iput v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetId:I

    .line 4588
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v2, v0, v1

    .line 4589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 4591
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 4592
    return-void
.end method

.method closeAllApplications()V
    .locals 1

    .prologue
    .line 3157
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->close()V

    .line 3158
    return-void
.end method

.method closeFolder(Lcom/sec/android/app/twlauncher/Folder;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2598
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sec/android/app/twlauncher/FolderInfo;->opened:Z

    .line 2599
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 2600
    .local v0, parent:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 2601
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2603
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/Folder;->onClose()V

    .line 2604
    return-void
.end method

.method closeQuickViewMainMenu()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 3238
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3256
    :goto_0
    return-void

    .line 3240
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 3241
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->close()V

    .line 3243
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->getCurrentPage()I

    move-result v0

    .line 3244
    .local v0, newMenuPage:I
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_3

    .line 3245
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v0

    .line 3251
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->setVisibility(I)V

    .line 3252
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3253
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3254
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 3255
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

    .line 3246
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v1

    if-eq v1, v0, :cond_2

    .line 3247
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeQuickViewWorkspace()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 3185
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3210
    :goto_0
    return-void

    .line 3187
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 3188
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->close()V

    .line 3190
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getCurrentPage()I

    move-result v1

    .line 3191
    .local v1, newWorkspace:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    if-lt v1, v2, :cond_4

    .line 3192
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    .line 3196
    :cond_2
    :goto_1
    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 3197
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 3199
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 3200
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3201
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3202
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3204
    move v0, v1

    .line 3205
    .local v0, newScreen:I
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/sec/android/app/twlauncher/Launcher$7;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$7;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 3193
    .end local v0           #newScreen:I
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v2, v1, :cond_2

    .line 3194
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    goto :goto_1
.end method

.method closeSystemDialogs()V
    .locals 1

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 1592
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1599
    :goto_0
    const/4 v0, 0x2

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1606
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 1607
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 1613
    :goto_2
    const/4 v0, 0x5

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 1619
    :goto_3
    const/4 v0, 0x6

    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->dismissDialog(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 1624
    :goto_4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1625
    return-void

    .line 1594
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1601
    :catch_1
    move-exception v0

    goto :goto_1

    .line 1614
    :catch_2
    move-exception v0

    goto :goto_3

    .line 1620
    :catch_3
    move-exception v0

    goto :goto_4

    .line 1608
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V
    .locals 4
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"

    .prologue
    .line 1319
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 1320
    invoke-direct {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->findSingleSlot(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1333
    :goto_0
    return-void

    .line 1322
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    .line 1325
    .local v0, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    if-eqz v0, :cond_1

    .line 1326
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const/high16 v2, 0x1020

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setActivity(Landroid/content/ComponentName;I)V

    .line 1328
    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;->container:J

    .line 1329
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v2

    invoke-virtual {v1, v0, p3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->addApplicationShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)V

    goto :goto_0

    .line 1331
    :cond_1
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t find ActivityInfo for selected application: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method completeAddWidget(I)V
    .locals 5
    .parameter "screen"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 4541
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4543
    .local v0, type:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v2

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_1

    .line 4544
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v2

    .line 4545
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    aput v2, v1, v4

    .line 4548
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/WidgetPreview;->removeAllViews()V

    .line 4550
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4551
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->completePreviewAppWidget()V

    .line 4556
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/WidgetPreview;->setVisibility(I)V

    .line 4558
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearAddWidget()V

    .line 4559
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4560
    return-void

    .line 4552
    :cond_3
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 4553
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

    .line 1300
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1302
    .local v0, favorite:Landroid/widget/TextView;
    new-instance v1, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {p3, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1305
    iget-object v1, p3, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1307
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1309
    return-object v0
.end method

.method createShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 3
    .parameter "info"

    .prologue
    .line 1286
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
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v5, " Info="

    const-string v3, "Launcher"

    .line 2442
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 2465
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2563
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 2468
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2469
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2470
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2472
    :cond_1
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent DOWN KEYCODE_BACK / MainMenu isOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Info="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 2488
    goto :goto_1

    .line 2490
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2491
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2492
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2493
    goto :goto_1

    .line 2495
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2496
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer()V

    :cond_3
    move v0, v2

    .line 2498
    goto :goto_1

    .line 2500
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2502
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2504
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v0, v2

    .line 2512
    goto :goto_1

    .line 2508
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2509
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    move v0, v2

    .line 2510
    goto :goto_1

    .line 2515
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_3
    move v0, v2

    .line 2559
    goto/16 :goto_1

    .line 2517
    :pswitch_4
    const-string v0, "Launcher"

    const-string v0, "KEYCODE_BACK launcher 2"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 2519
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2520
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2521
    goto/16 :goto_1

    .line 2524
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2525
    const-string v0, "Launcher"

    const-string v0, "oldhand dispatch key BACK mQuickWork is open"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v2

    goto/16 :goto_1

    .line 2527
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelRemovePage()V

    .line 2528
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 2529
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 2530
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->invalidate()V

    move v0, v2

    .line 2532
    goto/16 :goto_1

    .line 2535
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2536
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 2537
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawCloseAnimation()V

    .line 2538
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->invalidate()V

    move v0, v2

    .line 2540
    goto/16 :goto_1

    .line 2544
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    if-eqz v0, :cond_b

    .line 2545
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer()V

    .line 2546
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 2551
    :goto_2
    const-string v0, "Launcher"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchKeyEvent UP KEYCODE_BACK / MainMenu isOpened="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Info="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2554
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Workspace;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_a
    move v0, v2

    .line 2556
    goto/16 :goto_1

    .line 2549
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeFolder()V

    goto :goto_2

    .line 2465
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2504
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_2
    .end packed-switch

    .line 2515
    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method findAllOccupiedCells([[ZIII)V
    .locals 4
    .parameter "occupied"
    .parameter "countX"
    .parameter "countY"
    .parameter "screen"

    .prologue
    .line 5292
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    .line 5293
    .local v1, desktopItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ItemInfo;>;"
    if-eqz v1, :cond_0

    .line 5294
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 5295
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 5296
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ItemInfo;

    invoke-direct {p0, p1, p4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->addOccupiedCells([[ZILcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 5295
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5299
    .end local v0           #count:I
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method findSlotAndScreen([I[III)I
    .locals 6
    .parameter "xy"
    .parameter "spans"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 4360
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/twlauncher/Launcher;->findSlotAndScreen([I[IIIZ)I

    move-result v0

    return v0
.end method

.method findSlotAndScreen([I[IIIZ)I
    .locals 9
    .parameter "xy"
    .parameter "spans"
    .parameter "width"
    .parameter "height"
    .parameter "isDefault"

    .prologue
    .line 4364
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4365
    .local v6, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 4366
    .local v1, count:I
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    .line 4369
    .local v2, currentScreen:I
    move v3, v2

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 4370
    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4371
    .local v4, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p5, :cond_1

    .line 4372
    invoke-virtual {v4, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 4377
    .local v5, span:[I
    :goto_1
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4378
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_0

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v0, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4379
    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 4380
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v7, v3

    .line 4403
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v4           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :goto_2
    return v7

    .line 4374
    .restart local v4       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    invoke-virtual {v4, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_1

    .line 4369
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4385
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v4           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :cond_3
    if-nez v2, :cond_4

    const/4 v7, -0x1

    goto :goto_2

    .line 4387
    :cond_4
    const/4 v7, 0x1

    sub-int v3, v2, v7

    :goto_3
    if-ltz v3, :cond_8

    .line 4388
    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4389
    .restart local v4       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-eqz p5, :cond_6

    .line 4390
    invoke-virtual {v4, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell(II)[I

    move-result-object v5

    .line 4395
    .restart local v5       #span:[I
    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4396
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_5

    const/4 v7, 0x0

    aget v7, v5, v7

    const/4 v8, 0x1

    aget v8, v5, v8

    invoke-virtual {v0, p1, v7, v8}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 4397
    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v5, v8

    aput v8, p2, v7

    .line 4398
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v5, v8

    aput v8, p2, v7

    move v7, v3

    .line 4399
    goto :goto_2

    .line 4392
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v5           #span:[I
    :cond_6
    invoke-virtual {v4, p3, p4}, Lcom/sec/android/app/twlauncher/CellLayout;->rectToCell2(II)[I

    move-result-object v5

    .restart local v5       #span:[I
    goto :goto_4

    .line 4387
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 4403
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v4           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #span:[I
    :cond_8
    const/4 v7, -0x1

    goto :goto_2
.end method

.method public finishBindingAllWorkspaceItems()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 5173
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    if-eqz v8, :cond_4

    .line 5174
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->hasFocus()Z

    move-result v8

    if-nez v8, :cond_0

    .line 5175
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    .line 5178
    :cond_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    const-string v9, "launcher.user_folder"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v7

    .line 5179
    .local v7, userFolders:[J
    if-eqz v7, :cond_3

    .line 5180
    move-object v0, v7

    .local v0, arr$:[J
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-wide v1, v0, v3

    .line 5181
    .local v1, folderId:J
    sget-object v8, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 5182
    .local v4, info:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v4, :cond_1

    .line 5183
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/Launcher;->openFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 5180
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5186
    .end local v1           #folderId:J
    .end local v4           #info:Lcom/sec/android/app/twlauncher/FolderInfo;
    :cond_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolder()Lcom/sec/android/app/twlauncher/Folder;

    move-result-object v6

    .line 5187
    .local v6, openFolder:Lcom/sec/android/app/twlauncher/Folder;
    if-eqz v6, :cond_3

    .line 5188
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Folder;->requestFocus()Z

    .line 5192
    .end local v0           #arr$:[J
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #openFolder:Lcom/sec/android/app/twlauncher/Folder;
    :cond_3
    iput-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 5195
    .end local v7           #userFolders:[J
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v8, :cond_5

    .line 5196
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v8}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 5197
    iput-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 5200
    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 5202
    const-string v8, "Launcher"

    const-string v9, "Workspace binding finished"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5205
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5206
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 5208
    return-void
.end method

.method public finishBindingAppWidgets()V
    .locals 2

    .prologue
    .line 5161
    const-string v0, "Launcher"

    const-string v1, "App widget binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5162
    return-void
.end method

.method public finishBindingSamsungWidgets()V
    .locals 2

    .prologue
    .line 5164
    const-string v0, "Launcher"

    const-string v1, "Samung widget binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5165
    return-void
.end method

.method public finishBindingShortcuts()V
    .locals 2

    .prologue
    .line 5141
    const-string v0, "Launcher"

    const-string v1, "Workspace shortcut binding finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5159
    return-void
.end method

.method getAdjacentBlankScreen(I)I
    .locals 12
    .parameter "screen"

    .prologue
    .line 4640
    iget v7, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddWidgetType:I

    .line 4641
    .local v7, type:I
    const/4 v4, -0x1

    .line 4642
    .local v4, ret:I
    const/4 v10, 0x1

    if-eq v7, v10, :cond_0

    const/4 v10, 0x2

    if-eq v7, v10, :cond_0

    const/4 v10, 0x3

    if-ne v7, v10, :cond_6

    .line 4643
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCellCoordinates:[I

    .line 4644
    .local v9, xy:[I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSpans:[I

    .line 4646
    .local v6, spans:[I
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4647
    .local v8, w:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 4649
    .local v1, count:I
    move v2, p1

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 4650
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4651
    .local v3, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4652
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_2

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 4653
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x0

    aput v2, v10, v11

    .line 4654
    move v4, v2

    .line 4659
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_1
    if-nez p1, :cond_3

    move v5, v4

    .line 4672
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v4           #ret:I
    .end local v6           #spans:[I
    .end local v8           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v9           #xy:[I
    .local v5, ret:I
    :goto_1
    return v5

    .line 4649
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

    .line 4661
    .end local v0           #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_3
    const/4 v10, 0x1

    sub-int v2, p1, v10

    :goto_2
    if-ltz v2, :cond_6

    .line 4662
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 4663
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout;->findAllVacantCells([ZLandroid/view/View;)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    .line 4664
    .restart local v0       #cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-eqz v0, :cond_5

    const/4 v10, 0x0

    aget v10, v6, v10

    const/4 v11, 0x1

    aget v11, v6, v11

    invoke-virtual {v0, v9, v10, v11}, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->findCellForSpan([III)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 4665
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v11, 0x1

    aput v2, v10, v11

    .line 4666
    const/4 v10, -0x1

    if-ne v4, v10, :cond_4

    move v4, v2

    :cond_4
    move v5, v4

    .line 4667
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1

    .line 4661
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

    .line 4672
    .end local v4           #ret:I
    .restart local v5       #ret:I
    goto :goto_1
.end method

.method getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .locals 1

    .prologue
    .line 3275
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method public getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    return-object v0
.end method

.method getCellLayoutId(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 4189
    packed-switch p1, :pswitch_data_0

    .line 4206
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 4191
    :pswitch_0
    const v0, 0x7f060002

    goto :goto_0

    .line 4193
    :pswitch_1
    const v0, 0x7f060003

    goto :goto_0

    .line 4195
    :pswitch_2
    const v0, 0x7f060004

    goto :goto_0

    .line 4197
    :pswitch_3
    const v0, 0x7f060005

    goto :goto_0

    .line 4199
    :pswitch_4
    const v0, 0x7f060006

    goto :goto_0

    .line 4201
    :pswitch_5
    const v0, 0x7f060007

    goto :goto_0

    .line 4203
    :pswitch_6
    const v0, 0x7f060008

    goto :goto_0

    .line 4189
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
    .line 4838
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDimWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getCurrentImageWallpaperDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 4834
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCurrentWorkspaceScreen()I
    .locals 1

    .prologue
    .line 5279
    invoke-static {}, Lcom/sec/android/app/twlauncher/Launcher;->getScreen()I

    move-result v0

    return v0
.end method

.method public getDefaultHomeScreen()I
    .locals 2

    .prologue
    .line 5073
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-le v0, v1, :cond_1

    .line 5074
    :cond_0
    const/4 v0, 0x3

    .line 5077
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    goto :goto_0
.end method

.method getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;
    .locals 1

    .prologue
    .line 3295
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;

    return-object v0
.end method

.method getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;
    .locals 1

    .prologue
    .line 3291
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    return-object v0
.end method

.method getDrawerHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    return-object v0
.end method

.method getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;
    .locals 1

    .prologue
    .line 3287
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuDrawer:Lcom/sec/android/app/twlauncher/MenuDrawer;

    return-object v0
.end method

.method getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;
    .locals 1

    .prologue
    .line 3283
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    return-object v0
.end method

.method getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;
    .locals 1

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    return-object v0
.end method

.method getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
    .locals 1

    .prologue
    .line 3213
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    return-object v0
.end method

.method getResOrientation()I
    .locals 1

    .prologue
    .line 4715
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    return v0
.end method

.method getSamsungWidgetPackageManager()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    .locals 1

    .prologue
    .line 3271
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    return-object v0
.end method

.method public getStateQuickNavigation()I
    .locals 1

    .prologue
    .line 4725
    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    return v0
.end method

.method getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;
    .locals 1

    .prologue
    .line 3279
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    return-object v0
.end method

.method getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;
    .locals 1

    .prologue
    .line 3267
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    return-object v0
.end method

.method isAddWidgetState()Z
    .locals 1

    .prologue
    .line 3299
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
    .line 5283
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
    .parameter "screen"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 4624
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    aput v3, v1, v4

    .line 4625
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBlankScreen:[I

    const/4 v2, 0x1

    aput v3, v1, v2

    .line 4626
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->getAdjacentBlankScreen(I)I

    move-result v0

    .line 4636
    .local v0, adjacentScreen:I
    return v4
.end method

.method public isDefaultIMEI()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "Default"

    .line 527
    const-string v1, "357858010034783"

    .line 528
    .local v1, defaultIMEI:Ljava/lang/String;
    const-string v2, "ril.IMEI"

    const-string v3, "Default"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 530
    .local v0, currentIMEI:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const/4 v2, 0x1

    .line 538
    :goto_0
    return v2

    .line 533
    :cond_0
    const-string v2, "Default"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move v2, v6

    .line 535
    goto :goto_0

    :cond_1
    move v2, v6

    .line 538
    goto :goto_0
.end method

.method isDeleteWorkScreenPopup()Z
    .locals 1

    .prologue
    .line 4122
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    return v0
.end method

.method isWindowOpaque()Z
    .locals 1

    .prologue
    .line 4749
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    return v0
.end method

.method public isWorkspaceLocked()Z
    .locals 1

    .prologue
    .line 2070
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
    .line 4456
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
    .line 3456
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 3457
    return-void
.end method

.method menudiscard()V
    .locals 2

    .prologue
    .line 4088
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 4089
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    .line 4090
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplications()V

    .line 4091
    return-void
.end method

.method menusave()V
    .locals 17

    .prologue
    .line 4021
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v4, v0

    .line 4022
    .local v4, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v10, v0

    .line 4024
    .local v10, menumanager:Lcom/sec/android/app/twlauncher/MenuManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v15, v0

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/MenuManager;->stopUpdateDB()V

    .line 4026
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildCount()I

    move-result v14

    .line 4027
    .local v14, topAppCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v14, :cond_2

    .line 4028
    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4029
    .local v3, appView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 4030
    .local v13, tag:Ljava/lang/Object;
    instance-of v15, v13, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v15, :cond_1

    .line 4031
    move-object v0, v13

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v2, v0

    .line 4032
    .local v2, appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-ne v15, v5, :cond_0

    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    const v16, 0xffff

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    const v16, 0xffff

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    .line 4035
    :cond_0
    iput v5, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 4036
    const v15, 0xffff

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 4037
    const v15, 0xffff

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 4038
    const/4 v15, 0x0

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 4039
    iput v5, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4040
    const v15, 0xffff

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4041
    const v15, 0xffff

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 4042
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 4027
    .end local v2           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4047
    .end local v3           #appView:Landroid/view/View;
    .end local v13           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v9

    .line 4048
    .local v9, menuPageCount:I
    const/4 v11, 0x0

    .line 4049
    .local v11, pageNum:I
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v9, :cond_9

    .line 4050
    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 4051
    .local v7, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    .line 4052
    .local v8, menuAppCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    if-ge v6, v8, :cond_7

    .line 4053
    invoke-virtual {v7, v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4054
    .restart local v3       #appView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    .line 4055
    .restart local v13       #tag:Ljava/lang/Object;
    instance-of v15, v13, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v15, :cond_5

    .line 4056
    move-object v0, v13

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-object v2, v0

    .line 4057
    .restart local v2       #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    const v16, 0xffff

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v15, v11, :cond_3

    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    if-eq v15, v6, :cond_6

    .line 4060
    :cond_3
    const/4 v12, 0x0

    .line 4061
    .local v12, preSave:Z
    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    const v16, 0xffff

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_4

    .line 4062
    const/4 v12, 0x1

    .line 4064
    :cond_4
    const v15, 0xffff

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 4065
    iput v11, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 4066
    iput v6, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 4067
    const/4 v15, 0x0

    iput-boolean v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 4068
    const v15, 0xffff

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4069
    iput v11, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4070
    iput v6, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 4071
    if-eqz v12, :cond_5

    .line 4072
    move-object/from16 v0, p0

    move-object v1, v2

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    .line 4052
    .end local v2           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v12           #preSave:Z
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 4075
    .restart local v2       #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_6
    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 4076
    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 4077
    iget v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v15, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_3

    .line 4081
    .end local v2           #appInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #appView:Landroid/view/View;
    .end local v13           #tag:Ljava/lang/Object;
    :cond_7
    if-lez v8, :cond_8

    .line 4082
    add-int/lit8 v11, v11, 0x1

    .line 4049
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4085
    .end local v6           #j:I
    .end local v7           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v8           #menuAppCount:I
    :cond_9
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 765
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 767
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult(). reqCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", resultCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mAddItemCellInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    if-ne p2, v5, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    if-eqz v1, :cond_2

    .line 777
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget v1, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 778
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 779
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    .line 781
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 822
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 783
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-virtual {p0, p0, p3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddApplication(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_0

    .line 786
    :pswitch_2
    const/4 v1, 0x6

    const/4 v2, 0x1

    invoke-virtual {p0, p3, v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->processShortcut(Landroid/content/Intent;II)V

    goto :goto_0

    .line 789
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddShortcut(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 790
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 791
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 794
    :pswitch_4
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addLiveFolder(Landroid/content/Intent;)V

    goto :goto_0

    .line 797
    :pswitch_5
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddLiveFolder(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 798
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 802
    :pswitch_6
    invoke-virtual {p0, p3}, Lcom/sec/android/app/twlauncher/Launcher;->addAppWidget(Landroid/content/Intent;)V

    goto :goto_0

    .line 805
    :pswitch_7
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    invoke-direct {p0, p3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->completeAddAppWidget(Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->isBusy()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 813
    :cond_2
    const/16 v1, 0x9

    if-eq p1, v1, :cond_3

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1

    :cond_3
    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 817
    const-string v1, "appWidgetId"

    invoke-virtual {p3, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 818
    .local v0, appWidgetId:I
    if-eq v0, v5, :cond_1

    .line 819
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0

    .line 781
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

    .line 2983
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 2984
    .local v2, tag:Ljava/lang/Object;
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v3, :cond_1

    .line 2986
    check-cast v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v2           #tag:Ljava/lang/Object;
    iget-object v0, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 2987
    .local v0, intent:Landroid/content/Intent;
    const/4 v3, 0x2

    new-array v1, v3, [I

    .line 2988
    .local v1, pos:[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2989
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

    .line 2991
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V

    .line 2995
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pos:[I
    :cond_0
    :goto_0
    return-void

    .line 2992
    .restart local v2       #tag:Ljava/lang/Object;
    :cond_1
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v3, :cond_0

    .line 2993
    check-cast v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    .end local v2           #tag:Ljava/lang/Object;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/Launcher;->handleFolderClick(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    const-string v9, "Launcher"

    .line 383
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 384
    .local v2, tmpB:Z
    iput-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 385
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    .line 386
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 389
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreate(Landroid/os/Bundle;)V

    .line 391
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 392
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    .line 393
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 394
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 396
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getProductModelFamily(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    .line 397
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getProductModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    .line 398
    const-string v3, "Launcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate():  product model family:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelFamilyName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " product model : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mProductModelName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUse16BitWindow(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    .line 401
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getScreenCount(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    .line 402
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getDefaultScreenCount(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->DEFAULT_SCREEN_COUNT:I

    .line 403
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseMainMenuConcentrationEffect(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    .line 404
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUseMainMenuListMode(Landroid/content/Context;)Z

    move-result v3

    sput-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    .line 405
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getWorkspaceCellsX(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_X:I

    .line 406
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getWorkspaceCellsY(Landroid/content/Context;)I

    move-result v3

    sput v3, Lcom/sec/android/app/twlauncher/Launcher;->NUMBER_CELLS_Y:I

    .line 408
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mInflater:Landroid/view/LayoutInflater;

    .line 410
    const-string v3, "launcher"

    invoke-virtual {p0, v3, v6}, Lcom/sec/android/app/twlauncher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    .line 411
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkBuildVersion()V

    .line 415
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "homescreen"

    const/4 v5, 0x3

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    .line 419
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 420
    new-instance v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    const/16 v4, 0x400

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    .line 421
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->startListening()V

    .line 423
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mResOrientation:I

    .line 429
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkForLocaleChange()V

    .line 431
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    .line 432
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    iget-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mLocaleChanged:Z

    invoke-virtual {v3, p0, v4}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->start(Landroid/content/Context;Z)V

    .line 436
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 437
    const v3, 0x7f030008

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->setContentView(I)V

    .line 453
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isTestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 454
    const v3, 0x7f06000f

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewStub;

    invoke-virtual {v3, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setupViews()V

    .line 459
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerIntentReceivers()V

    .line 460
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerContentObservers()V

    .line 461
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->registerSelectiveResetReceiver()V

    .line 463
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    .line 464
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedState:Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->restoreState(Landroid/os/Bundle;)V

    .line 470
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-nez v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 472
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v3, p0, v8}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 477
    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    .line 478
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-static {v3, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 480
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 484
    new-instance v3, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-direct {v3, p0}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    .line 485
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setWorkspace(Lcom/sec/android/app/twlauncher/Workspace;)V

    .line 486
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setId(I)V

    .line 487
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 489
    .local v1, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {p0, v3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/DragLayer;->bringToFront()V

    .line 497
    sget-boolean v3, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    if-eqz v3, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mtp_usb_connection_status"

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    :cond_2
    sput-boolean v6, Lcom/sec/android/app/twlauncher/Launcher;->mFirstTime:Z

    .line 502
    const-string v3, "Launcher"

    const-string v3, "onCreate() ended"

    invoke-static {v9, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 3304
    packed-switch p1, :pswitch_data_0

    .line 3317
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3306
    :pswitch_1
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$CreateShortcut;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3308
    :pswitch_2
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3310
    :pswitch_3
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3312
    :pswitch_4
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3314
    :pswitch_5
    new-instance v0, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;-><init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Launcher$1;)V

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher$TextDialog;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 3304
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
    .parameter "menu"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1909
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    if-nez v1, :cond_0

    move v1, v3

    .line 1954
    :goto_0
    return v1

    .line 1911
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1913
    const v1, 0x7f0a0024

    invoke-interface {p1, v6, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020053

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x41

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1916
    const v1, 0x7f0a0025

    invoke-interface {p1, v3, v7, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005d

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x57

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1919
    const v1, 0x7f0a0026

    invoke-interface {p1, v3, v5, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1922
    const/4 v1, 0x5

    const v2, 0x7f0a0027

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020055

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x4e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1925
    const/16 v1, 0xd

    const v2, 0x7f0a002b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020057

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x45

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1929
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1930
    .local v0, settings:Landroid/content/Intent;
    const/high16 v1, 0x1020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1933
    const/4 v1, 0x7

    const v2, 0x7f0a0029

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x50

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1937
    const/16 v1, 0x8

    const v2, 0x7f0a002a

    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020057

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1940
    sget-boolean v1, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v1, :cond_1

    .line 1941
    const/16 v1, 0x9

    const v2, 0x7f0a002c

    invoke-interface {p1, v4, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020059

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1947
    :cond_1
    const/16 v1, 0xa

    const v2, 0x7f0a002d

    invoke-interface {p1, v7, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020058

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1950
    const/16 v1, 0xb

    const v2, 0x7f0a002e

    invoke-interface {p1, v5, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f02005a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1952
    const/16 v1, 0xc

    const v2, 0x7f0a002f

    invoke-interface {p1, v5, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020054

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v1, v6

    .line 1954
    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const-string v2, "Launcher"

    .line 1833
    const-string v1, "Launcher"

    const-string v1, "onDestroy()"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDestroyed:Z

    .line 1837
    invoke-super {p0}, Landroid/app/ActivityGroup;->onDestroy()V

    .line 1839
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1842
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppWidgetHost:Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->stopListening()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1847
    :goto_0
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/method/TextKeyListener;->release()V

    .line 1849
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopLoader()V

    .line 1851
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->unbindDesktopItems()V

    .line 1853
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V

    .line 1855
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetPackageManager:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->unbind()V

    .line 1858
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1859
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1861
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mCloseSystemDialogsReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1862
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1863
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1864
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSelectiveResetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1865
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mReceiverContactChanged:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1867
    return-void

    .line 1843
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1844
    .local v0, ex:Ljava/lang/NullPointerException;
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
    .line 1056
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 1057
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->acceptFilter()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x42

    if-eq p1, v2, :cond_0

    .line 1058
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, v3, v4, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1060
    .local v0, gotKey:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefaultKeySsb:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1067
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move-result v2

    .line 1076
    .end local v0           #gotKey:Z
    :goto_0
    return v2

    .line 1072
    :cond_0
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1073
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1076
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "Launcher"

    .line 3117
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3119
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick()/isWorkspaceLocked() - mWorkspaceLoading="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mWaitingForResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v4

    .line 3153
    :goto_0
    return v1

    .line 3125
    :cond_0
    instance-of v1, p1, Lcom/sec/android/app/twlauncher/CellLayout;

    if-nez v1, :cond_1

    .line 3126
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/view/View;

    .line 3129
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 3132
    .local v0, cellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    if-nez v0, :cond_2

    .line 3133
    const-string v1, "Launcher"

    const-string v1, "onLongClick - cellInfo is a null"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v5

    .line 3134
    goto :goto_0

    .line 3137
    :cond_2
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLongClick - allowLongPress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3139
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->allowLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3140
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v1, :cond_4

    .line 3141
    iget-boolean v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v1, :cond_3

    .line 3143
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v4}, Lcom/sec/android/app/twlauncher/Workspace;->setAllowLongPress(Z)V

    .line 3144
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showAddDialog(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    :cond_3
    :goto_1
    move v1, v5

    .line 3153
    goto :goto_0

    .line 3147
    :cond_4
    iget-object v1, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/sec/android/app/twlauncher/Folder;

    if-nez v1, :cond_3

    .line 3149
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->startDrag(Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"

    .prologue
    const/high16 v11, 0x40

    const/4 v10, 0x1

    const/4 v8, 0x0

    const-string v12, "className"

    const-string v9, "widgetInstall"

    .line 1629
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onNewIntent(Landroid/content/Intent;)V

    .line 1632
    const-string v6, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1633
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeSystemDialogs()V

    .line 1638
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 1640
    const/4 v5, 0x0

    .line 1641
    .local v5, widgetInstall:Z
    const-string v6, "widgetInstall"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1642
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1643
    .local v0, i:Landroid/content/Intent;
    const-string v6, "widgetInstall"

    const-string v6, "widgetInstall"

    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v0, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1644
    const-string v6, "packageName"

    const-string v7, "packageName"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1645
    const-string v6, "className"

    const-string v6, "className"

    invoke-virtual {p1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v12, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1646
    const/4 v5, 0x1

    .line 1649
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    and-int/2addr v6, v11

    if-eq v6, v11, :cond_6

    .line 1652
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 1653
    .local v2, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 1656
    .local v4, w:Lcom/sec/android/app/twlauncher/Workspace;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1657
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1660
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1661
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 1662
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1663
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 1680
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v3

    .line 1681
    .local v3, v:Landroid/view/View;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 1682
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1684
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1693
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v2           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v3           #v:Landroid/view/View;
    .end local v4           #w:Lcom/sec/android/app/twlauncher/Workspace;
    .end local v5           #widgetInstall:Z
    :cond_3
    :goto_1
    return-void

    .line 1665
    .restart local v2       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .restart local v4       #w:Lcom/sec/android/app/twlauncher/Workspace;
    .restart local v5       #widgetInstall:Z
    :cond_4
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1666
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    goto :goto_0

    .line 1668
    :cond_5
    if-nez v5, :cond_2

    .line 1669
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Workspace;->moveToDefaultScreen()V

    .line 1672
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getDefaultHomeScreen()I

    move-result v6

    sput v6, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    .line 1676
    iput-boolean v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    goto :goto_0

    .line 1687
    .end local v2           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v4           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 1688
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewMainMenu()V

    .line 1689
    invoke-direct {p0, v8}, Lcom/sec/android/app/twlauncher/Launcher;->closeDrawer(Z)V

    .line 1690
    const/4 v6, -0x1

    iput v6, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2010
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2055
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 2012
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->addItems()V

    move v0, v2

    .line 2013
    goto :goto_0

    .line 2015
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->startWallpaper()V

    move v0, v2

    .line 2016
    goto :goto_0

    .line 2018
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->onSearchRequested()Z

    move v0, v2

    .line 2019
    goto :goto_0

    .line 2021
    :pswitch_4
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showNotifications()V

    move v0, v2

    .line 2022
    goto :goto_0

    :pswitch_5
    move v0, v2

    .line 2024
    goto :goto_0

    .line 2026
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2027
    goto :goto_0

    .line 2029
    :pswitch_7
    sget-boolean v0, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_LISTMODE:Z

    if-eqz v0, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    :goto_1
    move v0, v2

    .line 2034
    goto :goto_0

    .line 2032
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    goto :goto_1

    .line 2036
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2037
    goto :goto_0

    .line 2039
    :pswitch_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2040
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    move v0, v2

    .line 2041
    goto :goto_0

    .line 2043
    :pswitch_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->showDiscardMenuEdit()V

    move v0, v2

    .line 2044
    goto :goto_0

    .line 2046
    :pswitch_b
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawOpenAnimation()V

    .line 2047
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewWorkspace()V

    move v0, v2

    .line 2048
    goto :goto_0

    .line 2050
    :pswitch_c
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 2051
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    move v0, v2

    .line 2052
    goto :goto_0

    .line 2010
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
    .line 1006
    const-string v0, "Launcher"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-super {p0}, Landroid/app/ActivityGroup;->onPause()V

    .line 1011
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 1012
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 1015
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->pauseScreen(I)V

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 1019
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 1023
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 1026
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 1027
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 1029
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperVisiblity(Z)V

    .line 1030
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 3
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 3322
    packed-switch p1, :pswitch_data_0

    .line 3334
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3326
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v2, :cond_0

    .line 3327
    const v2, 0x7f060024

    invoke-virtual {p2, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 3328
    .local v0, input:Landroid/widget/EditText;
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-object v1, v2, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 3329
    .local v1, text:Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 3330
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    goto :goto_0

    .line 3322
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

    .line 1959
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 1961
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/WidgetPreview;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 2005
    :goto_0
    return v0

    .line 1963
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

    .line 1965
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getAnimateStatus()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    .line 1967
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1968
    invoke-interface {p1, v2, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1969
    invoke-interface {p1, v3, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1970
    const/4 v0, 0x5

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1972
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-nez v0, :cond_5

    .line 1973
    invoke-interface {p1, v4, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1974
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1975
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1986
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMainMenuLoading:Z

    if-nez v0, :cond_7

    .line 1987
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :goto_2
    move v0, v3

    .line 2005
    goto :goto_0

    .line 1976
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v3, :cond_6

    .line 1977
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1978
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1979
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 1980
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 1981
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1982
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1983
    invoke-interface {p1, v6, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_1

    .line 1989
    :cond_7
    const/16 v0, 0x8

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1994
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->findAllVacantCells([Z)Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1995
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuAddInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v0, :cond_9

    move v0, v3

    :goto_3
    invoke-interface {p1, v3, v0}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 1997
    invoke-interface {p1, v2, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1998
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 1999
    invoke-interface {p1, v4, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2000
    invoke-interface {p1, v5, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2001
    invoke-interface {p1, v6, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2002
    const/4 v0, 0x5

    invoke-interface {p1, v0, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto :goto_2

    :cond_9
    move v0, v2

    .line 1995
    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const-string v5, "android:views"

    const-string v4, "android:focusedViewId"

    .line 1728
    const-string v3, "android:viewHierarchyState"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1729
    .local v2, windowState:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1730
    .local v1, savedStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v0, -0x1

    .line 1732
    .local v0, focusedViewId:I
    if-eqz v2, :cond_0

    .line 1733
    const-string v3, "android:views"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v1

    .line 1734
    const-string v3, "android:views"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1735
    const-string v3, "android:focusedViewId"

    const/4 v3, -0x1

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1736
    const-string v3, "android:focusedViewId"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1739
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1741
    if-eqz v2, :cond_1

    .line 1742
    const-string v3, "android:views"

    invoke-virtual {v2, v5, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1743
    const-string v3, "android:focusedViewId"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1744
    const-string v3, "android:Panels"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1747
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSavedInstanceState:Landroid/os/Bundle;

    .line 1748
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "Launcher"

    const-string v3, ""

    .line 826
    const-string v1, "Launcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(). mIsNewIntent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowEnter()V

    .line 829
    const-string v1, ""

    const-string v1, "onResume() check 0"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-super {p0}, Landroid/app/ActivityGroup;->onResume()V

    .line 833
    const-string v1, ""

    const-string v1, "onResume() check 1"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 837
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsActive:Z

    .line 839
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mExec:Ljava/util/concurrent/ExecutorService;

    .line 841
    const-string v1, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() check 2, mRestoring : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    if-eqz v1, :cond_5

    .line 845
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspaceLoading:Z

    .line 846
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->loadApplications()V

    .line 847
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v1, p0, v5}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 848
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRestoring:Z

    .line 856
    :cond_0
    :goto_0
    const-string v1, ""

    const-string v1, "onResume() check 3"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {p0}, Lcom/sec/android/app/twlauncher/SamsungUtils;->broadcastStkIntent(Landroid/content/Context;)V

    .line 862
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DragLayer;->cancelDrag()V

    .line 864
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->resume()V

    .line 866
    const-string v1, ""

    const-string v1, "onResume() check 4"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    if-eqz v1, :cond_6

    .line 869
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    .line 875
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 876
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    .line 878
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 882
    :cond_3
    const-string v1, ""

    const-string v1, "onResume() check 5"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsNewIntent:Z

    .line 885
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsMoveDefaultScreen:Z

    .line 887
    invoke-direct {p0, p0}, Lcom/sec/android/app/twlauncher/Launcher;->launchMtpApp(Landroid/content/Context;)V

    .line 895
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->isTestMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 896
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 897
    .local v0, sysInfo:Landroid/view/ViewStub;
    if-eqz v0, :cond_4

    .line 898
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    .line 905
    .end local v0           #sysInfo:Landroid/view/ViewStub;
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->checkFactoryReset2ndAck()V

    .line 907
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    if-eqz v1, :cond_7

    .line 908
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsScreenOff:Z

    .line 917
    :goto_3
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 930
    :goto_4
    const-string v1, "Launcher"

    const-string v1, "onResume() ended"

    invoke-static {v6, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    return-void

    .line 850
    :cond_5
    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsChangedBadge:Z

    if-eqz v1, :cond_0

    .line 851
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 852
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mRunBadgeChanged:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 871
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->resume(I)V

    .line 872
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->resumeScreen(I)V

    goto :goto_1

    .line 910
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$4;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$4;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    .line 921
    :catch_0
    move-exception v1

    goto :goto_4

    .line 918
    :catch_1
    move-exception v1

    goto :goto_4

    .line 901
    :catch_2
    move-exception v1

    goto :goto_2
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel;->stopLoader()V

    .line 1045
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 11
    .parameter "outState"

    .prologue
    .line 1752
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1754
    const-string v8, "launcher.current_screen"

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1756
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getCurrentScreen()I

    move-result v7

    .line 1758
    .local v7, menuScreen:I
    const-string v8, "launcher.delete_application"

    sget-object v9, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    const-string v8, "launcher.menu_mode"

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1762
    const-string v8, "launcher.menu_current_screen"

    invoke-virtual {p1, v8, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1764
    const-string v8, "launcher.menu_screen_count"

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1767
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_1

    .line 1768
    const-string v8, "launcher.quick_navigation"

    iget v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mStateQuickNavigation:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1769
    iget v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    const/4 v9, -0x1

    if-le v8, v9, :cond_0

    .line 1770
    const-string v8, "launcher.delete_index"

    iget v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDeleteIndex:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1787
    :goto_0
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getOpenFolders()Ljava/util/ArrayList;

    move-result-object v2

    .line 1788
    .local v2, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_6

    .line 1789
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1790
    .local v1, count:I
    new-array v4, v1, [J

    .line 1791
    .local v4, ids:[J
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 1792
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/Folder;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Folder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v5

    .line 1793
    .local v5, info:Lcom/sec/android/app/twlauncher/FolderInfo;
    iget-wide v8, v5, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    aput-wide v8, v4, v3

    .line 1791
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1772
    .end local v1           #count:I
    .end local v2           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    .end local v3           #i:I
    .end local v4           #ids:[J
    .end local v5           #info:Lcom/sec/android/app/twlauncher/FolderInfo;
    :cond_0
    const-string v8, "launcher.delete_index"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1774
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1775
    const-string v8, "launcher.quick_navigation"

    const/4 v9, 0x0

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1776
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    if-eqz v8, :cond_2

    .line 1777
    const-string v8, "launcher.delete_index"

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDeleteIndex()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1779
    :cond_2
    const-string v8, "launcher.delete_index"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1781
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1782
    const-string v8, "launcher.quick_navigation"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1784
    :cond_4
    const-string v8, "launcher.quick_navigation"

    const/4 v9, -0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1795
    .restart local v1       #count:I
    .restart local v2       #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/Folder;>;"
    .restart local v3       #i:I
    .restart local v4       #ids:[J
    :cond_5
    const-string v8, "launcher.user_folder"

    invoke-virtual {p1, v8, v4}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1802
    .end local v1           #count:I
    .end local v3           #i:I
    .end local v4           #ids:[J
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1803
    const-string v8, "launcher.all_apps_folder"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1806
    :cond_7
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    iget-boolean v8, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    if-eqz v8, :cond_8

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v8, :cond_8

    .line 1807
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    .line 1808
    .local v0, addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1810
    .local v6, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    if-nez v6, :cond_a

    .line 1811
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAddItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->valid:Z

    .line 1825
    .end local v0           #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .end local v6           #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_8
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v8, :cond_9

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    if-eqz v8, :cond_9

    .line 1826
    const-string v8, "launcher.rename_folder"

    const/4 v9, 0x1

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1827
    const-string v8, "launcher.rename_folder_id"

    iget-object v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    iget-wide v9, v9, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-virtual {p1, v8, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1829
    :cond_9
    return-void

    .line 1813
    .restart local v0       #addItemCellInfo:Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;
    .restart local v6       #layout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_a
    const-string v8, "launcher.add_screen"

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1814
    const-string v8, "launcher.add_cellX"

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1815
    const-string v8, "launcher.add_cellY"

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1816
    const-string v8, "launcher.add_spanX"

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanX:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1817
    const-string v8, "launcher.add_spanY"

    iget v9, v0, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->spanY:I

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1818
    const-string v8, "launcher.add_countX"

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountX()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1819
    const-string v8, "launcher.add_countY"

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getCountY()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1820
    const-string v8, "launcher.add_occupied_cells"

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/CellLayout;->getOccupiedCells()[Z

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2065
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 2066
    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter "hasFocus"

    .prologue
    .line 4731
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

    .line 4732
    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onWindowFocusChanged(Z)V

    .line 4734
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWallpaperDimension()V

    .line 4736
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Workspace;->updateWallpaperOffset()V

    .line 4738
    if-eqz p1, :cond_0

    .line 4739
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWindowTransparency()V

    .line 4744
    :goto_0
    return-void

    .line 4741
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->cancelDrag()V

    .line 4742
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->cancelDrag()V

    goto :goto_0
.end method

.method openQuickViewMainMenu()V
    .locals 2

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3235
    :goto_0
    return-void

    .line 3219
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

    .line 3221
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3224
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3225
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->setBackgroundNotification(I)V

    .line 3226
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 3227
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    if-lez v0, :cond_2

    .line 3228
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    iget v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuScreenCount:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->initScreen(I)V

    .line 3233
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 3234
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewMainMenu:Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->open()V

    goto :goto_0

    .line 3230
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

    .line 3161
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

    .line 3163
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 3166
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mAppShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setVisibility(I)V

    .line 3167
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 3169
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->setVisibility(I)V

    .line 3170
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->invalidate()V

    .line 3171
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->initScreen(I)V

    .line 3173
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->closeOptionsMenu()V

    .line 3174
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->open()V

    .line 3176
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v0

    .line 3177
    .local v0, curScreen:I
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$6;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/app/twlauncher/Launcher$6;-><init>(Lcom/sec/android/app/twlauncher/Launcher;I)V

    const-wide/16 v3, 0x1c2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3182
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowEnter()V
    .locals 2

    .prologue
    .line 4802
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 4803
    const v0, 0x7f040004

    const v1, 0x7f040005

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 4805
    :cond_0
    return-void
.end method

.method overridePendingTransitionForOpaqueWindowExit()V
    .locals 2

    .prologue
    .line 4808
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    if-eqz v0, :cond_0

    .line 4809
    const v0, 0x7f040002

    const v1, 0x7f040003

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransition(II)V

    .line 4811
    :cond_0
    return-void
.end method

.method previewAddSamsungWidget()V
    .locals 8

    .prologue
    .line 2211
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-nez v3, :cond_0

    .line 2212
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->cancelAddWidget()V

    .line 2224
    :goto_0
    return-void

    .line 2216
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mSamsungWidgetInfo:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .line 2218
    .local v2, info:Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2219
    .local v1, cellWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2221
    .local v0, cellHeight:I
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWidgetPreview:Lcom/sec/android/app/twlauncher/WidgetPreview;

    iget-object v4, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->widgetView:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;

    new-instance v5, Landroid/view/ViewGroup$LayoutParams;

    iget v6, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanX:I

    mul-int/2addr v6, v1

    iget v7, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;->spanY:I

    mul-int/2addr v7, v0

    invoke-direct {v5, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/twlauncher/WidgetPreview;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method processShortcut(Landroid/content/Intent;II)V
    .locals 6
    .parameter "intent"
    .parameter "requestCodeApplication"
    .parameter "requestCodeShortcut"

    .prologue
    .line 2228
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2229
    .local v0, applicationName:Ljava/lang/String;
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2231
    .local v3, shortcutName:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2232
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2233
    .local v1, mainIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2235
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.PICK_ACTIVITY"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2236
    .local v2, pickIntent:Landroid/content/Intent;
    const-string v4, "android.intent.extra.INTENT"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2237
    invoke-virtual {p0, v2, p2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2241
    .end local v1           #mainIntent:Landroid/content/Intent;
    .end local v2           #pickIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2239
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/sec/android/app/twlauncher/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1502
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 1506
    return-void
.end method

.method removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 3
    .parameter "folder"

    .prologue
    .line 2280
    sget-object v0, Lcom/sec/android/app/twlauncher/Launcher;->mFolders:Ljava/util/HashMap;

    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2284
    return-void
.end method

.method removePage()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4104
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mQuickViewWorkspace:Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    .line 4106
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 4108
    return-void
.end method

.method public removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1524
    return-void
.end method

.method public removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1517
    return-void
.end method

.method runMoreContents()V
    .locals 3

    .prologue
    .line 4435
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.morewidget.action.APP_MORECONTENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4436
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "KEY_APP_CALLER"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4437
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 4438
    return-void
.end method

.method saveMenuMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 4450
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4451
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "menu"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4452
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4453
    return-void
.end method

.method public saveScreenInfo()V
    .locals 3

    .prologue
    .line 4210
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4211
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "screencount"

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4212
    const-string v1, "currentscreen"

    sget v2, Lcom/sec/android/app/twlauncher/Launcher;->sScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 4213
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 4214
    return-void
.end method

.method public setBackgroundNotification(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 4720
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 4721
    return-void
.end method

.method public setDefaultHomeScreen(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 5062
    if-ltz p1, :cond_0

    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-le p1, v1, :cond_1

    .line 5070
    :cond_0
    :goto_0
    return-void

    .line 5065
    :cond_1
    iput p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    .line 5066
    const-string v1, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDefaultHomeScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 5068
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "homescreen"

    iget v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDefautHomeScreen:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 5069
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method setWallpaperVisiblity(Z)V
    .locals 2
    .parameter "visiblity"

    .prologue
    .line 4702
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 4703
    .local v0, wpm:Landroid/app/WallpaperManager;
    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 4704
    return-void
.end method

.method setWindowOpaque()V
    .locals 3

    .prologue
    .line 4793
    const-string v1, "Launcher"

    const-string v2, "setWindowOpaque()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4794
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4795
    .local v0, wd:Landroid/view/Window;
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 4796
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 4797
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4798
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 4799
    return-void
.end method

.method setWindowTranslucent()V
    .locals 3

    .prologue
    .line 4785
    const-string v1, "Launcher"

    const-string v2, "setWindowTranslucent()"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4786
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 4787
    .local v0, wd:Landroid/view/Window;
    const/high16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4788
    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 4789
    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 4790
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsOpaqueWindow:Z

    .line 4791
    return-void
.end method

.method showDeleteApplication(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 4098
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4099
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4100
    return-void
.end method

.method showDeleteWorkScreen()V
    .locals 1

    .prologue
    .line 4117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mIsDeletePopup:Z

    .line 4118
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4119
    return-void
.end method

.method showDiscardMenuEdit()V
    .locals 1

    .prologue
    .line 4094
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 4095
    return-void
.end method

.method showRenameDialog(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 3337
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mFolderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 3338
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 3339
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/Launcher;->showDialog(I)V

    .line 3340
    return-void
.end method

.method showWidgetMessage(Z)V
    .locals 4
    .parameter "nospace"

    .prologue
    const v3, 0x7f0a001e

    const v2, 0x7f0a000e

    const/4 v1, 0x0

    .line 4460
    if-eqz p1, :cond_1

    .line 4461
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 4462
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    .line 4473
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 4474
    return-void

    .line 4464
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4467
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_2

    .line 4468
    invoke-static {p0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mToast:Landroid/widget/Toast;

    goto :goto_0

    .line 4470
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
    .line 1871
    if-ltz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWaitingForResult:Z

    .line 1872
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/ActivityGroup;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1873
    return-void
.end method

.method startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)V
    .locals 12
    .parameter "intent"
    .parameter "tag"

    .prologue
    .line 2998
    const/high16 v9, 0x1000

    invoke-virtual {p1, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2999
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/app/twlauncher/Launcher;->MenuManagerBackKeyDownInfo:Z

    .line 3002
    const/4 v9, 0x0

    const/16 v10, 0x3e8

    :try_start_0
    invoke-static {v9, v10}, Lcom/sec/android/app/twlauncher/SamsungUtils;->acquireDVFSlock(II)V

    .line 3005
    const-string v1, "com.sec.android.app.dialertab"
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    .line 3006
    .local v1, dialertabPackageName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 3008
    .local v6, phoneOffhook:Z
    :try_start_1
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 3009
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    .line 3013
    .end local v5           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 3015
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.google.android.voicesearch"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3016
    const-string v9, "activity"

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3017
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v9, 0x1e

    invoke-virtual {v0, v9}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v7

    .line 3018
    .local v7, rs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 3019
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 3020
    .local v8, rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v9, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "com.android.music.player.service.CorePlayerService"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 3021
    new-instance v4, Landroid/content/Intent;

    const-string v9, "com.android.music.musicservicecommand.pause"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3022
    .local v4, newintent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3028
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v4           #newintent:Landroid/content/Intent;
    .end local v7           #rs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v8           #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v6, :cond_3

    .line 3029
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v5

    .line 3031
    .restart local v5       #phone:Lcom/android/internal/telephony/ITelephony;
    :try_start_3
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3

    .line 3056
    .end local v1           #dialertabPackageName:Ljava/lang/String;
    .end local v5           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v6           #phoneOffhook:Z
    :goto_2
    return-void

    .line 3010
    .restart local v1       #dialertabPackageName:Ljava/lang/String;
    .restart local v6       #phoneOffhook:Z
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 3011
    .local v2, e:Landroid/os/RemoteException;
    :try_start_4
    const-string v9, "Launcher"

    const-string v10, "phone.isOffhook() failed"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 3046
    .end local v1           #dialertabPackageName:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v6           #phoneOffhook:Z
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 3047
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const v9, 0x7f0a0006

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 3048
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to launch. tag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 3018
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    .restart local v0       #am:Landroid/app/ActivityManager;
    .restart local v1       #dialertabPackageName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v6       #phoneOffhook:Z
    .restart local v7       #rs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v8       #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 3032
    .end local v0           #am:Landroid/app/ActivityManager;
    .end local v3           #i:I
    .end local v7           #rs:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v8           #rsi:Landroid/app/ActivityManager$RunningServiceInfo;
    .restart local v5       #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_2
    move-exception v2

    .line 3033
    .local v2, e:Landroid/os/RemoteException;
    :try_start_5
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 3049
    .end local v1           #dialertabPackageName:Ljava/lang/String;
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v5           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v6           #phoneOffhook:Z
    :catch_3
    move-exception v9

    move-object v2, v9

    .line 3050
    .local v2, e:Ljava/lang/SecurityException;
    const v9, 0x7f0a0006

    const/4 v10, 0x0

    invoke-static {p0, v9, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 3051
    const-string v9, "Launcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Launcher does not have the permission to launch "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ". Make sure to create a MAIN intent-filter for the corresponding activity "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "or use the exported attribute for this activity. "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "tag="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 3037
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #dialertabPackageName:Ljava/lang/String;
    .restart local v6       #phoneOffhook:Z
    :cond_3
    :try_start_6
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3038
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V

    goto/16 :goto_2

    .line 3042
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3043
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->overridePendingTransitionForOpaqueWindowExit()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2
.end method

.method public startBinding()V
    .locals 5

    .prologue
    .line 4927
    const-string v3, "Launcher"

    const-string v4, "Launcher binding started"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/LocalActivityManager;->removeAllActivities()V

    .line 4933
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDesktopItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 4935
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    .line 4936
    .local v2, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v0

    .line 4937
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4939
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 4937
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4953
    :cond_0
    return-void
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 6
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1879
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/app/twlauncher/Launcher$5;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/Launcher$5;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1891
    if-nez p1, :cond_0

    .line 1893
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getTypedText()Ljava/lang/String;

    move-result-object p1

    .line 1894
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->clearTypedText()V

    .line 1901
    :cond_0
    const-string v1, "search"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1903
    .local v0, searchManager:Landroid/app/SearchManager;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1905
    return-void
.end method

.method uninstallPackage()V
    .locals 6

    .prologue
    const-string v5, "Launcher"

    .line 4133
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallPackage(). package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4134
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->lock()V

    .line 4136
    new-instance v1, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;-><init>(Lcom/sec/android/app/twlauncher/Launcher;)V

    .line 4138
    .local v1, observer:Lcom/sec/android/app/twlauncher/Launcher$PackageDeleteObserver;
    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4143
    :goto_0
    const/4 v2, 0x0

    sput-object v2, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4144
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mDragLayer:Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/DragLayer;->invalidate()V

    .line 4145
    return-void

    .line 4139
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 4140
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Launcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uninstallPackage() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4141
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    goto :goto_0
.end method

.method uninstallPackage(Ljava/lang/String;)V
    .locals 0
    .parameter "packageName"

    .prologue
    .line 4128
    sput-object p1, Lcom/sec/android/app/twlauncher/Launcher;->mUninstallPackageName:Ljava/lang/String;

    .line 4129
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->uninstallPackage()V

    .line 4130
    return-void
.end method

.method unlockAllApps()V
    .locals 1

    .prologue
    .line 3460
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager;->unlock()V

    .line 3461
    return-void
.end method

.method updateTopfourBadge()V
    .locals 1

    .prologue
    .line 2716
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    if-nez v0, :cond_0

    .line 2718
    :goto_0
    return-void

    .line 2717
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher;->mTopFourZone:Lcom/sec/android/app/twlauncher/TopFourZone;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->updateBadges()V

    goto :goto_0
.end method

.method updateWallpaperVisiblity()V
    .locals 2

    .prologue
    .line 4707
    const-string v1, "wallpaper"

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    .line 4708
    .local v0, wpm:Landroid/app/WallpaperManager;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4709
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 4712
    :goto_0
    return-void

    .line 4711
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    goto :goto_0
.end method

.method updateWindowTransparency()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 4755
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mForce16BitWindow:Z

    if-nez v5, :cond_0

    .line 4782
    :goto_0
    return-void

    .line 4762
    :cond_0
    const-string v5, "wallpaper"

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/WallpaperManager;

    .line 4763
    .local v4, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v3

    .line 4765
    .local v3, wi:Landroid/app/WallpaperInfo;
    if-eqz v3, :cond_1

    const/4 v5, 0x1

    move v2, v5

    .line 4767
    .local v2, usingLiveWallpaper:Z
    :goto_1
    if-eqz v2, :cond_2

    .line 4768
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowTranslucent()V

    .line 4769
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 4770
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .end local v2           #usingLiveWallpaper:Z
    :cond_1
    move v2, v6

    .line 4765
    goto :goto_1

    .line 4774
    .restart local v2       #usingLiveWallpaper:Z
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/Launcher;->setWindowOpaque()V

    .line 4775
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperCanvasView:Lcom/sec/android/app/twlauncher/WallpaperCanvasView;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/WallpaperCanvasView;->setVisibility(I)V

    .line 4777
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4778
    .local v0, time1:J
    invoke-virtual {v4}, Landroid/app/WallpaperManager;->getFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWallpaperImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 4779
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/Launcher;->makeBitmapMenuWallpaper()V

    goto :goto_0
.end method

.method updateWorkspaceBadge()V
    .locals 12

    .prologue
    .line 2690
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 2691
    .local v9, wcount:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v9, :cond_3

    .line 2692
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mWorkspace:Lcom/sec/android/app/twlauncher/Workspace;

    invoke-virtual {v10, v4}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 2693
    .local v3, child:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v2

    .line 2694
    .local v2, cellCount:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 2695
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2696
    .local v1, cell:Landroid/view/View;
    instance-of v10, v1, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v10, :cond_1

    .line 2697
    move-object v0, v1

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolder;

    move-object v8, v0

    .line 2698
    .local v8, uf:Lcom/sec/android/app/twlauncher/UserFolder;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/UserFolder;->notifyDataSetChanged()V

    .line 2694
    .end local v8           #uf:Lcom/sec/android/app/twlauncher/UserFolder;
    :cond_0
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2702
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 2703
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    instance-of v10, v7, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v10, :cond_0

    .line 2705
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v6, v0

    .line 2706
    .local v6, si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/Launcher;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    iget-object v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v10, v11}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v10

    iput v10, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 2707
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    goto :goto_2

    .line 2711
    .end local v1           #cell:Landroid/view/View;
    .end local v6           #si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/CellLayout;->invalidate()V

    .line 2691
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2713
    .end local v2           #cellCount:I
    .end local v3           #child:Lcom/sec/android/app/twlauncher/CellLayout;
    .end local v5           #j:I
    :cond_3
    return-void
.end method
