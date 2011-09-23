.class public Lcom/android/browser/BrowserActivity;
.super Landroid/app/Activity;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserActivity$UrlData;,
        Lcom/android/browser/BrowserActivity$SetAsWallpaper;,
        Lcom/android/browser/BrowserActivity$Download;,
        Lcom/android/browser/BrowserActivity$Copy;,
        Lcom/android/browser/BrowserActivity$ClearThumbnails;
    }
.end annotation


# static fields
.field protected static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern; = null

.field private static final CHARGINGBLOCK_CLEAR_PATH:Ljava/lang/String; = "/sys/class/power_supply/battery/chargingblock_clear"

.field static final COMBO_PAGE:I = 0x1

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams; = null

.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams; = null

.field private static final DEBUG:Z = false

.field static final DOWNLOAD_PAGE:I = 0x2

.field static final DRAW_ZOOM_SURFACEVIEW:I = 0x6f

.field private static final EMPTY_MENU:I = -0x1

.field static final EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData; = null

.field static final FILE_SELECTED:I = 0x4

.field private static final FOCUS_NODE_HREF:I = 0x66

.field private static final GOOGLEREADER_ADDFEED_URL:Ljava/lang/String; = "http://www.google.com/reader/i/#stream/feed/"

.field static final GOOGLE_SEARCH_SOURCE_GOTO:Ljava/lang/String; = "browser-goto"

.field static final GOOGLE_SEARCH_SOURCE_SEARCHKEY:Ljava/lang/String; = "browser-key"

.field static final GOOGLE_SEARCH_SOURCE_SUGGEST:Ljava/lang/String; = "browser-suggest"

.field static final GOOGLE_SEARCH_SOURCE_TYPE:Ljava/lang/String; = "browser-type"

.field static final GOOGLE_SEARCH_SOURCE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final INITIAL_PROGRESS:I = 0xa

.field private static final INSTALL_SHORTCUT:Ljava/lang/String; = "com.android.launcher.action.INSTALL_SHORTCUT"

.field public static final LOAD_URL:I = 0x3e9

.field static final LOCK_ICON_MIXED:I = 0x2

.field static final LOCK_ICON_SECURE:I = 0x1

.field static final LOCK_ICON_UNSECURE:I = 0x0

.field private static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final LOGV_ENABLED:Z = false

.field private static final ON_PAGE_STARTED:I = 0x6d

.field static final PREFERENCES_PAGE:I = 0x3

.field static final QUERY_PLACE_HOLDER:Ljava/lang/String; = "%s"

.field static final QuickSearch_B:Ljava/lang/String; = "http://search.vzwwap.com/vzwsearch/?q=%s"

.field static final QuickSearch_D:Ljava/lang/String; = "http://dictionary.reference.com/search?q=%s"

.field static final QuickSearch_G:Ljava/lang/String; = "http://www.google.com/m?q=%s"

.field static final QuickSearch_L:Ljava/lang/String; = "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

.field static final QuickSearch_W:Ljava/lang/String; = "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

.field private static final RELEASE_WAKELOCK:I = 0x6b

.field static final RSS_NEW_LINK:I = 0x5

.field static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"

.field private static final SHORTCUT_DICTIONARY_SEARCH:I = 0x3

.field private static final SHORTCUT_GOOGLE_MOBILE_LOCAL_SEARCH:I = 0x4

.field private static final SHORTCUT_GOOGLE_SEARCH:I = 0x1

.field private static final SHORTCUT_INVALID:I = 0x0

.field private static final SHORTCUT_WIKIPEDIA_SEARCH:I = 0x2

.field public static final STOP_LOAD:I = 0x3ea

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static THUMBNAIL_HEIGHT:I = 0x0

.field private static THUMBNAIL_WIDTH:I = 0x0

.field static final UPDATE_BOOKMARK_THUMBNAIL:I = 0x6c

.field private static final WAKELOCK_TIMEOUT:I = 0x493e0

.field private static final WEB_BROWSER:I = 0x8

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I = null

.field private static mInTrace:Z = false

.field public static orien:I = 0x0

.field private static sGoogleApps:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLogTag:Ljava/lang/String; = "BrowserActivity LOG"


# instance fields
.field private autobright:I

.field private brightToast:Landroid/widget/Toast;

.field private mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

.field mActivityInPause:Z

.field mAddFeedUrl:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBrightPopup:Landroid/app/AlertDialog;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field mCanChord:Z

.field private mConfigChanged:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCurrentMenuState:I

.field private mCustomView:Landroid/view/View;

.field private mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mDidStopLoad:Z

.field private mErrorConsoleContainer:Landroid/widget/LinearLayout;

.field private mFakeTitleBar:Lcom/android/browser/TitleBar;

.field private mFindDialog:Lcom/android/browser/FindDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mIMEReceiver:Landroid/content/BroadcastReceiver;

.field private mIconView:Z

.field private mIdleStart:J

.field private mInLoad:Z

.field private mIrqStart:J

.field private mIsNetworkUp:Z

.field private mLastEnteredUrl:Ljava/lang/String;

.field private mMenu:Landroid/view/Menu;

.field private mMenuIsDown:Z

.field private mMenuState:I

.field private mMixLockIcon:Landroid/graphics/drawable/Drawable;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOldMenuState:I

.field private mOptionsMenuOpen:Z

.field private mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/Tab;

.field private mPerfTester:Lcom/android/browser/PerformanceTester;

.field private mProcessStart:J

.field private mResolver:Landroid/content/ContentResolver;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mStart:J

.field private mStopToast:Landroid/widget/Toast;

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mSystemStart:J

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTitle:Ljava/lang/String;

.field private mTitleBar:Lcom/android/browser/TitleBar;

.field private mUiStart:J

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUrl:Ljava/lang/String;

.field private mUserStart:J

.field private mVideoProgressView:Landroid/view/View;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mZoomView:Lcom/android/browser/WebGLZoomView;

.field private mbrightProgressBar:Landroid/widget/SeekBar;

.field private mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 204
    sput v0, Lcom/android/browser/BrowserActivity;->orien:I

    .line 3229
    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 3230
    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 4639
    const-string v0, "(?i)((?:http|https|file|rtsp):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    .line 4838
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/BrowserActivity;->SYSTEM_CPU_FORMAT:[I

    .line 4896
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 4900
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    .line 4946
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    .line 4977
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    .line 4978
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5027
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

    return-void

    .line 4838
    nop

    :array_0
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    .line 4946
    :array_1
    .array-data 0x4
        0xact 0x0t 0xdt 0x7ft
        0xadt 0x0t 0xdt 0x7ft
        0xaet 0x0t 0xdt 0x7ft
        0xaft 0x0t 0xdt 0x7ft
        0xb0t 0x0t 0xdt 0x7ft
        0xb1t 0x0t 0xdt 0x7ft
        0xb2t 0x0t 0xdt 0x7ft
        0xb3t 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 183
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 205
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 210
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 211
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 213
    iput v2, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    .line 219
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    .line 969
    new-instance v0, Lcom/android/browser/BrowserActivity$9;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$9;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3003
    new-instance v0, Lcom/android/browser/BrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$10;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    .line 4816
    iput v3, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 4817
    const v0, 0x7f0d0096

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 4818
    iput v2, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 4831
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 4941
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 4942
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 5025
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Set;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->updateScreenshot(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/browser/BrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/browser/BrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->packageChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/browser/BrowserActivity;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->addPackageNames(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->setWindowBrightness(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method private addPackageNames(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4768
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4769
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 4774
    :goto_0
    return-void

    .line 4773
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageNames(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "t"

    .prologue
    .line 2393
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->attachTabToContentView(Landroid/view/ViewGroup;)V

    .line 2395
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-eqz v2, :cond_0

    .line 2396
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 2397
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-nez v2, :cond_2

    .line 2398
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 2403
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2408
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2409
    .local v1, view:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2410
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2411
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 2416
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2420
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p1, Lcom/android/browser/Tab;->mContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v6, 0x1020002

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/browser/WebGLZoomView;->setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;)V

    .line 2422
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomView;->getAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2424
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2425
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2427
    :cond_1
    return-void

    .line 2400
    .end local v1           #view:Landroid/webkit/WebView;
    .restart local v0       #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_0

    .line 2413
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    .restart local v1       #view:Landroid/webkit/WebView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->revertVoiceTitleBar()V

    goto :goto_1
.end method

.method private batteryChargingblock_clear(Z)V
    .locals 14
    .parameter "value"

    .prologue
    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const-string v13, "BrowserActivity LOG"

    .line 5031
    const/4 v3, 0x0

    .line 5032
    .local v3, fw:Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 5033
    .local v1, fr:Ljava/io/FileReader;
    const/4 v9, 0x0

    .line 5034
    .local v9, out:Ljava/io/BufferedWriter;
    const/4 v6, 0x0

    .line 5038
    .local v6, in:Ljava/io/BufferedReader;
    const-string v11, "BrowserActivity LOG"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "batteryChargingblock_clear "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5041
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    invoke-direct {v2, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5042
    .end local v1           #fr:Ljava/io/FileReader;
    .local v2, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v7, Ljava/io/BufferedReader;

    invoke-direct {v7, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5044
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 5045
    .local v8, line:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 5046
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 5047
    .local v5, icb:I
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V

    .line 5049
    if-eqz p1, :cond_0

    .line 5050
    const-string v11, "BrowserActivity LOG"

    const-string v12, "Browser start"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5051
    or-int/lit8 v5, v5, 0x8

    .line 5058
    :goto_0
    new-instance v4, Ljava/io/FileWriter;

    const-string v11, "/sys/class/power_supply/battery/chargingblock_clear"

    const/4 v12, 0x0

    invoke-direct {v4, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 5059
    .end local v3           #fw:Ljava/io/FileWriter;
    .local v4, fw:Ljava/io/FileWriter;
    :try_start_3
    new-instance v10, Ljava/io/BufferedWriter;

    invoke-direct {v10, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 5060
    .end local v9           #out:Ljava/io/BufferedWriter;
    .local v10, out:Ljava/io/BufferedWriter;
    :try_start_4
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5061
    invoke-virtual {v10}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .line 5065
    .end local v4           #fw:Ljava/io/FileWriter;
    .end local v5           #icb:I
    .end local v8           #line:Ljava/lang/String;
    .restart local v3       #fw:Ljava/io/FileWriter;
    :goto_1
    return-void

    .line 5054
    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :cond_0
    :try_start_5
    const-string v11, "BrowserActivity LOG"

    const-string v12, "Browser stop"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 5055
    and-int/lit8 v5, v5, -0x9

    goto :goto_0

    .line 5062
    .end local v2           #fr:Ljava/io/FileReader;
    .end local v5           #icb:I
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .restart local v1       #fr:Ljava/io/FileReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v11

    move-object v0, v11

    .line 5063
    .local v0, e:Ljava/lang/Exception;
    :goto_2
    const-string v11, "BrowserActivity LOG"

    const-string v11, " Can\'t open /sys/class/power_supply/battery/chargingblock_clear"

    invoke-static {v13, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5062
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #fr:Ljava/io/FileReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v11

    move-object v0, v11

    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_2
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v5       #icb:I
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v8       #line:Ljava/lang/String;
    :catch_3
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2

    .end local v1           #fr:Ljava/io/FileReader;
    .end local v3           #fw:Ljava/io/FileWriter;
    .end local v6           #in:Ljava/io/BufferedReader;
    .end local v9           #out:Ljava/io/BufferedWriter;
    .restart local v2       #fr:Ljava/io/FileReader;
    .restart local v4       #fw:Ljava/io/FileWriter;
    .restart local v7       #in:Ljava/io/BufferedReader;
    .restart local v10       #out:Ljava/io/BufferedWriter;
    :catch_4
    move-exception v11

    move-object v0, v11

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10           #out:Ljava/io/BufferedWriter;
    .restart local v9       #out:Ljava/io/BufferedWriter;
    move-object v1, v2

    .end local v2           #fr:Ljava/io/FileReader;
    .restart local v1       #fr:Ljava/io/FileReader;
    move-object v3, v4

    .end local v4           #fw:Ljava/io/FileWriter;
    .restart local v3       #fw:Ljava/io/FileWriter;
    goto :goto_2
.end method

.method static buildTitleUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "url"

    .prologue
    .line 2704
    const/4 v2, 0x0

    .line 2706
    .local v2, titleUrl:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 2709
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2710
    .local v3, urlObj:Ljava/net/URL;
    if-eqz v3, :cond_0

    .line 2711
    const-string v2, ""

    .line 2713
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 2714
    .local v1, protocol:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 2717
    move-object v2, v0

    .line 2718
    if-eqz v1, :cond_0

    .line 2720
    const-string v4, "https"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2729
    .end local v0           #host:Ljava/lang/String;
    .end local v1           #protocol:Ljava/lang/String;
    .end local v3           #urlObj:Ljava/net/URL;
    :cond_0
    :goto_0
    return-object v2

    .line 2726
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2970
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2971
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2973
    :cond_0
    return-void
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 2624
    :try_start_0
    const-string v2, "clipboard"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 2625
    .local v0, clip:Landroid/text/IClipboard;
    if-eqz v0, :cond_0

    .line 2626
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2631
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_0
    :goto_0
    return-void

    .line 2628
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 2629
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "browser"

    const-string v3, "Copy failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createAndShowNetworkDialog()V
    .locals 3

    .prologue
    .line 4427
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4428
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 4432
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeContextMenu()V

    .line 4434
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v0, :cond_1

    .line 4435
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900d9

    new-instance v2, Lcom/android/browser/BrowserActivity$23;

    invoke-direct {v2, p0}, Lcom/android/browser/BrowserActivity$23;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 4448
    :cond_1
    return-void
.end method

.method private createBrightPopup()V
    .locals 8

    .prologue
    .line 910
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 911
    .local v2, inflate:Landroid/view/LayoutInflater;
    const v6, 0x7f030004

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 913
    .local v1, bright:Landroid/view/View;
    const v6, 0x7f0d0010

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SeekBar;

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 915
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    if-eqz v6, :cond_0

    .line 917
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setMax(I)V

    .line 918
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v7}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v7

    div-int/lit8 v7, v7, 0xa

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 919
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 920
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 923
    :cond_0
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v4

    .line 925
    .local v4, tempbright:I
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 927
    .local v0, bpopup:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f09002c

    new-instance v7, Lcom/android/browser/BrowserActivity$6;

    invoke-direct {v7, p0}, Lcom/android/browser/BrowserActivity$6;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 934
    const/high16 v6, 0x104

    new-instance v7, Lcom/android/browser/BrowserActivity$7;

    invoke-direct {v7, p0, v4}, Lcom/android/browser/BrowserActivity$7;-><init>(Lcom/android/browser/BrowserActivity;I)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 943
    new-instance v6, Lcom/android/browser/BrowserActivity$8;

    invoke-direct {v6, p0, v4}, Lcom/android/browser/BrowserActivity$8;-><init>(Lcom/android/browser/BrowserActivity;I)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 952
    const v6, 0x7f09010b

    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 953
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 954
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    .line 957
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    .line 958
    .local v5, window:Landroid/view/Window;
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    .line 959
    .local v3, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v6, 0x0

    iput v6, v3, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 960
    invoke-virtual {v5, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 961
    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 962
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 967
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "source"

    .prologue
    .line 1635
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1636
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    return-object v0
.end method

.method private createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "view"

    .prologue
    const/4 v10, 0x0

    .line 3260
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v4

    .line 3261
    .local v4, thumbnail:Landroid/graphics/Picture;
    if-nez v4, :cond_0

    move-object v7, v10

    .line 3295
    :goto_0
    return-object v7

    .line 3264
    :cond_0
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3266
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3269
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Picture;->getWidth()I

    move-result v6

    .line 3270
    .local v6, thumbnailWidth:I
    invoke-virtual {v4}, Landroid/graphics/Picture;->getHeight()I

    move-result v5

    .line 3271
    .local v5, thumbnailHeight:I
    const/high16 v2, 0x3f80

    .line 3272
    .local v2, scaleFactorX:F
    const/high16 v3, 0x3f80

    .line 3273
    .local v3, scaleFactorY:F
    if-lez v6, :cond_1

    .line 3274
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v6

    div-float v2, v7, v8

    .line 3280
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v7

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    if-le v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v7

    if-ge v5, v7, :cond_2

    if-lez v5, :cond_2

    .line 3285
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float v3, v7, v8

    .line 3292
    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3294
    invoke-virtual {v4, v1}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v7, v0

    .line 3295
    goto :goto_0

    :cond_1
    move-object v7, v10

    .line 3277
    goto :goto_0

    .line 3289
    :cond_2
    move v3, v2

    goto :goto_1
.end method

.method private createShortcutIntent()Landroid/content/Intent;
    .locals 31

    .prologue
    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v24

    .line 2023
    .local v24, vWebView:Landroid/webkit/WebView;
    if-nez v24, :cond_0

    .line 2025
    const-string v27, "browser"

    const-string v28, "createShortcutIntent : Top window is null"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    const/16 v27, 0x0

    .line 2117
    :goto_0
    return-object v27

    .line 2028
    :cond_0
    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v18

    .line 2029
    .local v18, strTitle:Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v19

    .line 2031
    .local v19, strUrl:Ljava/lang/String;
    if-eqz v19, :cond_1

    const/16 v27, 0x1

    const-string v28, "about:blank"

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_2

    .line 2032
    :cond_1
    const-string v27, "browser"

    const-string v28, "createShortcutIntent : strURL is null or a blank page"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    const/16 v27, 0x0

    goto :goto_0

    .line 2037
    :cond_2
    new-instance v13, Landroid/content/Intent;

    const-string v27, "android.intent.action.VIEW"

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v28

    move-object v0, v13

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2038
    .local v13, intentShortcut:Landroid/content/Intent;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->hashCode()I

    move-result v27

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v22, v0

    .line 2039
    .local v22, urlHash:J
    const/16 v27, 0x20

    shl-long v27, v22, v27

    invoke-virtual {v13}, Ljava/lang/Object;->hashCode()I

    move-result v29

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v29, v0

    or-long v20, v27, v29

    .line 2040
    .local v20, uniqueId:J
    const-string v27, "com.android.browser.application_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    move-object v0, v13

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2043
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 2044
    .local v12, intentAddShortcut:Landroid/content/Intent;
    const-string v27, "android.intent.extra.shortcut.INTENT"

    move-object v0, v12

    move-object/from16 v1, v27

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2045
    const-string v27, "android.intent.extra.shortcut.NAME"

    move-object v0, v12

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2071
    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2073
    .local v6, bmpFavicon:Landroid/graphics/Bitmap;
    if-nez v6, :cond_3

    .line 2074
    const-string v27, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v28, 0x7f02001c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v28

    move-object v0, v12

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2116
    :goto_1
    const-string v27, "duplicate"

    const/16 v28, 0x0

    move-object v0, v12

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v27, v12

    .line 2117
    goto/16 :goto_0

    .line 2077
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02001d

    invoke-static/range {v27 .. v28}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 2081
    .local v7, bmpIcon:Landroid/graphics/Bitmap;
    sget-object v27, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v28, 0x1

    move-object v0, v7

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2082
    .local v5, bmpCopiedIcon:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2085
    .local v8, canvas:Landroid/graphics/Canvas;
    new-instance v14, Landroid/graphics/Paint;

    const/16 v27, 0x3

    move-object v0, v14

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 2086
    .local v14, p:Landroid/graphics/Paint;
    sget-object v27, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    move-object v0, v14

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2087
    const/16 v27, -0x1

    move-object v0, v14

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2089
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move v9, v0

    .line 2091
    .local v9, density:F
    const/high16 v27, 0x4180

    mul-float v11, v27, v9

    .line 2092
    .local v11, iconSize:F
    const/high16 v27, 0x4000

    mul-float v15, v27, v9

    .line 2093
    .local v15, padding:F
    const/high16 v27, 0x4000

    mul-float v27, v27, v15

    add-float v17, v11, v27

    .line 2095
    .local v17, rectSize:F
    new-instance v10, Landroid/graphics/Rect;

    const/16 v27, 0x0

    const/16 v28, 0x0

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v29

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v30

    move-object v0, v10

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2096
    .local v10, iconBounds:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v27

    const/high16 v28, 0x4000

    div-float v28, v17, v28

    sub-float v25, v27, v28

    .line 2100
    .local v25, x:F
    invoke-virtual {v10}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v27

    const/high16 v28, 0x4000

    div-float v28, v17, v28

    sub-float v27, v27, v28

    sub-float v26, v27, v15

    .line 2101
    .local v26, y:F
    new-instance v16, Landroid/graphics/RectF;

    add-float v27, v25, v17

    add-float v28, v26, v17

    move-object/from16 v0, v16

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2104
    .local v16, r:Landroid/graphics/RectF;
    const/high16 v27, 0x4000

    const/high16 v28, 0x4000

    move-object v0, v8

    move-object/from16 v1, v16

    move/from16 v2, v27

    move/from16 v3, v28

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2109
    move-object/from16 v0, v16

    move v1, v15

    move v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 2110
    const/16 v27, 0x0

    move-object v0, v8

    move-object v1, v6

    move-object/from16 v2, v27

    move-object/from16 v3, v16

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2111
    const-string v27, "android.intent.extra.shortcut.ICON"

    move-object v0, v12

    move-object/from16 v1, v27

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 3796
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 3798
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 3799
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 3800
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 3801
    :cond_0
    const/4 v5, 0x1

    .line 3805
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    move-object v7, p0

    .line 3819
    :goto_1
    return-object v7

    .line 3799
    .restart local v1       #c:C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3809
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3810
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 3811
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 3812
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3813
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3810
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3815
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 3819
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inUrl"

    .prologue
    .line 884
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 885
    .local v2, colon:I
    const/4 v0, 0x1

    .line 886
    .local v0, allLower:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 887
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 888
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 897
    .end local v1           #ch:C
    :cond_0
    const-string v4, "http://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 905
    :cond_1
    :goto_1
    return-object p0

    .line 891
    .restart local v1       #ch:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v0, v4

    .line 892
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    .line 893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 886
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 899
    .end local v1           #ch:C
    :cond_4
    const-string v4, "http:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 901
    :cond_5
    const-string v4, "http:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 902
    :cond_6
    const-string v4, "/"

    const-string v5, "//"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 903
    :cond_7
    const-string v4, ":"

    const-string v5, "://"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "certificateDate"

    .prologue
    const-string v2, ""

    .line 4286
    if-nez p1, :cond_0

    .line 4287
    const-string v1, ""

    move-object v1, v2

    .line 4293
    :goto_0
    return-object v1

    .line 4289
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4290
    .local v0, formattedDate:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 4291
    const-string v1, ""

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 4293
    goto :goto_0
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 3255
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    .line 3256
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3239
    sget v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    if-nez v1, :cond_0

    .line 3240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 3241
    .local v0, density:F
    const/high16 v1, 0x42b4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 3242
    const/high16 v1, 0x42a0

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 3244
    .end local v0           #density:F
    :cond_0
    sget v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    return v1
.end method

.method private getInstalledPackages()V
    .locals 2

    .prologue
    .line 4777
    new-instance v0, Lcom/android/browser/BrowserActivity$24;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$24;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 4799
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4800
    return-void
.end method

.method private getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;
    .locals 13
    .parameter "intent"

    .prologue
    .line 804
    const-string v10, ""

    .line 805
    .local v10, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 806
    .local v3, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    .line 807
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, action:Ljava/lang/String;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 809
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    .line 817
    if-eqz v10, :cond_4

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 818
    const-string v11, "com.android.browser.headers"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 820
    .local v7, pairs:Landroid/os/Bundle;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/os/Bundle;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    .line 821
    invoke-virtual {v7}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 822
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    .end local v3           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 823
    .restart local v3       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 824
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 825
    .local v5, key:Ljava/lang/String;
    invoke-virtual {v7, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 829
    .end local v4           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #key:Ljava/lang/String;
    .end local v7           #pairs:Landroid/os/Bundle;
    :cond_0
    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 832
    :cond_1
    const-string v11, "query"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 833
    if-eqz v10, :cond_4

    .line 834
    iput-object v10, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 837
    invoke-static {v10}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 838
    invoke-virtual {p0, v10}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 839
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 840
    .local v2, cr:Landroid/content/ContentResolver;
    move-object v6, v10

    .line 841
    .local v6, newUrl:Ljava/lang/String;
    new-instance v11, Lcom/android/browser/BrowserActivity$5;

    invoke-direct {v11, p0, v2, v6}, Lcom/android/browser/BrowserActivity$5;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Void;

    invoke-virtual {v11, v12}, Lcom/android/browser/BrowserActivity$5;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 847
    const-string v8, "&source=android-browser-suggest&"

    .line 848
    .local v8, searchSource:Ljava/lang/String;
    invoke-virtual {v10, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 849
    const/4 v9, 0x0

    .line 850
    .local v9, source:Ljava/lang/String;
    const-string v11, "app_data"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 851
    .local v1, appData:Landroid/os/Bundle;
    if-eqz v1, :cond_2

    .line 852
    const-string v11, "source"

    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 854
    :cond_2
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 855
    const-string v9, "unknown"

    .line 857
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&source=android-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "&"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v8, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 862
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #appData:Landroid/os/Bundle;
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v6           #newUrl:Ljava/lang/String;
    .end local v8           #searchSource:Ljava/lang/String;
    .end local v9           #source:Ljava/lang/String;
    :cond_4
    new-instance v11, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v11, v10, v3, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V

    return-object v11
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 733
    if-nez p1, :cond_0

    move v4, v5

    .line 762
    :goto_0
    return v4

    .line 735
    :cond_0
    const/4 v3, 0x0

    .line 736
    .local v3, url:Ljava/lang/String;
    const/4 v2, 0x0

    .line 737
    .local v2, temp:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 741
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 743
    goto :goto_0

    .line 745
    :cond_1
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 746
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 747
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 755
    .end local v1           #data:Landroid/net/Uri;
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 756
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_3

    .line 757
    move-object v2, v3

    .line 758
    const-string v3, "http://"

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 762
    :cond_3
    const-string v4, "app_data"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "intent_extra_data_key"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/browser/BrowserActivity;->handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v4

    goto :goto_0

    .line 748
    :cond_4
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 751
    :cond_5
    const-string v4, "query"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 7
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v6, 0x0

    .line 772
    if-nez p1, :cond_0

    move v4, v6

    .line 800
    :goto_0
    return v4

    .line 776
    :cond_0
    invoke-static {p1}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 780
    .local v3, url:Ljava/lang/String;
    sget-object v4, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->parseUrlShortcut(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v4, v6

    .line 783
    goto :goto_0

    .line 786
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 787
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 788
    .local v1, newUrl:Ljava/lang/String;
    new-instance v4, Lcom/android/browser/BrowserActivity$4;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/browser/BrowserActivity$4;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserActivity$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 796
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 797
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-nez v2, :cond_3

    move v4, v6

    goto :goto_0

    .line 798
    :cond_3
    invoke-interface {v2, p0, v3, p2, p3}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 800
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 8
    .parameter "certificate"

    .prologue
    const/4 v7, 0x0

    .line 4234
    if-nez p1, :cond_0

    move-object v6, v7

    .line 4277
    .end local p0
    :goto_0
    return-object v6

    .line 4238
    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4240
    .local v2, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f03001e

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 4244
    .local v0, certificateView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v5

    .line 4245
    .local v5, issuedTo:Landroid/net/http/SslCertificate$DName;
    if-eqz v5, :cond_1

    .line 4246
    const v6, 0x7f0d0065

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4248
    const v6, 0x7f0d0067

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4250
    const v6, 0x7f0d0069

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4255
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v3

    .line 4256
    .local v3, issuedBy:Landroid/net/http/SslCertificate$DName;
    if-eqz v3, :cond_2

    .line 4257
    const v6, 0x7f0d006b

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4259
    const v6, 0x7f0d006d

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4261
    const v6, 0x7f0d006f

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4266
    :cond_2
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 4268
    .local v4, issuedOn:Ljava/lang/String;
    const v6, 0x7f0d0072

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4272
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4274
    .local v1, expiresOn:Ljava/lang/String;
    const v6, 0x7f0d0074

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v6, v0

    .line 4277
    goto/16 :goto_0
.end method

.method private loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 4600
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4601
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 4602
    return-void
.end method

.method private loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V
    .locals 2
    .parameter "t"
    .parameter "data"

    .prologue
    .line 4611
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4612
    invoke-virtual {p2, p1}, Lcom/android/browser/BrowserActivity$UrlData;->loadIn(Lcom/android/browser/Tab;)V

    .line 4613
    return-void
.end method

.method private loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 4584
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 4585
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4586
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4587
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4590
    :cond_0
    return-void
.end method

.method private openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 2464
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method private packageChanged(Ljava/lang/String;Z)V
    .locals 2
    .parameter "packageName"
    .parameter "wasAdded"

    .prologue
    .line 4755
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4756
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 4765
    :goto_0
    return-void

    .line 4760
    :cond_0
    if-eqz p2, :cond_1

    .line 4761
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 4763
    :cond_1
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private parseUrlShortcut(Ljava/lang/String;)I
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 713
    if-nez p1, :cond_0

    move v0, v2

    .line 724
    :goto_0
    return v0

    .line 716
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 717
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v2

    .line 724
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 718
    goto :goto_0

    :sswitch_1
    move v0, v4

    .line 719
    goto :goto_0

    .line 720
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 721
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 717
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x67 -> :sswitch_0
        0x6c -> :sswitch_3
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method private pauseWebViewTimers()Z
    .locals 4

    .prologue
    .line 1469
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1470
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1471
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 1472
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1473
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1474
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1475
    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1477
    :cond_0
    const/4 v3, 0x1

    .line 1479
    .end local v2           #w:Landroid/webkit/WebView;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private removeTabFromContentView(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 2438
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->removeTabFromContentView(Landroid/view/ViewGroup;)V

    .line 2440
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 2441
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v0, :cond_0

    .line 2442
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2445
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2446
    .local v1, view:Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 2447
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2448
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/browser/WebGLZoomView;->setVisibility(I)V

    .line 2450
    :cond_1
    return-void
.end method

.method private resetLockIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 3934
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->resetLockIcon(Ljava/lang/String;)V

    .line 3935
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 3936
    return-void
.end method

.method private resetTitleAndIcon(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 2670
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 2671
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 2672
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2673
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2678
    :goto_0
    return-void

    .line 2675
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetTitleIconAndProgress()V
    .locals 3

    .prologue
    .line 2659
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2660
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 2666
    :goto_0
    return-void

    .line 2663
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 2664
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 2665
    .local v1, progress:I
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method private resumeWebViewTimers()V
    .locals 4

    .prologue
    .line 1456
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1457
    .local v1, tab:Lcom/android/browser/Tab;
    if-nez v1, :cond_1

    .line 1466
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1459
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1460
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1461
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1462
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1463
    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0
.end method

.method private retainIconsOnStartup()V
    .locals 7

    .prologue
    .line 1485
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    .line 1486
    .local v1, db:Landroid/webkit/WebIconDatabase;
    const-string v5, "icons"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 1487
    const/4 v0, 0x0

    .line 1489
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1490
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1491
    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1493
    .local v4, urlIndex:I
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1494
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 1495
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 1500
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlIndex:I
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1502
    :cond_2
    :goto_0
    return-void

    .line 1497
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1498
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v5, "browser"

    const-string v6, "retainIconsOnStartup"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1500
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method private sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 4748
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4749
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4750
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 4752
    :cond_0
    return-void
.end method

.method private setStatusBarVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x400

    .line 4742
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 4743
    .local v0, flag:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    .line 4744
    return-void

    .end local v0           #flag:I
    :cond_0
    move v0, v2

    .line 4742
    goto :goto_0
.end method

.method private setWindowBrightness(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 988
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 990
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-gtz p1, :cond_0

    .line 991
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 999
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserSettings;->setBrightness(I)V

    .line 1000
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1002
    return-void

    .line 992
    :cond_0
    const/16 v1, 0x28

    if-ne p1, v1, :cond_1

    .line 993
    const v1, 0x3ee66666

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 994
    :cond_1
    const/16 v1, 0x32

    if-ne p1, v1, :cond_2

    .line 995
    const v1, 0x3f11eb85

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 997
    :cond_2
    div-int/lit8 v1, p1, 0xa

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    const v2, 0x3dcccccd

    mul-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0
.end method

.method public static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "c"
    .parameter "title"
    .parameter "url"
    .parameter "favicon"
    .parameter "screenshot"

    .prologue
    .line 3162
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3163
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3164
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3165
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3166
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3167
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3169
    const v1, 0x7f090064

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3174
    :goto_0
    return-void

    .line 3171
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private showFakeTitleBar()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1168
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v1, v10}, Lcom/android/browser/WebGLZoomView;->setTitleBarVisibility(Z)V

    .line 1170
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v1, :cond_0

    .line 1172
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v8

    .line 1174
    .local v8, mainView:Landroid/webkit/WebView;
    if-nez v8, :cond_1

    .line 1201
    .end local v8           #mainView:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1177
    .restart local v8       #mainView:Landroid/webkit/WebView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v1

    sput v1, Lcom/android/browser/BrowserActivity;->orien:I

    .line 1178
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 1179
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v1}, Lcom/android/browser/FindDialog;->getFindDialog()Z

    move-result v1

    if-ne v1, v11, :cond_2

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v1, :cond_2

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    if-eq v1, v11, :cond_0

    .line 1184
    :cond_2
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    .line 1189
    .local v9, manager:Landroid/view/WindowManager;
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x2

    const/16 v4, 0x8

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1196
    .local v0, params:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1197
    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_3

    move v6, v11

    .line 1198
    .local v6, atTop:Z
    :goto_1
    if-eqz v6, :cond_4

    move v1, v10

    :goto_2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1199
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v9, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .end local v6           #atTop:Z
    :cond_3
    move v6, v10

    .line 1197
    goto :goto_1

    .line 1198
    .restart local v6       #atTop:Z
    :cond_4
    const v1, 0x7f0b0003

    goto :goto_2
.end method

.method private showPageInfo(Lcom/android/browser/Tab;Z)V
    .locals 9
    .parameter "tab"
    .parameter "fromShowSSLCertificateOnError"

    .prologue
    .line 3969
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3972
    .local v1, factory:Landroid/view/LayoutInflater;
    const v6, 0x7f03001a

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 3974
    .local v2, pageInfoView:Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v5

    .line 3976
    .local v5, view:Landroid/webkit/WebView;
    const/4 v4, 0x0

    .line 3977
    .local v4, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 3979
    .local v3, title:Ljava/lang/String;
    if-nez v5, :cond_4

    .line 3980
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 3981
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 3991
    :goto_0
    if-nez v4, :cond_0

    .line 3992
    const-string v4, ""

    .line 3994
    :cond_0
    if-nez v3, :cond_1

    .line 3995
    const-string v3, ""

    .line 3998
    :cond_1
    const v6, 0x7f0d0014

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3999
    const v6, 0x7f0d0005

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4001
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    .line 4002
    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 4004
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090012

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x108009b

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f090010

    new-instance v8, Lcom/android/browser/BrowserActivity$13;

    invoke-direct {v8, p0, p2}, Lcom/android/browser/BrowserActivity$13;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/android/browser/BrowserActivity$12;

    invoke-direct {v7, p0, p2}, Lcom/android/browser/BrowserActivity$12;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4045
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_2

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 4048
    :cond_2
    const v6, 0x7f090018

    new-instance v7, Lcom/android/browser/BrowserActivity$14;

    invoke-direct {v7, p0, p2, v5, p1}, Lcom/android/browser/BrowserActivity$14;-><init>(Lcom/android/browser/BrowserActivity;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4074
    :cond_3
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 4075
    return-void

    .line 3982
    .end local v0           #alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    :cond_4
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v6

    if-ne v5, v6, :cond_5

    .line 3984
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 3985
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    goto :goto_0

    .line 3987
    :cond_5
    invoke-virtual {v5}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 3988
    invoke-virtual {v5}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 4083
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 4085
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 4125
    :goto_0
    return-void

    .line 4089
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4091
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0d0061

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 4094
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const v4, 0x7f03001f

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4096
    .local v2, ll:Landroid/widget/LinearLayout;
    const v4, 0x7f0d0075

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09001e

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4099
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 4100
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09001d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020017

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090010

    new-instance v6, Lcom/android/browser/BrowserActivity$16;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/BrowserActivity$16;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/BrowserActivity$15;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/BrowserActivity$15;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "inUri"

    .prologue
    .line 4633
    if-eqz p1, :cond_0

    .line 4634
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4636
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInLoadMenuItems()V
    .locals 4

    .prologue
    .line 1538
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    .line 1547
    :goto_0
    return-void

    .line 1541
    :cond_0
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0d00b7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object v1, v2

    .line 1544
    .local v1, src:Landroid/view/MenuItem;
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0d009a

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1545
    .local v0, dest:Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1546
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1541
    .end local v0           #dest:Landroid/view/MenuItem;
    .end local v1           #src:Landroid/view/MenuItem;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0d00b8

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    move-object v1, v2

    goto :goto_1
.end method

.method private updateLockIconImage(I)V
    .locals 2
    .parameter "lockIconType"

    .prologue
    .line 3949
    const/4 v0, 0x0

    .line 3950
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 3951
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 3955
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 3956
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 3957
    return-void

    .line 3952
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 3953
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateLockIconToLatest()V
    .locals 1

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getLockIconType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 3943
    return-void
.end method

.method private updatePerfTestMenuItems()V
    .locals 6

    .prologue
    const v5, 0x7f0d00a5

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1552
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-nez v2, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1556
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1558
    const/4 v1, 0x0

    .line 1560
    .local v1, src:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v2}, Lcom/android/browser/PerformanceTester;->isTesting()Z

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1562
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0d00b9

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1569
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1570
    .local v0, dest:Landroid/view/MenuItem;
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1571
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1572
    invoke-interface {v1}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1573
    invoke-interface {v1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1566
    .end local v0           #dest:Landroid/view/MenuItem;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v3, 0x7f0d00ba

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    goto :goto_1

    .line 1577
    .end local v1           #src:Landroid/view/MenuItem;
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v2, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1578
    .restart local v0       #dest:Landroid/view/MenuItem;
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1579
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateScreenshot(Landroid/webkit/WebView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 3183
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3184
    .local v5, bm:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 3222
    :goto_0
    return-void

    .line 3188
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3189
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 3190
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 3192
    .local v3, originalUrl:Ljava/lang/String;
    new-instance v0, Lcom/android/browser/BrowserActivity$11;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$11;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$11;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 4625
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4626
    invoke-virtual {p0, p2, v1}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 4627
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 4628
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 4630
    :cond_0
    return-void
.end method


# virtual methods
.method AddFeedToGoogleReader(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 3694
    const-string v0, "http://www.google.com/reader/i/#stream/feed/"

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    .line 3695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    .line 3697
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3727
    return-void
.end method

.method attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->attachSubWindow(Landroid/view/ViewGroup;)V

    .line 2432
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2433
    return-void
.end method

.method bookmarksOrHistoryPicker(Z)V
    .locals 8
    .parameter "startWithHistory"

    .prologue
    const/4 v7, 0x1

    .line 4545
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4546
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 4579
    :goto_0
    return-void

    .line 4549
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4551
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 4552
    .local v3, title:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 4553
    .local v4, url:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4557
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    if-nez v4, :cond_1

    .line 4558
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 4560
    if-nez v4, :cond_1

    .line 4561
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v4

    .line 4565
    :cond_1
    if-nez v3, :cond_2

    .line 4566
    move-object v3, v4

    .line 4568
    :cond_2
    const-string v5, "title"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4569
    const-string v5, "url"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4570
    const-string v5, "thumbnail"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4572
    const-string v5, "disable_new_window"

    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v6

    if-nez v6, :cond_4

    move v6, v7

    :goto_1
    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4573
    const-string v5, "touch_icon_url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4574
    if-eqz p1, :cond_3

    .line 4575
    sget-object v5, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    sget-object v6, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4578
    :cond_3
    invoke-virtual {p0, v1, v7}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 4572
    :cond_4
    const/4 v6, 0x0

    goto :goto_1
.end method

.method closeCurrentWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1704
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1705
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1708
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 1709
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 1729
    :cond_0
    :goto_0
    return-void

    .line 1712
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 1713
    .local v3, parent:Lcom/android/browser/Tab;
    const/4 v2, -0x1

    .line 1714
    .local v2, indexToShow:I
    if-eqz v3, :cond_3

    .line 1715
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    .line 1725
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1727
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1717
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 1719
    .local v1, currentIndex:I
    add-int/lit8 v2, v1, 0x1

    .line 1720
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    .line 1722
    sub-int v2, v1, v5

    goto :goto_1
.end method

.method public closeFind()V
    .locals 1

    .prologue
    .line 2121
    const v0, 0x7f0d0096

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2122
    return-void
.end method

.method closeTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 2743
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    .line 2744
    .local v0, currentIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    .line 2745
    .local v1, removeIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2746
    if-lt v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 2747
    add-int/lit8 v0, v0, -0x1

    .line 2749
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2750
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 2751
    return-void
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 2965
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    return v0
.end method

.method dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->removeSubWindow(Landroid/view/ViewGroup;)V

    .line 2457
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2458
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2459
    return-void
.end method

.method displayRssLinks()V
    .locals 7

    .prologue
    .line 1768
    new-instance v0, Landroid/content/Intent;

    const-class v5, Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {v0, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1771
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v4

    .line 1772
    .local v4, view:Landroid/webkit/WebView;
    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v2

    .line 1774
    .local v2, links:[Landroid/webkit/WebFeedLink;
    array-length v3, v2

    .line 1775
    .local v3, linksNumber:I
    const-string v5, "Feed_number"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1777
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    array-length v5, v2

    if-ge v1, v5, :cond_0

    .line 1779
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/webkit/WebFeedLink;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1780
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v2, v1

    invoke-virtual {v6}, Landroid/webkit/WebFeedLink;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1783
    :cond_0
    const/4 v5, 0x5

    invoke-virtual {p0, v0, v5}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1784
    return-void
.end method

.method editUrl()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1643
    const-string v1, "Browser"

    const-string v2, "Setting value of editUrlLandscapeMode to TRUE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    invoke-static {v4}, Landroid/widget/TextView;->setEditUrlLandscapeMode(Z)V

    .line 1647
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 1649
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v3

    .line 1650
    .local v0, url:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v4, v3, v2}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1652
    return-void

    .line 1649
    .end local v0           #url:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .restart local v0       #url:Ljava/lang/String;
    :cond_2
    move-object v1, v0

    .line 1650
    goto :goto_1
.end method

.method getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3649
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 3650
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 3653
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 4369
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4370
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4371
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 4373
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 1518
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1507
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1513
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 3657
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3658
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 3659
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    .line 3662
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method goBackOnePageOrQuit()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const-string v7, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    const-string v6, "browser"

    .line 2755
    const-string v4, "browser"

    const-string v4, "BrowserActivity.goBackOnePageOrQuit : called"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2757
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 2760
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2761
    .local v0, current:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 2770
    const-string v4, "browser"

    const-string v4, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 2822
    :goto_0
    return-void

    .line 2774
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2775
    .local v3, w:Landroid/webkit/WebView;
    invoke-virtual {v3}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2776
    invoke-virtual {v3}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 2780
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2781
    .local v1, parent:Lcom/android/browser/Tab;
    if-eqz v1, :cond_2

    .line 2782
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 2784
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 2786
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnExit()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2790
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/Tab;->clearInLoad()V

    .line 2791
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-ne v4, v5, :cond_3

    .line 2792
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 2800
    :cond_3
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 2801
    .local v2, savedState:Z
    if-eqz v2, :cond_4

    .line 2802
    const-string v4, "browser"

    const-string v4, "BrowserActivity is already paused while handing goBackOnePageOrQuit."

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :cond_4
    iput-boolean v5, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 2806
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    .line 2807
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 2808
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 2809
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v0}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 2818
    .end local v2           #savedState:Z
    :cond_5
    const-string v4, "browser"

    const-string v4, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2819
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method public hideFakeTitleBar()V
    .locals 5

    .prologue
    .line 1219
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/WebGLZoomView;->setTitleBarVisibility(Z)V

    .line 1221
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1235
    :goto_0
    return-void

    .line 1222
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v3}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1224
    .local v2, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1229
    .local v0, mainView:Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1231
    const-string v3, "window"

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1233
    .local v1, manager:Landroid/view/WindowManager;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v3, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1234
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1229
    .end local v1           #manager:Landroid/view/WindowManager;
    :cond_1
    const v3, 0x7f0b0003

    goto :goto_1
.end method

.method isMenuDown()Z
    .locals 1

    .prologue
    .line 2825
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    return v0
.end method

.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 4421
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return v0
.end method

.method public isRssLinkedPage()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1750
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 1751
    .local v2, view:Landroid/webkit/WebView;
    if-nez v2, :cond_0

    move v3, v4

    .line 1763
    :goto_0
    return v3

    .line 1754
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v1

    .line 1756
    .local v1, links:[Landroid/webkit/WebFeedLink;
    if-nez v1, :cond_1

    move v3, v4

    .line 1757
    goto :goto_0

    .line 1758
    :cond_1
    array-length v0, v1

    .line 1760
    .local v0, a:I
    array-length v3, v1

    if-eqz v3, :cond_2

    .line 1761
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1763
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, -0x1

    const-string v10, "new_window"

    .line 4453
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    if-nez v6, :cond_0

    .line 4524
    :goto_0
    return-void

    .line 4455
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4515
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v5

    .line 4516
    .local v5, topView:Landroid/webkit/WebView;
    if-eqz v5, :cond_7

    .line 4517
    invoke-virtual {v5}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 4457
    .end local v5           #topView:Landroid/webkit/WebView;
    :pswitch_1
    if-ne p2, v7, :cond_2

    if-eqz p3, :cond_2

    .line 4458
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4459
    .local v2, data:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 4460
    .local v3, extras:Landroid/os/Bundle;
    if-eqz v3, :cond_3

    const-string v6, "new_window"

    invoke-virtual {v3, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 4461
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 4474
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    :cond_2
    :goto_2
    :pswitch_2
    if-ne p2, v7, :cond_1

    if-eqz p3, :cond_1

    .line 4475
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4476
    .local v0, action:Ljava/lang/String;
    const-string v6, "privacy_clear_history"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4477
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 4463
    .end local v0           #action:Ljava/lang/String;
    .restart local v2       #data:Ljava/lang/String;
    .restart local v3       #extras:Landroid/os/Bundle;
    :cond_3
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 4465
    .local v1, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 4466
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_2

    .line 4467
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    invoke-direct {p0, v6, v2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 4483
    .end local v1           #currentTab:Lcom/android/browser/Tab;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    :pswitch_3
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v6, :cond_1

    .line 4484
    if-eqz p3, :cond_4

    if-eq p2, v7, :cond_5

    :cond_4
    move-object v4, v9

    .line 4486
    .local v4, result:Landroid/net/Uri;
    :goto_3
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v6, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 4487
    iput-object v9, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_1

    .line 4484
    .end local v4           #result:Landroid/net/Uri;
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    move-object v4, v6

    goto :goto_3

    .line 4491
    :pswitch_4
    if-ne p2, v7, :cond_1

    if-eqz p3, :cond_1

    .line 4492
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 4493
    .restart local v2       #data:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 4494
    .restart local v3       #extras:Landroid/os/Bundle;
    if-eqz v3, :cond_6

    const-string v6, "new_window"

    invoke-virtual {v3, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 4495
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_1

    .line 4497
    :cond_6
    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v6}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 4499
    .restart local v1       #currentTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 4500
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 4502
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->AddFeedToGoogleReader(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4521
    .end local v1           #currentTab:Lcom/android/browser/Tab;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    .restart local v5       #topView:Landroid/webkit/WebView;
    :cond_7
    const-string v6, "browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onActivityResult getTopWindow() is null, requestCode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resultCode= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4455
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x1

    .line 1374
    iput-boolean v10, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1375
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1382
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/browser/BrowserActivity;->orien:I

    .line 1383
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation changed : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v3, Lcom/android/browser/BrowserActivity;->orien:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/FindDialog;->getFindDialog()Z

    move-result v0

    if-ne v0, v10, :cond_0

    .line 1388
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v8

    .line 1389
    .local v8, imm:Landroid/view/inputmethod/InputMethodManager;
    sget v0, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v0, :cond_6

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v0

    if-ne v0, v10, :cond_6

    .line 1391
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1401
    .end local v8           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1402
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1403
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    .line 1407
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1408
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1409
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 1412
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1413
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1414
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1419
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1420
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x1020166

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1423
    .local v4, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d004d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1425
    .local v5, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d004f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1427
    .local v6, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 1429
    .local v7, focusId:I
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1430
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1433
    .end local v4           #title:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #focusId:I
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_5

    .line 1434
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1435
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->getGallerySelection()I

    move-result v9

    .line 1436
    .local v9, selection:I
    new-instance v0, Lcom/android/browser/ActiveTabsPage;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1437
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v9}, Lcom/android/browser/ActiveTabsPage;->setGallerySelection(I)V

    .line 1438
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1439
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->requestFocus()Z

    .line 1441
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1443
    .end local v9           #selection:I
    :cond_5
    return-void

    .line 1395
    .restart local v8       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto/16 :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v9, 0x0

    .line 1589
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1590
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1591
    .local v2, id:I
    const/4 v5, 0x1

    .line 1592
    .local v5, result:Z
    sparse-switch v2, :sswitch_data_0

    .line 1628
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .line 1630
    :goto_0
    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1631
    return v5

    .line 1595
    :sswitch_0
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1596
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 1597
    const/4 v5, 0x0

    .line 1598
    goto :goto_0

    .line 1600
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1601
    .local v3, mainView:Landroid/webkit/WebView;
    if-nez v3, :cond_1

    .line 1602
    const/4 v5, 0x0

    .line 1603
    goto :goto_0

    .line 1605
    :cond_1
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1614
    .end local v0           #currentTab:Lcom/android/browser/Tab;
    .end local v3           #mainView:Landroid/webkit/WebView;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    .line 1615
    .local v6, webView:Landroid/webkit/WebView;
    if-nez v6, :cond_2

    .line 1616
    const/4 v5, 0x0

    .line 1617
    goto :goto_0

    .line 1619
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1620
    .local v1, hrefMap:Ljava/util/HashMap;
    const-string v7, "webview"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1621
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-virtual {v7, v8, v2, v9, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1623
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 1592
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d008e -> :sswitch_1
        0x7f0d0092 -> :sswitch_1
        0x7f0d00c6 -> :sswitch_1
        0x7f0d00c7 -> :sswitch_1
        0x7f0d00c8 -> :sswitch_1
        0x7f0d00c9 -> :sswitch_1
        0x7f0d00d8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1258
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1259
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_0

    .line 1260
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1262
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .parameter "icicle"

    .prologue
    .line 252
    const-string v16, "browser"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "BrowserActivity.onCreate: this="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " bundle = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 270
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 499
    :goto_0
    return-void

    .line 275
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1080061

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 277
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x108005c

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v16

    const v17, 0x1020002

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 282
    .local v7, frameLayout:Landroid/widget/FrameLayout;
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v16

    const v17, 0x7f03000c

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0d003a

    invoke-virtual/range {v16 .. v17}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0d0039

    invoke-virtual/range {v16 .. v17}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    const v17, 0x7f0d0038

    invoke-virtual/range {v16 .. v17}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    move-object v0, v7

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    new-instance v16, Lcom/android/browser/TitleBar;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    move-object/from16 v16, v0

    const/16 v17, 0x64

    invoke-virtual/range {v16 .. v17}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 294
    new-instance v16, Lcom/android/browser/TitleBar;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 297
    new-instance v16, Lcom/android/browser/TabControl;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    .line 300
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->retainIconsOnStartup()V

    .line 303
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/browser/BrowserSettings;->setTabControl(Lcom/android/browser/TabControl;)V

    .line 307
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getOrientation()I

    move-result v16

    sput v16, Lcom/android/browser/BrowserActivity;->orien:I

    .line 308
    const-string v16, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 311
    const-string v16, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 312
    .local v11, pm:Landroid/os/PowerManager;
    const/16 v16, 0x1

    const-string v17, "Browser"

    move-object v0, v11

    move/from16 v1, v16

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 314
    const v16, 0x7f0d003b

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/browser/WebGLZoomView;

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    .line 316
    const v16, 0x7f09010c

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    .line 319
    const-string v16, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 321
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v8

    .line 322
    .local v8, info:Landroid/net/NetworkInfo;
    if-eqz v8, :cond_1

    .line 323
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 328
    :cond_1
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    move-object/from16 v16, v0

    const-string v17, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual/range {v16 .. v17}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 331
    new-instance v16, Lcom/android/browser/BrowserActivity$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v16, Lcom/android/browser/BrowserActivity$2;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$2;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v6, Landroid/content/IntentFilter;

    const-string v16, "android.intent.action.PACKAGE_ADDED"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 389
    .local v6, filter:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 390
    const-string v16, "package"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 391
    new-instance v16, Lcom/android/browser/BrowserActivity$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$3;-><init>(Lcom/android/browser/BrowserActivity;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 443
    new-instance v16, Lcom/android/browser/BrowserActivity$ClearThumbnails;

    const/16 v17, 0x0

    invoke-direct/range {v16 .. v17}, Lcom/android/browser/BrowserActivity$ClearThumbnails;-><init>(Lcom/android/browser/BrowserActivity$1;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/browser/BrowserActivity$ClearThumbnails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 447
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 448
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    .line 449
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 454
    .local v5, extra:Landroid/os/Bundle;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v14

    .line 456
    .local v14, urlData:Lcom/android/browser/BrowserActivity$UrlData;
    invoke-virtual {v9}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 457
    .local v3, action:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v16, v0

    const-string v17, "android.intent.action.VIEW"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-virtual {v9}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    if-nez v17, :cond_3

    :cond_2
    const-string v17, "android.speech.action.VOICE_SEARCH_RESULTS"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    :cond_3
    const/16 v17, 0x1

    :goto_1
    const-string v18, "com.android.browser.application_id"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object v0, v14

    iget-object v0, v0, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v13

    .line 463
    .local v13, t:Lcom/android/browser/Tab;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 464
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 465
    invoke-virtual {v13}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v15

    .line 466
    .local v15, webView:Landroid/webkit/WebView;
    if-eqz v5, :cond_4

    .line 467
    const-string v16, "browser.initialZoomLevel"

    const/16 v17, 0x0

    move-object v0, v5

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 468
    .local v12, scale:I
    if-lez v12, :cond_4

    const/16 v16, 0x3e8

    move v0, v12

    move/from16 v1, v16

    if-gt v0, v1, :cond_4

    .line 469
    invoke-virtual {v15, v12}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 473
    .end local v12           #scale:I
    :cond_4
    invoke-virtual {v14}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_7

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 485
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #extra:Landroid/os/Bundle;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v13           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    .end local v15           #webView:Landroid/webkit/WebView;
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/BrowserSettings;->getJsFlags()Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, jsFlags:Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-eqz v16, :cond_5

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 493
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getInstalledPackages()V

    .line 496
    new-instance v16, Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 498
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    goto/16 :goto_0

    .line 457
    .end local v10           #jsFlags:Ljava/lang/String;
    .restart local v3       #action:Ljava/lang/String;
    .restart local v5       #extra:Landroid/os/Bundle;
    .restart local v9       #intent:Landroid/content/Intent;
    .restart local v14       #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    :cond_6
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 476
    .restart local v13       #t:Lcom/android/browser/Tab;
    .restart local v15       #webView:Landroid/webkit/WebView;
    :cond_7
    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto :goto_2

    .line 481
    .end local v3           #action:Ljava/lang/String;
    .end local v5           #extra:Landroid/os/Bundle;
    .end local v9           #intent:Landroid/content/Intent;
    .end local v13           #t:Lcom/android/browser/Tab;
    .end local v14           #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    .end local v15           #webView:Landroid/webkit/WebView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2264
    move-object/from16 v0, p2

    instance-of v0, v0, Lcom/android/browser/TitleBar;

    move v13, v0

    if-eqz v13, :cond_1

    .line 2386
    :cond_0
    :goto_0
    return-void

    .line 2267
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Landroid/webkit/WebView;

    move-object v12, v0

    .line 2268
    .local v12, webview:Landroid/webkit/WebView;
    invoke-virtual {v12}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v7

    .line 2269
    .local v7, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v7, :cond_0

    .line 2273
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v11

    .line 2274
    .local v11, type:I
    if-nez v11, :cond_2

    .line 2275
    const-string v13, "browser"

    const-string v14, "We should not show context menu when nothing is touched"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2279
    :cond_2
    const/16 v13, 0x9

    if-eq v11, v13, :cond_0

    .line 2285
    const-string v13, "Browser"

    const-string v14, "Setting value of editUrlLandscapeMode to FALSE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const/4 v13, 0x0

    invoke-static {v13}, Landroid/widget/TextView;->setEditUrlLandscapeMode(Z)V

    .line 2290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 2295
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 2296
    .local v5, inflater:Landroid/view/MenuInflater;
    const v13, 0x7f0c0003

    move-object v0, v5

    move v1, v13

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2299
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 2300
    .local v4, extra:Ljava/lang/String;
    const v13, 0x7f0d00bb

    const/4 v14, 0x2

    if-ne v11, v14, :cond_6

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2302
    const v13, 0x7f0d00bf

    const/4 v14, 0x4

    if-ne v11, v14, :cond_7

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2304
    const v13, 0x7f0d00c2

    const/4 v14, 0x3

    if-ne v11, v14, :cond_8

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2306
    const v13, 0x7f0d00ca

    const/4 v14, 0x5

    if-eq v11, v14, :cond_3

    const/16 v14, 0x8

    if-ne v11, v14, :cond_9

    :cond_3
    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2309
    const v13, 0x7f0d00c5

    const/4 v14, 0x7

    if-eq v11, v14, :cond_4

    const/16 v14, 0x8

    if-ne v11, v14, :cond_a

    :cond_4
    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2314
    packed-switch v11, :pswitch_data_0

    .line 2382
    :pswitch_0
    const-string v13, "browser"

    const-string v14, "We should not get here."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    :cond_5
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    goto/16 :goto_0

    .line 2300
    :cond_6
    const/4 v14, 0x0

    goto :goto_1

    .line 2302
    :cond_7
    const/4 v14, 0x0

    goto :goto_2

    .line 2304
    :cond_8
    const/4 v14, 0x0

    goto :goto_3

    .line 2306
    :cond_9
    const/4 v14, 0x0

    goto :goto_4

    .line 2309
    :cond_a
    const/4 v14, 0x0

    goto :goto_5

    .line 2316
    :pswitch_1
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2317
    const v13, 0x7f0d00bc

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2320
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2321
    .local v3, addIntent:Landroid/content/Intent;
    const-string v13, "phone"

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2322
    const-string v13, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2323
    const v13, 0x7f0d00bd

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2325
    const v13, 0x7f0d00be

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_6

    .line 2330
    .end local v3           #addIntent:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2331
    const v13, 0x7f0d00c0

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mailto:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2334
    const v13, 0x7f0d00c1

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2339
    :pswitch_3
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2340
    const v13, 0x7f0d00c3

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "geo:0,0?q="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2344
    const v13, 0x7f0d00c4

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2350
    :pswitch_4
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x109000e

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 2353
    .local v10, titleView:Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2354
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 2356
    const v13, 0x7f0d00c6

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v14

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2358
    const v13, 0x7f0d00c7

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-static {v4}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v14

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2360
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 2361
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.SEND"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2362
    .local v9, send:Landroid/content/Intent;
    const-string v13, "text/plain"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2363
    const/high16 v13, 0x1

    invoke-virtual {v6, v9, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 2364
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    const v13, 0x7f0d0092

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-eqz v8, :cond_c

    const/4 v14, 0x1

    :goto_7
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2365
    const/4 v13, 0x7

    if-eq v11, v13, :cond_5

    .line 2370
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    .end local v9           #send:Landroid/content/Intent;
    .end local v10           #titleView:Landroid/widget/TextView;
    :pswitch_5
    const/4 v13, 0x5

    if-ne v11, v13, :cond_b

    .line 2371
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2373
    :cond_b
    const v13, 0x7f0d00cc

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2375
    const v13, 0x7f0d00cb

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$Download;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$Download;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2377
    const v13, 0x7f0d00cd

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/BrowserActivity$SetAsWallpaper;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2364
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v9       #send:Landroid/content/Intent;
    .restart local v10       #titleView:Landroid/widget/TextView;
    :cond_c
    const/4 v14, 0x0

    goto :goto_7

    .line 2314
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1523
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1525
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1526
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1527
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    .line 1528
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 1529
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1340
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserActivity.onDestroy: this="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1344
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 1345
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1346
    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 1349
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-nez v1, :cond_1

    .line 1369
    :goto_0
    return-void

    .line 1352
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1355
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1356
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_2

    .line 1357
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1358
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1361
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->destroy()V

    .line 1362
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->close()V

    .line 1364
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1367
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 1368
    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 3742
    const-string v3, "BrowserActivity LOG"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " BrowserActivity onDownloadStart() Begin - url "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " contentDisposition - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mimetype - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    const-string v3, "application/vnd.webkit.maybe.feed"

    move-object/from16 v0, p4

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 3746
    const-string p4, "application/rss+xml"

    .line 3748
    :cond_0
    const/4 v12, 0x0

    .line 3749
    .local v12, info:Landroid/content/pm/ResolveInfo;
    if-eqz p3, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "attachment"

    const/4 v7, 0x0

    const/16 v8, 0xa

    move-object/from16 v3, p3

    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_5

    .line 3753
    :cond_1
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3754
    .local v13, intent:Landroid/content/Intent;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 3755
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v13, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 3757
    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    .local v4, info:Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_3

    .line 3758
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v14

    .line 3761
    .local v14, myName:Landroid/content/ComponentName;
    invoke-virtual {v14}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v14}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3768
    :cond_2
    :try_start_0
    const-string v3, "BrowserActivity LOG"

    const-string v5, " Browser activity onDownloadStart start Activity"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #myName:Landroid/content/ComponentName;
    :cond_3
    :goto_0
    move-object v3, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v9, p5

    .line 3788
    invoke-static/range {v3 .. v10}, Lcom/android/browser/DownloadActivityChooser;->chooseActivity(Lcom/android/browser/BrowserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 3790
    return-void

    .line 3771
    .restart local v13       #intent:Landroid/content/Intent;
    .restart local v14       #myName:Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 3773
    .local v11, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "activity not found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " over "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3784
    .end local v11           #ex:Landroid/content/ActivityNotFoundException;
    :cond_4
    const/4 v4, 0x0

    goto :goto_0

    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #myName:Landroid/content/ComponentName;
    .restart local v12       #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    move-object v4, v12

    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    .restart local v4       #info:Landroid/content/pm/ResolveInfo;
    goto :goto_0
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 15
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 3834
    const-string v12, "BrowserActivity LOG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " BrowserActivity onDownloadStartNoStream() Begin - url "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " contentDisposition - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " mimetype - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-static {v0, v1, v2}, Landroid/webkit/URLUtil;->guessFileNameEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3844
    .local v6, filename:Ljava/lang/String;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3846
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    .line 3847
    .local v8, status:Ljava/lang/String;
    const-string v12, "mounted"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 3852
    const-string v12, "shared"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 3853
    const v12, 0x7f0900d7

    invoke-virtual {p0, v12}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3854
    .local v7, msg:Ljava/lang/String;
    const v9, 0x7f0900d6

    .line 3860
    .local v9, title:I
    :goto_0
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v12, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x1080027

    invoke-virtual {v12, v13}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    const v13, 0x7f090010

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3924
    .end local v7           #msg:Ljava/lang/String;
    .end local v8           #status:Ljava/lang/String;
    .end local v9           #title:I
    :goto_1
    return-void

    .line 3856
    .restart local v8       #status:Ljava/lang/String;
    :cond_0
    const v12, 0x7f0900d5

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v6, v13, v14

    invoke-virtual {p0, v12, v13}, Lcom/android/browser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 3857
    .restart local v7       #msg:Ljava/lang/String;
    const v9, 0x7f0900d4

    .restart local v9       #title:I
    goto :goto_0

    .line 3875
    .end local v7           #msg:Ljava/lang/String;
    .end local v8           #status:Ljava/lang/String;
    .end local v9           #title:I
    :cond_1
    :try_start_0
    new-instance v11, Landroid/net/WebAddress;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 3876
    .local v11, webAddress:Landroid/net/WebAddress;
    iget-object v12, v11, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/browser/BrowserActivity;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v11, Landroid/net/WebAddress;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3886
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v12

    move-object v0, v12

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3888
    .local v4, cookies:Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 3889
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "uri"

    invoke-virtual {v11}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3890
    const-string v12, "cookiedata"

    invoke-virtual {v10, v12, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3891
    const-string v12, "useragent"

    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3892
    const-string v12, "notificationpackage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3894
    const-string v12, "notificationclass"

    const-class v13, Lcom/android/browser/OpenDownloadReceiver;

    invoke-virtual {v13}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3896
    const-string v12, "visibility"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3898
    const-string v12, "mimetype"

    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3899
    const-string v12, "hint"

    invoke-virtual {v10, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3900
    const-string v12, "description"

    iget-object v13, v11, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3901
    const-wide/16 v12, 0x0

    cmp-long v12, p5, v12

    if-lez v12, :cond_2

    .line 3902
    const-string v12, "total_bytes"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3905
    :cond_2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v12

    if-nez v12, :cond_3

    .line 3906
    const-string v12, "storagetype"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3908
    :cond_3
    if-nez p4, :cond_4

    .line 3911
    const-string v12, "BrowserActivity LOG"

    const-string v13, " Browser activity onDownloadStartNoStream FetchUrlMimeType"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    new-instance v12, Lcom/android/browser/FetchUrlMimeType;

    invoke-direct {v12, p0}, Lcom/android/browser/FetchUrlMimeType;-><init>(Lcom/android/browser/BrowserActivity;)V

    const/4 v13, 0x1

    new-array v13, v13, [Landroid/content/ContentValues;

    const/4 v14, 0x0

    aput-object v10, v13, v14

    invoke-virtual {v12, v13}, Lcom/android/browser/FetchUrlMimeType;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3913
    const v12, 0x7f0900de

    const/4 v13, 0x0

    invoke-static {p0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 3877
    .end local v4           #cookies:Ljava/lang/String;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #webAddress:Landroid/net/WebAddress;
    :catch_0
    move-exception v12

    move-object v5, v12

    .line 3880
    .local v5, e:Ljava/lang/Exception;
    const-string v12, "browser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception trying to parse url:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3916
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v4       #cookies:Ljava/lang/String;
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v11       #webAddress:Landroid/net/WebAddress;
    :cond_4
    const-string v12, "BrowserActivity LOG"

    const-string v13, " Browser activity onDownloadStartNoStream getContentResolver() Begin"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3917
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v12, v13, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 3918
    .local v3, contentUri:Landroid/net/Uri;
    const-string v12, "BrowserActivity LOG"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Browser activity onDownloadStartNoStream getContentResolver() End"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    .line 3921
    const-string v12, "BrowserActivity LOG"

    const-string v13, " Browser activity onDownloadStartNoStream End"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method onHideCustomView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3628
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3646
    :goto_0
    return-void

    .line 3632
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3634
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3635
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 3637
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 3638
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 3639
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3640
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 3642
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 3643
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3645
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v0, v2}, Lcom/android/browser/WebGLZoomView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x52

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2832
    if-ne v8, p1, :cond_0

    .line 2833
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 2834
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 2905
    :goto_0
    return v1

    .line 2839
    :cond_0
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserActivity.onKeyDown: keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " getRepeatCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isShiftPressed()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v1, :cond_1

    .line 2845
    if-eq v8, p1, :cond_1

    move v1, v4

    .line 2846
    goto :goto_0

    .line 2850
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 2905
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 2855
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2856
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    :goto_1
    move v1, v4

    .line 2860
    goto :goto_0

    .line 2858
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_1

    .line 2862
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2863
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v1, v4

    .line 2864
    goto :goto_0

    .line 2878
    :sswitch_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_8

    .line 2880
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2881
    .local v0, view:Landroid/webkit/WebView;
    if-eqz v0, :cond_5

    .line 2882
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v1, :cond_4

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v4, :cond_6

    .line 2883
    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    :cond_5
    :goto_2
    move v1, v4

    .line 2888
    goto/16 :goto_0

    .line 2884
    :cond_6
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eq v1, v6, :cond_7

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v7, :cond_5

    .line 2885
    :cond_7
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto :goto_2

    .line 2893
    .end local v0           #view:Landroid/webkit/WebView;
    :cond_8
    :sswitch_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2894
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 2895
    .restart local v0       #view:Landroid/webkit/WebView;
    if-eqz v0, :cond_a

    .line 2896
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v1, :cond_9

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v4, :cond_b

    .line 2897
    :cond_9
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    :cond_a
    :goto_3
    move v1, v4

    .line 2902
    goto/16 :goto_0

    .line 2898
    :cond_b
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eq v1, v6, :cond_c

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v7, :cond_a

    .line 2899
    :cond_c
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto :goto_3

    .line 2850
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x3e -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 2912
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BrowserActivity.onKeyUp: keyCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event.getRepeatCount()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event.isTracking()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " event.isCanceled()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    sparse-switch p1, :sswitch_data_0

    .line 2943
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 2916
    :sswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    goto :goto_0

    .line 2919
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2920
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 2922
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_2
    move v1, v4

    .line 2939
    goto :goto_1

    .line 2924
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v1, :cond_2

    .line 2926
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    goto :goto_2

    .line 2928
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2929
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_4

    .line 2930
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2931
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 2933
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 2936
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->goBackOnePageOrQuit()V

    goto :goto_2

    .line 2914
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 1449
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onLowMemory: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1452
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 1453
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1135
    if-nez p1, :cond_0

    .line 1136
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_3

    .line 1137
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    if-eqz v0, :cond_1

    .line 1141
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1163
    :cond_0
    :goto_0
    return v1

    .line 1143
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_2

    .line 1146
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1147
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 1151
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1152
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 1157
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1158
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 1159
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1160
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0
.end method

.method public onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 4400
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_1

    .line 4418
    :cond_0
    :goto_0
    return-void

    .line 4402
    :cond_1
    if-eqz p1, :cond_3

    .line 4403
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4404
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 4405
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 4406
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 4414
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4415
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4416
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0

    .line 4409
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4410
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v1, :cond_2

    .line 4411
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 525
    const-string v11, "browser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " onNewIntent, intent = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v4

    .line 531
    .local v4, current:Lcom/android/browser/Tab;
    if-nez v4, :cond_2

    .line 533
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v4

    .line 534
    if-nez v4, :cond_1

    .line 710
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v4}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 539
    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 540
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 542
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 543
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 544
    .local v5, flags:I
    const-string v11, "android.intent.action.MAIN"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const/high16 v11, 0x10

    and-int/2addr v11, v5

    if-nez v11, :cond_0

    .line 552
    const-string v11, "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 554
    invoke-static {p0, p1}, Lcom/android/browser/DownloadActivityChooser;->handleIntent(Lcom/android/browser/BrowserActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 559
    :cond_3
    const-string v11, "search"

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    invoke-virtual {v1}, Landroid/app/SearchManager;->stopSearch()V

    .line 561
    const-string v11, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 563
    .local v1, activateVoiceSearch:Z
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4

    if-eqz v1, :cond_0

    .line 568
    :cond_4
    invoke-virtual {v4}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 569
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v9

    .line 570
    .local v9, title:Ljava/lang/String;
    if-eqz v9, :cond_5

    const-string v11, "query"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 576
    :cond_5
    const-string v11, "android.intent.action.SEARCH"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v4}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 578
    new-instance v7, Landroid/content/Intent;

    const-string v11, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v7, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 580
    .local v7, logIntent:Landroid/content/Intent;
    const-string v11, "extra_event"

    const/4 v12, 0x3

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 582
    const-string v11, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    .end local v7           #logIntent:Landroid/content/Intent;
    .end local v9           #title:Ljava/lang/String;
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 597
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v10

    .line 598
    .local v10, urlData:Lcom/android/browser/BrowserActivity$UrlData;
    invoke-virtual {v10}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 599
    new-instance v10, Lcom/android/browser/BrowserActivity$UrlData;

    .end local v10           #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    .line 602
    .restart local v10       #urlData:Lcom/android/browser/BrowserActivity$UrlData;
    :cond_7
    const-string v11, "com.android.browser.application_id"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 604
    .local v2, appId:Ljava/lang/String;
    const-string v11, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    if-eqz v1, :cond_c

    if-eqz v2, :cond_c

    :cond_8
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    const/high16 v11, 0x40

    and-int/2addr v11, v5

    if-eqz v11, :cond_c

    .line 610
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v2}, Lcom/android/browser/TabControl;->getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 611
    .local v3, appTab:Lcom/android/browser/Tab;
    if-eqz v3, :cond_a

    .line 612
    const-string v11, "browser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Reusing tab for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 617
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 621
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v3, v10}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)Z

    move-result v8

    .line 624
    .local v8, needsLoad:Z
    if-eq v4, v3, :cond_9

    .line 625
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 626
    if-eqz v8, :cond_0

    .line 627
    invoke-direct {p0, v3, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 632
    :cond_9
    invoke-direct {p0, v3}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 633
    if-eqz v8, :cond_0

    .line 634
    invoke-direct {p0, v3, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 641
    .end local v8           #needsLoad:Z
    :cond_a
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/browser/TabControl;->findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v3

    .line 642
    if-eqz v3, :cond_b

    .line 643
    if-eq v4, v3, :cond_0

    .line 644
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v11, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v11

    invoke-virtual {p0, v11}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_0

    .line 653
    :cond_b
    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11, v2}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 657
    .end local v3           #appTab:Lcom/android/browser/Tab;
    :cond_c
    invoke-virtual {v10}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_15

    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "about:debug"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 659
    const-string v11, "about:debug.dom"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 660
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 661
    :cond_d
    const-string v11, "about:debug.dom.file"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 662
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 663
    :cond_e
    const-string v11, "about:debug.render"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 664
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 665
    :cond_f
    const-string v11, "about:debug.render.file"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_10

    .line 666
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 667
    :cond_10
    const-string v11, "about:debug.display"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    .line 668
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 669
    :cond_11
    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "about:debug.drag"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_14

    .line 670
    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const/16 v12, 0x10

    invoke-virtual {v11, v12}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    const/16 v12, 0x30

    sub-int v6, v11, v12

    .line 671
    .local v6, index:I
    if-lez v6, :cond_12

    const/16 v11, 0x9

    if-le v6, v11, :cond_13

    .line 672
    :cond_12
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 674
    :cond_13
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    new-instance v12, Lcom/android/browser/MeshTracker;

    invoke-direct {v12, v6}, Lcom/android/browser/MeshTracker;-><init>(I)V

    invoke-virtual {v11, v12}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 677
    .end local v6           #index:I
    :cond_14
    iget-object v11, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v11}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 682
    :cond_15
    const-string v11, "about:useragent"

    iget-object v12, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 684
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v11

    invoke-static {p0, v11}, Lcom/android/browser/BrowserDebug;->editUserAgent(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 688
    :cond_16
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 695
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 696
    iget-object v11, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v12, "rtsp"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 699
    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v11

    invoke-virtual {v11}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v11

    invoke-virtual {v4}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v12

    iget-object v13, v10, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 700
    invoke-direct {p0, v4, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 705
    :cond_17
    invoke-direct {p0, v4, v10}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    .line 1790
    iget-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    if-nez v9, :cond_0

    .line 1793
    const/4 v9, 0x0

    .line 2017
    :goto_0
    return v9

    .line 1795
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    if-nez v9, :cond_1

    .line 1796
    const/4 v9, 0x0

    goto :goto_0

    .line 1798
    :cond_1
    iget-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v9, :cond_2

    .line 1803
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 1805
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 2011
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2012
    const/4 v9, 0x0

    goto :goto_0

    .line 1808
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 2016
    :cond_3
    :goto_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 2017
    const/4 v9, 0x1

    goto :goto_0

    .line 1812
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->editUrl()V

    goto :goto_1

    .line 1820
    :pswitch_3
    new-instance v9, Lcom/android/browser/ActiveTabsPage;

    iget-object v10, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-direct {v9, p0, v10}, Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V

    iput-object v9, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1821
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1822
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1823
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v10, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    sget-object v11, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v9, v10, v11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1824
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v9}, Lcom/android/browser/ActiveTabsPage;->requestFocus()Z

    .line 1825
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto :goto_1

    .line 1829
    :pswitch_4
    new-instance v3, Landroid/content/Intent;

    const-class v9, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1831
    .local v3, i:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v8

    .line 1832
    .local v8, w:Landroid/webkit/WebView;
    const-string v9, "url"

    invoke-virtual {v8}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string v9, "title"

    invoke-virtual {v8}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1834
    const-string v9, "touch_icon_url"

    invoke-virtual {v8}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1835
    const-string v9, "thumbnail"

    invoke-direct {p0, v8}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1836
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1840
    .end local v3           #i:Landroid/content/Intent;
    .end local v8           #w:Landroid/webkit/WebView;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->displayRssLinks()V

    goto :goto_1

    .line 1844
    :pswitch_6
    iget-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v9, :cond_4

    .line 1845
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto :goto_1

    .line 1847
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 1852
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 1856
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->goForward()V

    goto/16 :goto_1

    .line 1861
    :pswitch_9
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 1862
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 1865
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeCurrentWindow()V

    goto/16 :goto_1

    .line 1869
    :pswitch_a
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1870
    .local v0, current:Lcom/android/browser/Tab;
    if-eqz v0, :cond_3

    .line 1871
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1872
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v10}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1877
    .end local v0           #current:Lcom/android/browser/Tab;
    :pswitch_b
    new-instance v5, Landroid/content/Intent;

    const-class v9, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v5, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1879
    .local v5, intent:Landroid/content/Intent;
    const-string v9, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1881
    const/4 v9, 0x3

    invoke-virtual {p0, v5, v9}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 1885
    .end local v5           #intent:Landroid/content/Intent;
    :pswitch_c
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createShortcutIntent()Landroid/content/Intent;

    move-result-object v6

    .line 1886
    .local v6, intentShortcut:Landroid/content/Intent;
    if-eqz v6, :cond_3

    .line 1888
    const-string v9, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1889
    invoke-virtual {p0, v6}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 1894
    .end local v6           #intentShortcut:Landroid/content/Intent;
    :pswitch_d
    iget v9, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 1896
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->cancel()V

    .line 1897
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1901
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createBrightPopup()V

    goto/16 :goto_1

    .line 1906
    :pswitch_e
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-nez v9, :cond_7

    .line 1907
    new-instance v9, Lcom/android/browser/FindDialog;

    invoke-direct {v9, p0}, Lcom/android/browser/FindDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v9, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    .line 1909
    :cond_7
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/browser/FindDialog;->setWebView(Landroid/webkit/WebView;)V

    .line 1910
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v9}, Lcom/android/browser/FindDialog;->show()V

    .line 1911
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/browser/FindDialog;->setFindDialog(Z)V

    .line 1912
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 1913
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto/16 :goto_1

    .line 1921
    :pswitch_f
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    goto/16 :goto_1

    .line 1925
    :pswitch_10
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_1

    .line 1930
    :pswitch_11
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1931
    .local v1, currentTab:Lcom/android/browser/Tab;
    if-nez v1, :cond_8

    .line 1932
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1933
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1935
    :cond_8
    invoke-virtual {v1}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 1936
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v11

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-static {p0, v9, v10, v11, v12}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    .line 1942
    .end local v1           #currentTab:Lcom/android/browser/Tab;
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->debugDump()V

    .line 1944
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/browser/BrowserDebug;->dumpWebView(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto/16 :goto_1

    .line 1949
    :pswitch_13
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v9}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    .line 1951
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    if-nez v9, :cond_9

    .line 1953
    new-instance v9, Lcom/android/browser/PerformanceTester;

    invoke-direct {v9, p0}, Lcom/android/browser/PerformanceTester;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    .line 1954
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v9}, Lcom/android/browser/PerformanceTester;->startTest()V

    goto/16 :goto_1

    .line 1958
    :cond_9
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v9}, Lcom/android/browser/PerformanceTester;->isTesting()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_a

    .line 1960
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v9}, Lcom/android/browser/PerformanceTester;->stopTest()V

    .line 1961
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    goto/16 :goto_1

    .line 1965
    :cond_a
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v9}, Lcom/android/browser/PerformanceTester;->startTest()V

    goto/16 :goto_1

    .line 1972
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 1976
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 1980
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 1984
    :pswitch_17
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/browser/BrowserActivity;->viewDownloads(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 1996
    :pswitch_18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    .line 1997
    .local v7, menuid:I
    const/4 v4, 0x0

    .local v4, id:I
    :goto_2
    sget-object v9, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v9, v9

    if-ge v4, v9, :cond_3

    .line 1998
    sget-object v9, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v9, v9, v4

    if-ne v9, v7, :cond_b

    .line 1999
    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9, v4}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v2

    .line 2000
    .local v2, desiredTab:Lcom/android/browser/Tab;
    if-eqz v2, :cond_3

    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v9}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v9

    if-eq v2, v9, :cond_3

    .line 2002
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_1

    .line 1997
    .end local v2           #desiredTab:Lcom/android/browser/Tab;
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1805
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0097
        :pswitch_1
        :pswitch_3
        :pswitch_d
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_c
        :pswitch_5
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_17
        :pswitch_b
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_0
        :pswitch_a
        :pswitch_10
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_7
        :pswitch_2
        :pswitch_9
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_11
    .end packed-switch
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1205
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 1206
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_1

    .line 1207
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1208
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_0

    .line 1212
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3376
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onPageFinished: url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "webview = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 3381
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 3384
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3385
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3386
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3387
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3438
    :cond_0
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    if-eqz v0, :cond_1

    .line 3439
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 3440
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 3444
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    if-eqz v0, :cond_2

    .line 3445
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/PerformanceTester;->onPageFinished(Ljava/lang/String;)V

    .line 3446
    :cond_2
    return-void
.end method

.method onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 3314
    const-string v4, "browser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BrowserActivity.onPageStarted: url = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    iget-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v4, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 3323
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 3325
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserActivity;->resetLockIcon(Ljava/lang/String;)V

    .line 3326
    const/4 v4, 0x0

    invoke-virtual {p0, p2, v4}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3327
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3330
    const/16 v4, 0xa

    invoke-virtual {p0, p1, v4}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 3331
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 3332
    iget-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    .line 3334
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3337
    :try_start_0
    new-instance v3, Landroid/net/WebAddress;

    invoke-direct {v3, p2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 3338
    .local v3, uri:Landroid/net/WebAddress;
    iget-object v1, v3, Landroid/net/WebAddress;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3342
    .end local v3           #uri:Landroid/net/WebAddress;
    .local v1, host:Ljava/lang/String;
    :goto_0
    const/16 v4, 0x2e

    const/16 v5, 0x5f

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 3343
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".trace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3344
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 3345
    const/high16 v4, 0x140

    invoke-static {v1, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 3369
    .end local v1           #host:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x6d

    invoke-static {v4, v5, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3370
    .local v2, msgOnPageStarted:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3371
    return-void

    .line 3339
    .end local v2           #msgOnPageStarted:Landroid/os/Message;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 3340
    .local v0, ex:Landroid/net/ParseException;
    const-string v1, "browser"

    .restart local v1       #host:Ljava/lang/String;
    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v2, "browser"

    .line 1288
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1292
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onPause: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    .line 1296
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already paused."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :goto_0
    return-void

    .line 1302
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1308
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->pauseCurrentTab()V

    .line 1309
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1310
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1311
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1312
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1320
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_3

    .line 1321
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 1324
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 1327
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1328
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1329
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 1332
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->batteryChargingblock_clear(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 26
    .parameter "menu"

    .prologue
    .line 2128
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 2132
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 2137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 2146
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 2147
    const v23, 0x7f0d0096

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2148
    const v23, 0x7f0d0096

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2149
    const v23, 0x7f0d00a7

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2151
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v20

    .line 2152
    .local v20, w:Landroid/webkit/WebView;
    const/4 v4, 0x0

    .line 2153
    .local v4, canGoBack:Z
    const/4 v5, 0x0

    .line 2154
    .local v5, canGoForward:Z
    const/4 v8, 0x0

    .line 2155
    .local v8, isHome:Z
    if-eqz v20, :cond_1

    .line 2156
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    .line 2157
    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    .line 2158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 2160
    :cond_1
    const v23, 0x7f0d00b4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2161
    .local v3, back:Landroid/view/MenuItem;
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2163
    const v23, 0x7f0d00a8

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2164
    .local v7, home:Landroid/view/MenuItem;
    if-nez v8, :cond_5

    const/16 v23, 0x1

    :goto_0
    move-object v0, v7

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2166
    const v23, 0x7f0d009d

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v11

    .line 2169
    .local v11, menuShortcut:Landroid/view/MenuItem;
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_2

    const/16 v23, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v24

    const-string v25, "about:blank"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 2170
    :cond_2
    const/16 v23, 0x0

    move-object v0, v11

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2175
    :goto_1
    const/16 v17, 0x0

    .line 2177
    .local v17, rsslinked:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v21

    .line 2178
    .local v21, webView:Landroid/webkit/WebView;
    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebView;->getProgress()I

    move-result v14

    .line 2179
    .local v14, progress:I
    const/16 v23, 0x64

    move v0, v14

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v23

    if-eqz v23, :cond_3

    .line 2181
    const/16 v17, 0x1

    .line 2184
    :cond_3
    const v23, 0x7f0d009e

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    .line 2185
    .local v16, rss:Landroid/view/MenuItem;
    invoke-interface/range {v16 .. v17}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2187
    const v23, 0x7f0d009b

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    move-object/from16 v0, v23

    move v1, v5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2190
    const v23, 0x7f0d0097

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v24

    invoke-interface/range {v23 .. v24}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2194
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 2195
    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v18, Landroid/content/Intent;

    const-string v23, "android.intent.action.SEND"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2196
    .local v18, send:Landroid/content/Intent;
    const-string v23, "text/plain"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2197
    const/high16 v23, 0x1

    move-object v0, v13

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v15

    .line 2198
    .local v15, ri:Landroid/content/pm/ResolveInfo;
    const v23, 0x7f0d00a1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v23

    if-eqz v15, :cond_7

    const/16 v24, 0x1

    :goto_2
    invoke-interface/range {v23 .. v24}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/BrowserSettings;->isNavDump()Z

    move-result v9

    .line 2201
    .local v9, isNavDump:Z
    const v23, 0x7f0d00a4

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v12

    .line 2202
    .local v12, nav:Landroid/view/MenuItem;
    invoke-interface {v12, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2203
    invoke-interface {v12, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v19

    .line 2206
    .local v19, showDebugSettings:Z
    const v23, 0x7f0d00a6

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2207
    .local v6, counter:Landroid/view/MenuItem;
    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2208
    move-object v0, v6

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2210
    const v23, 0x7f0d0098

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v22

    .line 2212
    .local v22, window:Landroid/view/MenuItem;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v23

    packed-switch v23, :pswitch_data_1

    .line 2247
    :goto_3
    const v23, 0x7f0d0099

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v10

    .line 2249
    .local v10, menuBrightness:Landroid/view/MenuItem;
    const/16 v23, 0x1

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2250
    const/16 v23, 0x1

    move-object v0, v10

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2253
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/BrowserActivity;->updatePerfTestMenuItems()V

    .line 2257
    .end local v3           #back:Landroid/view/MenuItem;
    .end local v4           #canGoBack:Z
    .end local v5           #canGoForward:Z
    .end local v6           #counter:Landroid/view/MenuItem;
    .end local v7           #home:Landroid/view/MenuItem;
    .end local v8           #isHome:Z
    .end local v9           #isNavDump:Z
    .end local v10           #menuBrightness:Landroid/view/MenuItem;
    .end local v11           #menuShortcut:Landroid/view/MenuItem;
    .end local v12           #nav:Landroid/view/MenuItem;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #progress:I
    .end local v15           #ri:Landroid/content/pm/ResolveInfo;
    .end local v16           #rss:Landroid/view/MenuItem;
    .end local v17           #rsslinked:Z
    .end local v18           #send:Landroid/content/Intent;
    .end local v19           #showDebugSettings:Z
    .end local v20           #w:Landroid/webkit/WebView;
    .end local v21           #webView:Landroid/webkit/WebView;
    .end local v22           #window:Landroid/view/MenuItem;
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 2258
    const/16 v23, 0x1

    return v23

    .line 2139
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    .line 2140
    const v23, 0x7f0d0096

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2141
    const v23, 0x7f0d0096

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2142
    const v23, 0x7f0d00a7

    const/16 v24, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-interface {v0, v1, v2}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_4

    .line 2164
    .restart local v3       #back:Landroid/view/MenuItem;
    .restart local v4       #canGoBack:Z
    .restart local v5       #canGoForward:Z
    .restart local v7       #home:Landroid/view/MenuItem;
    .restart local v8       #isHome:Z
    .restart local v20       #w:Landroid/webkit/WebView;
    :cond_5
    const/16 v23, 0x0

    goto/16 :goto_0

    .line 2172
    .restart local v11       #menuShortcut:Landroid/view/MenuItem;
    :cond_6
    const/16 v23, 0x1

    move-object v0, v11

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 2198
    .restart local v13       #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #progress:I
    .restart local v15       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v16       #rss:Landroid/view/MenuItem;
    .restart local v17       #rsslinked:Z
    .restart local v18       #send:Landroid/content/Intent;
    .restart local v21       #webView:Landroid/webkit/WebView;
    :cond_7
    const/16 v24, 0x0

    goto/16 :goto_2

    .line 2215
    .restart local v6       #counter:Landroid/view/MenuItem;
    .restart local v9       #isNavDump:Z
    .restart local v12       #nav:Landroid/view/MenuItem;
    .restart local v19       #showDebugSettings:Z
    .restart local v22       #window:Landroid/view/MenuItem;
    :pswitch_1
    const v23, 0x7f020031

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2219
    :pswitch_2
    const v23, 0x7f020032

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2223
    :pswitch_3
    const v23, 0x7f020033

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2227
    :pswitch_4
    const v23, 0x7f020034

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2231
    :pswitch_5
    const v23, 0x7f020035

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2235
    :pswitch_6
    const v23, 0x7f020036

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2239
    :pswitch_7
    const v23, 0x7f020037

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2243
    :pswitch_8
    const v23, 0x7f020038

    invoke-interface/range {v22 .. v23}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 2137
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 2212
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 3
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 3557
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p2}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 3559
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 3568
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onProgressChanged: progress == 100 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3570
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    .line 3571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 3572
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 3574
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_1

    .line 3575
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 3579
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 3580
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 3600
    :cond_2
    :goto_0
    return-void

    .line 3583
    :cond_3
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_4

    .line 3587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 3588
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 3595
    :cond_4
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_2

    .line 3597
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const-string v2, "browser"

    .line 1074
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1077
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onResume: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v0, :cond_0

    .line 1081
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already resumed."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :goto_0
    return-void

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->resumeCurrentTab()V

    .line 1086
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1087
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 1089
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1090
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1091
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1096
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1098
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 1101
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->batteryChargingblock_clear(Z)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 1273
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onSaveInstanceState: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 1284
    return-void
.end method

.method onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .parameter "view"
    .parameter "callback"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 3604
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v0, v3}, Lcom/android/browser/WebGLZoomView;->setVisibility(I)V

    .line 3606
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3607
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 3625
    :goto_0
    return-void

    .line 3612
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3613
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 3614
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 3617
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 3618
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 3620
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3622
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 3623
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3624
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 5

    .prologue
    .line 1011
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1012
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserActivity.onStart: this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 1019
    .local v1, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 1020
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1022
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    if-eqz v2, :cond_1

    .line 1023
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomView;->resume()V

    .line 1026
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    .line 1028
    iget v2, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 1030
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 1031
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 1033
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1034
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, -0x4080

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1035
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1042
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :goto_0
    return-void

    .line 1040
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->setWindowBrightness(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 1046
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1047
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrowserActivity.onStop: this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 1058
    .local v1, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    .line 1059
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1061
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    if-eqz v2, :cond_1

    .line 1062
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mZoomView:Lcom/android/browser/WebGLZoomView;

    invoke-virtual {v2}, Lcom/android/browser/WebGLZoomView;->pause()V

    .line 1065
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1066
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "brightness"

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1067
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1068
    return-void
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3671
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v1, :cond_0

    .line 3678
    :goto_0
    return-void

    .line 3672
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 3673
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3674
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3675
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3676
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "url"

    .prologue
    .line 2508
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2509
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2510
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 2511
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2512
    .local v1, view:Landroid/webkit/WebView;
    invoke-direct {p0, v1, p1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .end local v1           #view:Landroid/webkit/WebView;
    :cond_0
    move-object v2, v0

    .line 2516
    .end local v0           #t:Lcom/android/browser/Tab;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    goto :goto_0
.end method

.method openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 6
    .parameter "urlData"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    const/4 v5, 0x0

    .line 2472
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2473
    .local v0, currentTab:Lcom/android/browser/Tab;
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2474
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v4, p1, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v1

    .line 2476
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 2479
    .local v2, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 2480
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 2484
    :cond_0
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2485
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 2486
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2487
    invoke-direct {p0, v1, p1}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    :goto_0
    move-object v3, v1

    .line 2503
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #webview:Landroid/webkit/WebView;
    :goto_1
    return-object v3

    .line 2491
    .restart local v1       #tab:Lcom/android/browser/Tab;
    .restart local v2       #webview:Landroid/webkit/WebView;
    :cond_1
    invoke-virtual {p0, v5, v5}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 2498
    .end local v1           #tab:Lcom/android/browser/Tab;
    .end local v2           #webview:Landroid/webkit/WebView;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2499
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2501
    invoke-direct {p0, v0, p1}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    :cond_3
    move-object v3, v0

    .line 2503
    goto :goto_1
.end method

.method openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    return-object v0
.end method

.method public postMessage(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delayMillis"

    .prologue
    .line 2978
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2980
    return-void
.end method

.method removeActiveTabPage(Z)V
    .locals 2
    .parameter "needToAttach"

    .prologue
    .line 1739
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1740
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1741
    const v0, 0x7f0d0096

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1742
    if-eqz p1, :cond_0

    .line 1743
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1745
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1746
    return-void
.end method

.method removeMessages(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "object"

    .prologue
    .line 2984
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2985
    return-void
.end method

.method resetTitleAndRevertLockIcon()V
    .locals 1

    .prologue
    .line 2645
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2653
    :cond_0
    :goto_0
    return-void

    .line 2650
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->revertLockIcon()V

    .line 2651
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 2652
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    goto :goto_0
.end method

.method revertVoiceTitleBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 872
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 873
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 875
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 876
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 877
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2735
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 2736
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 4389
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 4390
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4391
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4393
    :cond_0
    return-void
.end method

.method setShouldShowErrorConsole(Z)V
    .locals 5
    .parameter "flag"

    .prologue
    .line 4709
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-ne p1, v1, :cond_0

    .line 4735
    :goto_0
    return-void

    .line 4714
    :cond_0
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 4716
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 4719
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p1, :cond_2

    .line 4721
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v1

    if-lez v1, :cond_1

    .line 4722
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 4728
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 4724
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 4732
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "title"

    .prologue
    .line 2686
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 2687
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 2690
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2693
    :goto_0
    return-void

    .line 2691
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 2692
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 9
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3451
    const-string v6, "browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BrowserActivity.shouldOverrideUrlLoading: url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " webview = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    const-string v6, "wtai://wp/"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3456
    const-string v6, "wtai://wp/mc;"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3457
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tel:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "wtai://wp/mc;"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3460
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3461
    const/4 v6, 0x1

    .line 3549
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v6

    .line 3465
    :cond_0
    const-string v6, "wtai://wp/sd;"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 3467
    const/4 v6, 0x0

    goto :goto_0

    .line 3472
    :cond_1
    const-string v6, "wtai://wp/ap;"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3475
    const-string v6, "wtai://wp/ap;"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 3476
    .local v5, wtaiAP:Ljava/lang/String;
    const-string v4, ""

    .line 3477
    .local v4, phoneNumber:Ljava/lang/String;
    const-string v2, ""

    .line 3479
    .local v2, name:Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 3482
    const/4 v6, 0x0

    const-string v7, ";"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 3483
    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 3484
    const-string v6, "%20"

    const-string v7, " "

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3491
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.INSERT"

    sget-object v7, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3492
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "name"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3493
    const-string v6, "phone"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3494
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3496
    const/4 v6, 0x1

    goto :goto_0

    .line 3488
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    move-object v4, v5

    goto :goto_1

    .line 3503
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #phoneNumber:Ljava/lang/String;
    .end local v5           #wtaiAP:Ljava/lang/String;
    :cond_3
    const-string v6, "about:"

    invoke-virtual {p2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 3504
    const/4 v6, 0x0

    goto :goto_0

    .line 3510
    :cond_4
    const/4 v6, 0x1

    :try_start_0
    invoke-static {p2, v6}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3518
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    if-nez v6, :cond_6

    .line 3519
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v3

    .line 3520
    .local v3, packagename:Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 3521
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "market://search?q=pname:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3523
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3524
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 3525
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3511
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #packagename:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3512
    .local v0, ex:Ljava/net/URISyntaxException;
    const-string v6, "Browser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3527
    .end local v0           #ex:Ljava/net/URISyntaxException;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #packagename:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 3533
    .end local v3           #packagename:Ljava/lang/String;
    :cond_6
    const-string v6, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3534
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3536
    const/4 v6, -0x1

    :try_start_1
    invoke-virtual {p0, v1, v6}, Lcom/android/browser/BrowserActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-eqz v6, :cond_7

    .line 3537
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3539
    :catch_1
    move-exception v6

    .line 3544
    :cond_7
    iget-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v6, :cond_8

    .line 3545
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 3546
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 3547
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 3549
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_0
.end method

.method shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 4738
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    return v0
.end method

.method showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "handler"
    .parameter "host"
    .parameter "realm"
    .parameter "title"
    .parameter "name"
    .parameter "password"
    .parameter "focusId"

    .prologue
    .line 4302
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 4303
    .local v9, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030016

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 4305
    .local v4, v:Landroid/view/View;
    if-eqz p5, :cond_0

    .line 4306
    const v2, 0x7f0d004d

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4308
    :cond_0
    if-eqz p6, :cond_1

    .line 4309
    const v2, 0x7f0d004f

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4312
    :cond_1
    move-object v10, p4

    .line 4313
    .local v10, titleText:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 4314
    const v2, 0x7f09000a

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s"

    invoke-virtual {v2, v3, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 4318
    :cond_2
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 4319
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09000d

    new-instance v2, Lcom/android/browser/BrowserActivity$22;

    .end local v9           #factory:Landroid/view/LayoutInflater;
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/browser/BrowserActivity$22;-><init>(Lcom/android/browser/BrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f09000f

    new-instance v5, Lcom/android/browser/BrowserActivity$21;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/BrowserActivity$21;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/browser/BrowserActivity$20;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/BrowserActivity$20;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 4357
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4359
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 4360
    if-eqz p7, :cond_3

    .line 4361
    move-object v0, v8

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 4365
    :goto_0
    iput-object v8, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    .line 4366
    return-void

    .line 4363
    :cond_3
    const v2, 0x7f0d004d

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_0
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 8
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const v7, 0x7f0d0076

    const v6, 0x7f030020

    .line 4137
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 4139
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 4224
    :goto_0
    return-void

    .line 4143
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 4145
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0d0061

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 4148
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4149
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4151
    .local v2, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090019

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4155
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4156
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4158
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09001a

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4162
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4163
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4165
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09001b

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4169
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4170
    invoke-virtual {v1, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 4172
    .restart local v2       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f09001c

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 4176
    .end local v2           #ll:Landroid/widget/LinearLayout;
    :cond_4
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 4177
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 4178
    iput-object p3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 4179
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f09001d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f020016

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090010

    new-instance v6, Lcom/android/browser/BrowserActivity$19;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$19;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090013

    new-instance v6, Lcom/android/browser/BrowserActivity$18;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/BrowserActivity$18;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/BrowserActivity$17;

    invoke-direct {v5, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$17;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method showTitleBarContextMenu()V
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1254
    :goto_0
    return-void

    .line 1250
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1251
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 1253
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method showVoiceSearchResults(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    .line 507
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 509
    .local v3, client:Landroid/content/ContentProviderClient;
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    .line 510
    .local v4, prov:Landroid/content/ContentProvider;
    move-object v0, v4

    check-cast v0, Lcom/android/browser/BrowserProvider;

    move-object v1, v0

    .line 511
    .local v1, bp:Lcom/android/browser/BrowserProvider;
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/browser/BrowserProvider;->setQueryResults(Ljava/util/ArrayList;)V

    .line 512
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 514
    const-string v5, "browser-key"

    invoke-direct {p0, v5}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 516
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "android.search.CONTEXT_IS_VOICE"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 517
    invoke-virtual {p0, p1, v7, v2, v7}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 518
    return-void
.end method

.method showVoiceTitleBar(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 865
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 866
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 868
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 869
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 870
    return-void
.end method

.method smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "url"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const-string v9, "%s"

    .line 4660
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 4661
    .local v1, inUrl:Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move v0, v10

    .line 4663
    .local v0, hasSpace:Z
    :goto_0
    sget-object v7, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 4664
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4666
    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 4667
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 4668
    .local v2, lcScheme:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 4669
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4671
    :cond_0
    if-eqz v0, :cond_1

    .line 4672
    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v7, v1

    .line 4705
    .end local v2           #lcScheme:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 4661
    .end local v0           #hasSpace:Z
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    goto :goto_0

    .line 4676
    .restart local v0       #hasSpace:Z
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    if-eqz v0, :cond_5

    .line 4679
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->parseUrlShortcut(Ljava/lang/String;)I

    move-result v6

    .line 4680
    .local v6, shortcut:I
    if-eqz v6, :cond_4

    .line 4681
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v1}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 4682
    invoke-virtual {v1, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 4683
    .local v4, query:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 4701
    .end local v4           #query:Ljava/lang/String;
    .end local v6           #shortcut:I
    :cond_4
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v1}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 4705
    const-string v7, "http://www.google.com/m?q=%s"

    const-string v8, "%s"

    invoke-static {v1, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4685
    .restart local v4       #query:Ljava/lang/String;
    .restart local v6       #shortcut:I
    :pswitch_0
    const-string v7, "http://www.google.com/m?q=%s"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4687
    :pswitch_1
    const-string v7, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4689
    :pswitch_2
    const-string v7, "http://dictionary.reference.com/search?q=%s"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4692
    :pswitch_3
    const-string v7, "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4696
    .end local v4           #query:Ljava/lang/String;
    .end local v6           #shortcut:I
    :cond_5
    sget-object v7, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 4697
    invoke-static {v1}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 4683
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter "initialQuery"
    .parameter "selectInitialQuery"
    .parameter "appSearchData"
    .parameter "globalSearch"

    .prologue
    .line 1660
    if-nez p3, :cond_0

    .line 1661
    const-string v1, "browser-type"

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    .line 1664
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 1665
    .local v0, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1666
    const-string v1, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v2, 0x1

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1669
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1670
    return-void
.end method

.method stopLoading()V
    .locals 3

    .prologue
    .line 2947
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 2948
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 2949
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2950
    .local v0, w:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 2955
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 2958
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 2959
    const v1, 0x7f090027

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 2961
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2962
    return-void
.end method

.method switchToTab(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1682
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 1683
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1684
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 1685
    :cond_0
    const/4 v2, 0x0

    .line 1696
    :goto_0
    return v2

    .line 1687
    :cond_1
    if-eqz v0, :cond_2

    .line 1690
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1692
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 1693
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1694
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 1695
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 1696
    const/4 v2, 0x1

    goto :goto_0
.end method

.method viewDownloads(Landroid/net/Uri;)V
    .locals 2
    .parameter "downloadRecord"

    .prologue
    .line 4532
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserDownloadPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4534
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4535
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 4537
    return-void
.end method
