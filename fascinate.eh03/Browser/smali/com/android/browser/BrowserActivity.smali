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
.field protected static final ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

.field static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

.field static final COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

.field static final EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

.field static final ENABLE_BITMAPWEBVIEW:Z

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static THUMBNAIL_HEIGHT:I

.field private static THUMBNAIL_WIDTH:I

.field private static final WINDOW_SHORTCUT_ID_ARRAY:[I

.field private static mInTrace:Z

.field private static orien:I

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private autobright:I

.field private brightToast:Landroid/widget/Toast;

.field private mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

.field mActivityInPause:Z

.field mAddFeedUrl:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBitmapWebView:Lcom/android/browser/BitmapWebView;

.field private mBrightPopup:Landroid/app/AlertDialog;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBrowserFrameLayout:Landroid/widget/FrameLayout;

.field mCanChord:Z

.field private mConfigChanged:Z

.field private mContentView:Landroid/widget/FrameLayout;

.field private mCurrentMenuState:I

.field private mCursorUrl:Ljava/lang/String;

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

.field private mInLoad:Z

.field private mIsNetworkUp:Z

.field private mJSAlertPopup:Landroid/app/AlertDialog;

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

.field mPendingZoomViewResume:Z

.field private mPerfTester:Lcom/android/browser/PerformanceTester;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorView:Landroid/webkit/WebView;

.field private mSSLCertificateView:Lcom/android/browser/Tab;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private mSelectDialog:Lcom/android/browser/SelectDialog;

.field private mSettings:Lcom/android/browser/BrowserSettings;

.field private mShouldShowErrorConsole:Z

.field private mStartSearch:Z

.field private mStopToast:Landroid/widget/Toast;

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mTitle:Ljava/lang/String;

.field private mTitleBar:Lcom/android/browser/TitleBar;

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

.field private mVideoProgressView:Landroid/view/View;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbrightProgressBar:Landroid/widget/SeekBar;

.field private mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private telephony:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 231
    sput v3, Lcom/android/browser/BrowserActivity;->orien:I

    .line 241
    const-string v0, "1"

    const-string v1, "debug.browser.bitmapwebview"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/browser/BrowserActivity;->ENABLE_BITMAPWEBVIEW:Z

    .line 3692
    sput v3, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 3693
    sput v3, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 5238
    const-string v0, "(?i)((?:http|https|file|rtsp):\\/\\/|(?:inline|data|about|javascript):)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    .line 5431
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/browser/BrowserActivity;->SYSTEM_CPU_FORMAT:[I

    .line 5495
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    .line 5499
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    .line 5545
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    .line 5576
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    .line 5577
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5627
    new-instance v0, Lcom/android/browser/BrowserActivity$UrlData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/browser/BrowserActivity;->EMPTY_URL_DATA:Lcom/android/browser/BrowserActivity$UrlData;

    return-void

    .line 241
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5431
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

    .line 5545
    :array_1
    .array-data 0x4
        0xb8t 0x0t 0xdt 0x7ft
        0xb9t 0x0t 0xdt 0x7ft
        0xbat 0x0t 0xdt 0x7ft
        0xbbt 0x0t 0xdt 0x7ft
        0xbct 0x0t 0xdt 0x7ft
        0xbdt 0x0t 0xdt 0x7ft
        0xbet 0x0t 0xdt 0x7ft
        0xbft 0x0t 0xdt 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 209
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 232
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 243
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 244
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 246
    iput v3, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    .line 249
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    .line 260
    new-instance v0, Lcom/android/browser/BrowserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$1;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    .line 299
    new-instance v0, Lcom/android/browser/BrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$2;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 884
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    .line 1134
    new-instance v0, Lcom/android/browser/BrowserActivity$11;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$11;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 3462
    new-instance v0, Lcom/android/browser/BrowserActivity$12;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$12;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    .line 5408
    iput v2, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 5409
    const v0, 0x7f0d00a2

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 5410
    iput v3, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 5424
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 5540
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 5541
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 5581
    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 5582
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    .line 209
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/BrowserActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TabControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/browser/BrowserActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->updateScreenshot(Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/TitleBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/browser/BrowserActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserActivity;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/browser/BrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/browser/BrowserActivity;)Landroid/net/http/SslError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/browser/BrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)Lcom/android/browser/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/android/browser/BrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/browser/BrowserActivity;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->addPackageNames(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/android/browser/BrowserActivity;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->packageChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserActivity;)Lcom/android/browser/BrowserSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/browser/BrowserActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->setWindowBrightness(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 209
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 209
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
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
    .line 5360
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5361
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 5366
    :goto_0
    return-void

    .line 5365
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageNames(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private attachTabToContentView(Lcom/android/browser/Tab;)V
    .locals 8
    .parameter "t"

    .prologue
    .line 2810
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->attachTabToContentView(Landroid/view/ViewGroup;)V

    .line 2812
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-eqz v2, :cond_0

    .line 2813
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 2814
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-nez v2, :cond_2

    .line 2815
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 2820
    :goto_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2825
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2826
    .local v1, view:Landroid/webkit/WebView;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2827
    invoke-virtual {p1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2828
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->showVoiceTitleBar(Ljava/lang/String;)V

    .line 2833
    :goto_1
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2837
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v2, :cond_1

    .line 2839
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/browser/Tab;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v7, 0x1020002

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v4, v5, v6, v2}, Lcom/android/browser/BitmapWebView;->setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 2845
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2846
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 2847
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x6f

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2850
    :cond_1
    return-void

    .line 2817
    .end local v1           #view:Landroid/webkit/WebView;
    .restart local v0       #errorConsole:Lcom/android/browser/ErrorConsoleView;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_0

    .line 2830
    .end local v0           #errorConsole:Lcom/android/browser/ErrorConsoleView;
    .restart local v1       #view:Landroid/webkit/WebView;
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->revertVoiceTitleBar()V

    goto :goto_1
.end method

.method private cancelStopToast()V
    .locals 1

    .prologue
    .line 3428
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 3429
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 3430
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 3432
    :cond_0
    return-void
.end method

.method private closeDialog(Lcom/android/browser/WebDialog;)Z
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 2466
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->isVisible()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 2479
    :goto_0
    return v2

    .line 2467
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2468
    .local v0, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->closeDialog(Lcom/android/browser/WebDialog;)V

    .line 2469
    invoke-virtual {p1}, Lcom/android/browser/WebDialog;->dismiss()V

    .line 2471
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 2472
    .local v1, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v2, :cond_2

    .line 2474
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2475
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v2, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 2479
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private copy(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter

    .prologue
    .line 3069
    :try_start_0
    const-string v0, "clipboard"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 3070
    if-eqz v0, :cond_0

    .line 3071
    invoke-interface {v0, p1}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3076
    :cond_0
    :goto_0
    return-void

    .line 3073
    :catch_0
    move-exception v0

    .line 3074
    const-string v1, "browser"

    const-string v2, "Copy failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private createAndShowNetworkDialog()V
    .locals 3

    .prologue
    .line 5009
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 5010
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 5014
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeContextMenu()V

    .line 5016
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v0, :cond_1

    .line 5017
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900b5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090068

    new-instance v2, Lcom/android/browser/BrowserActivity$27;

    invoke-direct {v2, p0}, Lcom/android/browser/BrowserActivity$27;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 5039
    :cond_1
    return-void
.end method

.method private createBrightPopup()V
    .locals 4

    .prologue
    .line 1075
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1076
    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1078
    const v0, 0x7f0d0016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    .line 1080
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 1082
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/16 v2, 0x9

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 1083
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    div-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mbrightnessChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1085
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mbrightProgressBar:Landroid/widget/SeekBar;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1088
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v0

    .line 1090
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 1092
    const v2, 0x7f09002c

    new-instance v3, Lcom/android/browser/BrowserActivity$8;

    invoke-direct {v3, p0}, Lcom/android/browser/BrowserActivity$8;-><init>(Lcom/android/browser/BrowserActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1099
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/browser/BrowserActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/BrowserActivity$9;-><init>(Lcom/android/browser/BrowserActivity;I)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1108
    new-instance v2, Lcom/android/browser/BrowserActivity$10;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserActivity$10;-><init>(Lcom/android/browser/BrowserActivity;I)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1117
    const v0, 0x7f09010c

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1118
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 1119
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1122
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1124
    const/4 v2, 0x0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1125
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1126
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1127
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1132
    return-void
.end method

.method private createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .parameter "source"

    .prologue
    .line 1847
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1848
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    return-object v0
.end method

.method private createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 3723
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 3724
    if-nez v0, :cond_0

    move-object v0, v5

    .line 3765
    :goto_0
    return-object v0

    .line 3729
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3736
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3739
    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    .line 3740
    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v4

    .line 3743
    if-lez v3, :cond_1

    .line 3744
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v3, v3

    div-float v3, v5, v3

    .line 3750
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v6

    if-le v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/webkit/WebView;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_2

    if-lez v4, :cond_2

    .line 3755
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    int-to-float v4, v4

    div-float v4, v5, v4

    .line 3762
    :goto_1
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 3764
    invoke-virtual {v0, v2}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 3765
    goto :goto_0

    .line 3731
    :catch_0
    move-exception v0

    .line 3732
    const-string v1, "browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createScreenshot : Bitmap.createBitmap failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 3733
    goto :goto_0

    :cond_1
    move-object v0, v5

    .line 3747
    goto :goto_0

    :cond_2
    move v4, v3

    .line 3759
    goto :goto_1
.end method

.method private createShortcutIntent()Landroid/content/Intent;
    .locals 14

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v9, 0x1

    const/high16 v11, 0x4000

    .line 2245
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2246
    if-nez v0, :cond_0

    .line 2248
    const-string v0, "browser"

    const-string v1, "createShortcutIntent : Top window is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 2342
    :goto_0
    return-object v0

    .line 2251
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 2252
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 2254
    if-eqz v2, :cond_1

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v9, v3, :cond_2

    .line 2255
    :cond_1
    const-string v0, "browser"

    const-string v1, "createShortcutIntent : strURL is null or a blank page"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v13

    .line 2256
    goto :goto_0

    .line 2259
    :cond_2
    invoke-static {p0, v2}, Lcom/android/browser/BrowserBookmarksAdapter;->getTouchIcon(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2262
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2263
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v5, v2

    .line 2264
    const/16 v2, 0x20

    shl-long/2addr v5, v2

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    int-to-long v7, v2

    or-long/2addr v5, v7

    .line 2265
    const-string v2, "com.android.browser.application_id"

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2268
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 2269
    const-string v5, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2270
    const-string v4, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2274
    if-eqz v3, :cond_3

    .line 2276
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v3, v0, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2277
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2281
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    .line 2282
    sget-object v5, Landroid/graphics/Path$FillType;->INVERSE_WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {v4, v5}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 2283
    new-instance v5, Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v5, v10, v10, v6, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2284
    const/high16 v3, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v3, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 2285
    const/high16 v3, 0x4100

    const/high16 v6, 0x4100

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v4, v5, v3, v6, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 2289
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 2290
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 2291
    invoke-virtual {v1, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 2293
    const-string v1, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2341
    :goto_1
    const-string v0, "duplicate"

    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object v0, v2

    .line 2342
    goto/16 :goto_0

    .line 2296
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2298
    if-nez v0, :cond_4

    .line 2299
    const-string v0, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v1, 0x7f020024

    invoke-static {p0, v1}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_1

    .line 2302
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020025

    invoke-static {v1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2306
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v3, v9}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 2307
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2310
    new-instance v5, Landroid/graphics/Paint;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 2311
    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2312
    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2314
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 2316
    const/high16 v7, 0x4180

    mul-float/2addr v7, v6

    .line 2317
    mul-float/2addr v6, v11

    .line 2318
    mul-float v8, v11, v6

    add-float/2addr v7, v8

    .line 2320
    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v12, v12, v9, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2321
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    div-float v9, v7, v11

    sub-float/2addr v1, v9

    .line 2325
    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    div-float v9, v7, v11

    sub-float/2addr v8, v9

    sub-float/2addr v8, v6

    .line 2326
    new-instance v9, Landroid/graphics/RectF;

    add-float v10, v1, v7

    add-float/2addr v7, v8

    invoke-direct {v9, v1, v8, v10, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2329
    invoke-virtual {v4, v9, v11, v11, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2334
    invoke-virtual {v9, v6, v6}, Landroid/graphics/RectF;->inset(FF)V

    .line 2335
    invoke-virtual {v4, v0, v13, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 2336
    const-string v0, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1
.end method

.method private dialogIsUp()Z
    .locals 1

    .prologue
    .line 2461
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0}, Lcom/android/browser/FindDialog;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    invoke-virtual {v0}, Lcom/android/browser/SelectDialog;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    const/16 v9, 0x7b

    const/16 v8, 0x5d

    const/16 v7, 0x5c

    const/16 v6, 0x5b

    const/4 v5, 0x0

    .line 4365
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4368
    array-length v1, v0

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_6

    aget-char v3, v0, v2

    .line 4370
    if-eq v3, v6, :cond_0

    if-eq v3, v8, :cond_0

    if-eq v3, v7, :cond_0

    if-eq v3, v9, :cond_0

    const/16 v4, 0x7d

    if-ne v3, v4, :cond_1

    .line 4371
    :cond_0
    const/4 v1, 0x1

    .line 4375
    :goto_1
    if-nez v1, :cond_2

    move-object v0, p0

    .line 4390
    :goto_2
    return-object v0

    .line 4368
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4379
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4380
    array-length v2, v0

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_5

    aget-char v4, v0, v3

    .line 4382
    if-eq v4, v6, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-eq v4, v9, :cond_3

    const/16 v5, 0x7d

    if-ne v4, v5, :cond_4

    .line 4383
    :cond_3
    const/16 v5, 0x25

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4384
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4380
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 4386
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 4390
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    move v1, v5

    goto :goto_1
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1049
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v1, v6

    move v2, v7

    move-object v3, p0

    .line 1051
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1052
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 1053
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1062
    :cond_0
    const-string v0, "http://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https://"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    move-object v0, v3

    .line 1070
    :goto_1
    return-object v0

    .line 1056
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v2, v4

    .line 1057
    sub-int v4, v0, v7

    if-ne v1, v4, :cond_3

    if-nez v2, :cond_3

    .line 1058
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1051
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1064
    :cond_4
    const-string v0, "http:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "https:"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1066
    :cond_5
    const-string v0, "http:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https:/"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1067
    :cond_6
    const-string v0, "/"

    const-string v1, "//"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1068
    :cond_7
    const-string v0, ":"

    const-string v1, "://"

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_1
.end method

.method private formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    const-string v1, ""

    .line 4868
    if-nez p1, :cond_1

    .line 4869
    const-string v0, ""

    move-object v0, v1

    .line 4875
    :cond_0
    :goto_0
    return-object v0

    .line 4871
    :cond_1
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4872
    if-nez v0, :cond_0

    .line 4873
    const-string v0, ""

    move-object v0, v1

    goto :goto_0
.end method

.method static getDesiredThumbnailHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 3718
    invoke-static {p0}, Lcom/android/browser/BrowserActivity;->getDesiredThumbnailWidth(Landroid/content/Context;)I

    .line 3719
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    return v0
.end method

.method static getDesiredThumbnailWidth(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    .line 3702
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    if-nez v0, :cond_0

    .line 3703
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 3704
    const/high16 v1, 0x42b4

    mul-float/2addr v1, v0

    float-to-int v1, v1

    sput v1, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    .line 3705
    const/high16 v1, 0x42a0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_HEIGHT:I

    .line 3707
    :cond_0
    sget v0, Lcom/android/browser/BrowserActivity;->THUMBNAIL_WIDTH:I

    return v0
.end method

.method private getInstalledPackages()V
    .locals 2

    .prologue
    .line 5369
    new-instance v0, Lcom/android/browser/BrowserActivity$28;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$28;-><init>(Lcom/android/browser/BrowserActivity;)V

    .line 5391
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 5392
    return-void
.end method

.method private getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 969
    const-string v0, ""

    .line 971
    if-eqz p1, :cond_5

    .line 972
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 973
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_5

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 983
    const-string v1, "com.android.browser.headers"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 985
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 986
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 987
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 988
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 989
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 990
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_1
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1027
    :goto_2
    new-instance v2, Lcom/android/browser/BrowserActivity$UrlData;

    invoke-direct {v2, v1, v0, p1}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;Landroid/content/Intent;)V

    return-object v2

    .line 994
    :cond_1
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 997
    :cond_2
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_5

    .line 999
    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 1002
    invoke-static {v0}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1003
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1004
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 1006
    new-instance v2, Lcom/android/browser/BrowserActivity$7;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/browser/BrowserActivity$7;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/browser/BrowserActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1012
    const-string v1, "&source=android-browser-suggest&"

    .line 1013
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1015
    const-string v2, "app_data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 1016
    if-eqz v2, :cond_4

    .line 1017
    const-string v3, "source"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1019
    :goto_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1020
    const-string v2, "unknown"

    .line 1022
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&source=android-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_4
    move-object v2, v5

    goto :goto_3

    :cond_5
    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    :cond_6
    move-object v1, v5

    goto/16 :goto_1
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 892
    if-nez p1, :cond_0

    move v0, v3

    .line 918
    :goto_0
    return v0

    .line 894
    :cond_0
    const/4 v0, 0x0

    .line 896
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 898
    const-string v2, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v3

    .line 900
    goto :goto_0

    .line 902
    :cond_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 903
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 904
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 911
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 912
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 914
    const-string v1, "http://"

    .line 915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 918
    :cond_3
    const-string v1, "app_data"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/BrowserActivity;->handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 905
    :cond_4
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 908
    :cond_5
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 8
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 928
    if-nez p1, :cond_0

    move v4, v6

    .line 965
    :goto_0
    return v4

    .line 932
    :cond_0
    invoke-static {p1}, Lcom/android/browser/BrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 936
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

    .line 939
    goto :goto_0

    .line 942
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 943
    .local v0, cr:Landroid/content/ContentResolver;
    move-object v1, v3

    .line 944
    .local v1, newUrl:Ljava/lang/String;
    new-instance v4, Lcom/android/browser/BrowserActivity$6;

    invoke-direct {v4, p0, v0, v1}, Lcom/android/browser/BrowserActivity$6;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/BrowserActivity$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 952
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    if-nez v4, :cond_3

    move v4, v6

    .line 953
    goto :goto_0

    .line 954
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v4}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v2

    .line 955
    .local v2, searchEngine:Lcom/android/browser/search/SearchEngine;
    if-nez v2, :cond_4

    move v4, v6

    goto :goto_0

    .line 956
    :cond_4
    invoke-interface {v2, p0, v3, p2, p3}, Lcom/android/browser/search/SearchEngine;->startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 960
    invoke-interface {v2}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "google"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 961
    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    move v4, v6

    .line 962
    goto :goto_0

    :cond_5
    move v4, v7

    .line 965
    goto :goto_0
.end method

.method private hideFakeTitleBar()V
    .locals 3

    .prologue
    .line 1420
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 1421
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setTitleBarVisibility(Z)V

    .line 1423
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1437
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 1426
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 1431
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1433
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 1435
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1436
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 1431
    :cond_2
    const v1, 0x7f0b0003

    goto :goto_1
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 4816
    if-nez p1, :cond_0

    move-object v0, v2

    .line 4859
    :goto_0
    return-object v0

    .line 4820
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4822
    const v1, 0x7f030020

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4826
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    .line 4827
    if-eqz v2, :cond_1

    .line 4828
    const v0, 0x7f0d0070

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4830
    const v0, 0x7f0d0072

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4832
    const v0, 0x7f0d0074

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4837
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    .line 4838
    if-eqz v2, :cond_2

    .line 4839
    const v0, 0x7f0d0076

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4841
    const v0, 0x7f0d0078

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4843
    const v0, 0x7f0d007a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4848
    :cond_2
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBeforeDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 4850
    const v0, 0x7f0d007d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4854
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfterDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 4856
    const v2, 0x7f0d007f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v1

    .line 4859
    goto/16 :goto_0
.end method

.method private initIntentFilter()V
    .locals 2

    .prologue
    .line 1301
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1302
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1303
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1304
    return-void
.end method

.method private loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5199
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5200
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 5201
    return-void
.end method

.method private loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V
    .locals 2
    .parameter "t"
    .parameter "data"

    .prologue
    .line 5210
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5211
    invoke-virtual {p2, p1}, Lcom/android/browser/BrowserActivity$UrlData;->loadIn(Lcom/android/browser/Tab;)V

    .line 5212
    return-void
.end method

.method private loadUrlFromContext(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 5183
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 5184
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 5185
    invoke-virtual {p1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5186
    invoke-direct {p0, p1, p2}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5189
    :cond_0
    return-void
.end method

.method private openTabAndShow(Ljava/lang/String;ZLjava/lang/String;)Lcom/android/browser/Tab;
    .locals 1
    .parameter "url"
    .parameter "closeOnExit"
    .parameter "appId"

    .prologue
    .line 2889
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
    .line 5347
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5348
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 5357
    :goto_0
    return-void

    .line 5352
    :cond_0
    if-eqz p2, :cond_1

    .line 5353
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 5355
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

    .line 869
    if-nez p1, :cond_0

    move v0, v2

    .line 880
    :goto_0
    return v0

    .line 872
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 873
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v2

    .line 880
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 874
    goto :goto_0

    :sswitch_1
    move v0, v4

    .line 875
    goto :goto_0

    .line 876
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 877
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 873
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
    .line 1665
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1666
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1667
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_1

    if-nez v0, :cond_1

    .line 1668
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 1669
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1670
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1671
    invoke-virtual {v2}, Landroid/webkit/WebView;->pauseTimers()V

    .line 1673
    :cond_0
    const/4 v3, 0x1

    .line 1675
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
    .line 2861
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->removeTabFromContentView(Landroid/view/ViewGroup;)V

    .line 2863
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 2864
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz v0, :cond_0

    .line 2865
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2868
    :cond_0
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2869
    .local v1, view:Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 2870
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2871
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v2, :cond_1

    .line 2873
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 2875
    :cond_1
    return-void
.end method

.method private resetLockIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 4514
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/Tab;->resetLockIcon(Ljava/lang/String;)V

    .line 4515
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 4516
    return-void
.end method

.method private resetTitleAndIcon(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 3115
    invoke-virtual {p1}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3116
    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 3117
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3118
    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3123
    :goto_0
    return-void

    .line 3120
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method private resetTitleIconAndProgress()V
    .locals 3

    .prologue
    .line 3104
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3105
    .local v0, current:Landroid/webkit/WebView;
    if-nez v0, :cond_0

    .line 3111
    :goto_0
    return-void

    .line 3108
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 3109
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 3110
    .local v1, progress:I
    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method private resumeWebViewTimers()V
    .locals 4

    .prologue
    .line 1652
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1653
    .local v1, tab:Lcom/android/browser/Tab;
    if-nez v1, :cond_1

    .line 1662
    :cond_0
    :goto_0
    return-void

    .line 1654
    :cond_1
    invoke-virtual {v1}, Lcom/android/browser/Tab;->inLoad()Z

    move-result v0

    .line 1655
    .local v0, inLoad:Z
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    .line 1656
    :cond_3
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 1657
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 1658
    .local v2, w:Landroid/webkit/WebView;
    if-eqz v2, :cond_0

    .line 1659
    invoke-virtual {v2}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_0
.end method

.method private retainIconsOnStartup()V
    .locals 7

    .prologue
    .line 1681
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    .line 1682
    .local v1, db:Landroid/webkit/WebIconDatabase;
    const-string v5, "icons"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/BrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 1683
    const/4 v0, 0x0

    .line 1685
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Landroid/provider/Browser;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 1686
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1687
    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1689
    .local v4, urlIndex:I
    :cond_0
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1690
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 1691
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_0

    .line 1696
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlIndex:I
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1698
    :cond_2
    :goto_0
    return-void

    .line 1693
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 1694
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v5, "browser"

    const-string v6, "retainIconsOnStartup"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1696
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
    .line 5340
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5341
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 5342
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    .line 5344
    :cond_0
    return-void
.end method

.method private setStatusBarVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x400

    .line 5334
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 5335
    .local v0, flag:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/view/Window;->setFlags(II)V

    .line 5336
    return-void

    .end local v0           #flag:I
    :cond_0
    move v0, v2

    .line 5334
    goto :goto_0
.end method

.method private setWindowBrightness(I)V
    .locals 3
    .parameter

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1155
    if-gtz p1, :cond_0

    .line 1156
    const v1, 0x3df5c28f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1164
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1, p1}, Lcom/android/browser/BrowserSettings;->setBrightness(I)V

    .line 1165
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1167
    return-void

    .line 1157
    :cond_0
    const/16 v1, 0x28

    if-ne p1, v1, :cond_1

    .line 1158
    const v1, 0x3ee66666

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 1159
    :cond_1
    const/16 v1, 0x32

    if-ne p1, v1, :cond_2

    .line 1160
    const v1, 0x3f11eb85

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_0

    .line 1162
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
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 3625
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3626
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3627
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3628
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3629
    const-string v1, "share_favicon"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3630
    const-string v1, "share_screenshot"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3632
    const v1, 0x7f090064

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3637
    :goto_0
    return-void

    .line 3634
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;
    .locals 3
    .parameter "dialog"

    .prologue
    .line 1960
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 1961
    .local v1, tab:Lcom/android/browser/Tab;
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1964
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1965
    .local v0, mainView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 1966
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1969
    .end local v0           #mainView:Landroid/webkit/WebView;
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1970
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1971
    invoke-virtual {v1, p1}, Lcom/android/browser/Tab;->showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;

    move-result-object v2

    return-object v2
.end method

.method private showFakeTitleBar()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1369
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_0

    .line 1370
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v9}, Lcom/android/browser/BitmapWebView;->setTitleBarVisibility(Z)V

    .line 1372
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v1, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v8

    .line 1376
    if-nez v8, :cond_2

    .line 1404
    :cond_1
    :goto_0
    return-void

    .line 1381
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->dialogIsUp()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1387
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager;

    move-object v7, v0

    .line 1392
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/16 v5, 0x8

    const/4 v6, -0x3

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1399
    const/16 v2, 0x30

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1400
    invoke-virtual {v8}, Landroid/webkit/WebView;->getScrollY()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 1401
    :goto_1
    if-eqz v2, :cond_4

    move v2, v9

    :goto_2
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1402
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-interface {v7, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_3
    move v2, v9

    .line 1400
    goto :goto_1

    .line 1401
    :cond_4
    const v2, 0x7f0b0003

    goto :goto_2
.end method

.method private showPageInfo(Lcom/android/browser/Tab;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v4, ""

    .line 4549
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4552
    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 4554
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    .line 4559
    if-nez v2, :cond_3

    .line 4560
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4561
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    .line 4571
    :goto_0
    if-nez v3, :cond_0

    .line 4572
    const-string v3, ""

    move-object v3, v4

    .line 4574
    :cond_0
    if-nez v0, :cond_5

    .line 4575
    const-string v0, ""

    .line 4578
    :goto_1
    const v0, 0x7f0d001a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4579
    const v0, 0x7f0d0007

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4581
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    .line 4582
    iput-boolean p2, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 4584
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090012

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x108009b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v3, Lcom/android/browser/BrowserActivity$17;

    invoke-direct {v3, p0, p2}, Lcom/android/browser/BrowserActivity$17;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$16;

    invoke-direct {v1, p0, p2}, Lcom/android/browser/BrowserActivity$16;-><init>(Lcom/android/browser/BrowserActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 4625
    if-nez p2, :cond_1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 4628
    :cond_1
    const v1, 0x7f090018

    new-instance v3, Lcom/android/browser/BrowserActivity$18;

    invoke-direct {v3, p0, p2, v2, p1}, Lcom/android/browser/BrowserActivity$18;-><init>(Lcom/android/browser/BrowserActivity;ZLandroid/webkit/WebView;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4654
    :cond_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 4655
    return-void

    .line 4562
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-ne v2, v0, :cond_4

    .line 4564
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 4565
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto :goto_0

    .line 4567
    :cond_4
    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 4568
    invoke-virtual {v2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    move-object v5, v3

    move-object v3, v0

    move-object v0, v5

    goto/16 :goto_0

    :cond_5
    move-object v4, v0

    goto/16 :goto_1
.end method

.method private showSSLCertificate(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter

    .prologue
    .line 4663
    invoke-virtual {p1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v1

    .line 4665
    if-nez v1, :cond_0

    .line 4705
    :goto_0
    return-void

    .line 4669
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 4671
    const v0, 0x7f0d006c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4674
    const v3, 0x7f030021

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4676
    const v2, 0x7f0d0080

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f09001e

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 4679
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    .line 4680
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09001d

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f02001f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserActivity$20;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$20;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$19;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/Tab;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "inUri"

    .prologue
    .line 5232
    if-eqz p1, :cond_0

    .line 5233
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5235
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateInLoadMenuItems()V
    .locals 3

    .prologue
    .line 1734
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 1743
    :goto_0
    return-void

    .line 1737
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d00c3

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1740
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0d00a6

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1741
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1742
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1737
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d00c4

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1
.end method

.method private updateLockIconImage(I)V
    .locals 2
    .parameter "lockIconType"

    .prologue
    .line 4529
    const/4 v0, 0x0

    .line 4530
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 4531
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 4535
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 4536
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v0}, Lcom/android/browser/TitleBar;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 4537
    return-void

    .line 4532
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 4533
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private updateLockIconToLatest()V
    .locals 1

    .prologue
    .line 4522
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getLockIconType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->updateLockIconImage(I)V

    .line 4523
    return-void
.end method

.method private updatePerfTestMenuItems()V
    .locals 4

    .prologue
    const v3, 0x7f0d00b1

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1748
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 1778
    :goto_0
    return-void

    .line 1752
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1756
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v0}, Lcom/android/browser/PerformanceTester;->isTesting()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1758
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d00c5

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1765
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 1766
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1767
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1768
    invoke-interface {v0}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1769
    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 1762
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    const v1, 0x7f0d00c6

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    goto :goto_1

    .line 1773
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1774
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1775
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private updateScreenshot(Landroid/webkit/WebView;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 3646
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 3647
    .local v5, bm:Landroid/graphics/Bitmap;
    if-nez v5, :cond_0

    .line 3685
    :goto_0
    return-void

    .line 3651
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 3652
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 3653
    .local v4, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v3

    .line 3655
    .local v3, originalUrl:Ljava/lang/String;
    new-instance v0, Lcom/android/browser/BrowserActivity$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$13;-><init>(Lcom/android/browser/BrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateTitleBarForNewLoad(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 5224
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 5225
    invoke-virtual {p0, p2, v1}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 5226
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 5227
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 5229
    :cond_0
    return-void
.end method


# virtual methods
.method AddFeedToGoogleReader(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 4246
    const-string v0, "http://www.google.com/reader/i/#stream/feed/"

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    .line 4247
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

    .line 4249
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAddFeedUrl:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 4253
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/browser/Tab;->mbIsDownloadRss:Z

    .line 4283
    return-void
.end method

.method attachSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2854
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->attachSubWindow(Landroid/view/ViewGroup;)V

    .line 2855
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2856
    return-void
.end method

.method bookmarksOrHistoryPicker(Z)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 5144
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 5145
    if-nez v0, :cond_0

    .line 5178
    :goto_0
    return-void

    .line 5148
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/CombinedBookmarkHistoryActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 5150
    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 5151
    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 5152
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 5156
    if-nez v3, :cond_1

    .line 5157
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mLastEnteredUrl:Ljava/lang/String;

    .line 5159
    if-nez v3, :cond_1

    .line 5160
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    .line 5164
    :cond_1
    if-nez v2, :cond_2

    move-object v2, v3

    .line 5167
    :cond_2
    const-string v5, "title"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5168
    const-string v2, "url"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5169
    const-string v2, "thumbnail"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5171
    const-string v2, "disable_new_window"

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v6

    :goto_1
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5172
    const-string v2, "touch_icon_url"

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5173
    if-eqz p1, :cond_3

    .line 5174
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    sget-object v2, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5177
    :cond_3
    invoke-virtual {p0, v1, v6}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5171
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method closeCurrentWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1915
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1916
    .local v0, current:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1919
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 1920
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1923
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v3

    .line 1924
    .local v3, parent:Lcom/android/browser/Tab;
    const/4 v2, -0x1

    .line 1925
    .local v2, indexToShow:I
    if-eqz v3, :cond_3

    .line 1926
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v3}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v2

    .line 1936
    :cond_2
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1938
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 1928
    :cond_3
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v1

    .line 1930
    .local v1, currentIndex:I
    add-int/lit8 v2, v1, 0x1

    .line 1931
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-le v2, v4, :cond_2

    .line 1933
    sub-int v2, v1, v5

    goto :goto_1
.end method

.method public closeDialogs()V
    .locals 3

    .prologue
    .line 2486
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->closeDialog(Lcom/android/browser/WebDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSelectDialog:Lcom/android/browser/SelectDialog;

    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->closeDialog(Lcom/android/browser/WebDialog;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2503
    :cond_0
    :goto_0
    return-void

    .line 2489
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2490
    .local v0, currentTab:Lcom/android/browser/Tab;
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getSubWebView()Landroid/webkit/WebView;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2491
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2492
    .local v1, mainView:Landroid/webkit/WebView;
    if-eqz v1, :cond_2

    .line 2493
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 2496
    .end local v1           #mainView:Landroid/webkit/WebView;
    :cond_2
    const v2, 0x7f0d00a2

    iput v2, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 2497
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v2, :cond_0

    .line 2501
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method closeTab(Lcom/android/browser/Tab;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 3188
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    .line 3189
    .local v0, currentIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    .line 3190
    .local v1, removeIndex:I
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 3191
    if-lt v0, v1, :cond_0

    if-eqz v0, :cond_0

    .line 3192
    add-int/lit8 v0, v0, -0x1

    .line 3194
    :cond_0
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 3195
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 3196
    return-void
.end method

.method didUserStopLoading()Z
    .locals 1

    .prologue
    .line 3424
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    return v0
.end method

.method dismissSubWindow(Lcom/android/browser/Tab;)V
    .locals 1
    .parameter "t"

    .prologue
    .line 2880
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Lcom/android/browser/Tab;->removeSubWindow(Landroid/view/ViewGroup;)V

    .line 2882
    invoke-virtual {p1}, Lcom/android/browser/Tab;->dismissSubWindow()V

    .line 2883
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 2884
    return-void
.end method

.method displayRssLinks()V
    .locals 5

    .prologue
    .line 1995
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserRssNewlinkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1998
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 1999
    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v1

    .line 2001
    array-length v2, v1

    .line 2002
    const-string v3, "Feed_number"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2004
    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 2006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/webkit/WebFeedLink;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2007
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/webkit/WebFeedLink;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2004
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2010
    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 2011
    return-void
.end method

.method editUrl()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1853
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 1855
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v0, v4

    .line 1856
    .local v0, url:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v4

    :goto_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v4, v3}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1858
    return-void

    .line 1855
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

    .line 1856
    goto :goto_1
.end method

.method getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 4201
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 4202
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 4205
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 4951
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4952
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4953
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v1

    .line 4955
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x64

    goto :goto_0
.end method

.method getTabControl()Lcom/android/browser/TabControl;
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    return-object v0
.end method

.method getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 1709
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 4209
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4210
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4211
    const v1, 0x7f030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    .line 4214
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mVideoProgressView:Landroid/view/View;

    return-object v0
.end method

.method goBackOnePageOrQuit()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const-string v5, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    const-string v4, "browser"

    .line 3200
    const-string v0, "browser"

    const-string v0, "BrowserActivity.goBackOnePageOrQuit : called"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3202
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 3204
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3205
    if-nez v0, :cond_0

    .line 3214
    const-string v0, "browser"

    const-string v0, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3215
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    .line 3266
    :goto_0
    return-void

    .line 3218
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 3219
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3220
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 3224
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getParentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 3225
    if-eqz v1, :cond_2

    .line 3226
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 3228
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    goto :goto_0

    .line 3230
    :cond_2
    invoke-virtual {v0}, Lcom/android/browser/Tab;->closeOnExit()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3234
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/Tab;->clearInLoad()V

    .line 3235
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    if-ne v1, v3, :cond_3

    .line 3236
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 3244
    :cond_3
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3245
    if-eqz v1, :cond_4

    .line 3246
    const-string v2, "browser"

    const-string v2, "BrowserActivity is already paused while handing goBackOnePageOrQuit."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3249
    :cond_4
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3250
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    .line 3251
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 3252
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 3253
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->removeTab(Lcom/android/browser/Tab;)Z

    .line 3262
    :cond_5
    const-string v0, "browser"

    const-string v0, "BrowserActivity.goBackOnePageOrQuit : moveTaskToBack called"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method initZoomView()V
    .locals 6

    .prologue
    .line 3784
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->ENABLE_BITMAPWEBVIEW:Z

    if-nez v0, :cond_1

    .line 3786
    const-string v0, "browser"

    const-string v1, "initZoomView : disabled ENABLE_BITMAPWEBVIEW is false "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3816
    :cond_0
    :goto_0
    return-void

    .line 3790
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-nez v0, :cond_0

    .line 3793
    const v0, 0x7f0d0047

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BitmapWebView;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 3794
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/browser/Browser;

    .line 3795
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iput-object v1, v0, Lcom/android/browser/Browser;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    .line 3800
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 3802
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 3804
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3806
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 3807
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v1, v2}, Lcom/android/browser/BitmapWebView;->setTitleBar(Landroid/view/View;)V

    .line 3808
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v0, v3, p0}, Lcom/android/browser/BitmapWebView;->setWebView(Landroid/webkit/WebView;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method isMenuDown()Z
    .locals 1

    .prologue
    .line 3269
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    return v0
.end method

.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 5003
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    return v0
.end method

.method public isRssLinkedPage()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1977
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    .line 1978
    .local v2, view:Landroid/webkit/WebView;
    if-nez v2, :cond_0

    move v3, v4

    .line 1990
    :goto_0
    return v3

    .line 1981
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/WebView;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v1

    .line 1983
    .local v1, links:[Landroid/webkit/WebFeedLink;
    if-nez v1, :cond_1

    move v3, v4

    .line 1984
    goto :goto_0

    .line 1985
    :cond_1
    array-length v0, v1

    .line 1987
    .local v0, a:I
    array-length v3, v1

    if-eqz v3, :cond_2

    .line 1988
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1990
    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v5, "new_window"

    .line 5044
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5115
    :goto_0
    return-void

    .line 5046
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 5106
    :cond_1
    :goto_1
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 5107
    if-eqz v0, :cond_7

    .line 5108
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0

    .line 5048
    :pswitch_1
    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    .line 5049
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5050
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5051
    if-eqz v1, :cond_3

    const-string v2, "new_window"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5052
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 5065
    :cond_2
    :goto_2
    :pswitch_2
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 5066
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5067
    const-string v1, "privacy_clear_history"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5068
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->removeParentChildRelationShips()V

    goto :goto_1

    .line 5054
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 5056
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 5057
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5058
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_2

    .line 5074
    :pswitch_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 5075
    if-eqz p3, :cond_4

    if-eq p2, v3, :cond_5

    :cond_4
    move-object v0, v2

    .line 5077
    :goto_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {v1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 5078
    iput-object v2, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    goto :goto_1

    .line 5075
    :cond_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_3

    .line 5082
    :pswitch_4
    if-ne p2, v3, :cond_1

    if-eqz p3, :cond_1

    .line 5083
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5084
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 5085
    if-eqz v1, :cond_6

    const-string v2, "new_window"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5086
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_1

    .line 5088
    :cond_6
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 5090
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 5091
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 5093
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->AddFeedToGoogleReader(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 5112
    :cond_7
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult getTopWindow() is null, requestCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5046
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
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1584
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1588
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/browser/BrowserActivity;->orien:I

    .line 1589
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

    .line 1595
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1597
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPageInfoView:Lcom/android/browser/Tab;

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    .line 1601
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1602
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1603
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateView:Lcom/android/browser/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->showSSLCertificate(Lcom/android/browser/Tab;)V

    .line 1606
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1607
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1608
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/browser/BrowserActivity;->showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1613
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1614
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x102018f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1617
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d0059

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1619
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d005b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1621
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 1623
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1624
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/BrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1627
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_4

    .line 1628
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1629
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->getGallerySelection()I

    move-result v0

    .line 1630
    new-instance v1, Lcom/android/browser/ActiveTabsPage;

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1631
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v1, v0}, Lcom/android/browser/ActiveTabsPage;->setGallerySelection(I)V

    .line 1632
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1633
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1634
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->requestFocus()Z

    .line 1635
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1637
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->getState()I

    move-result v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 1638
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onResumed()V

    .line 1639
    :cond_5
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 11
    .parameter "item"

    .prologue
    const/4 v10, 0x0

    .line 1785
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1786
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 1787
    .local v2, id:I
    const/4 v5, 0x1

    .line 1788
    .local v5, result:Z
    sparse-switch v2, :sswitch_data_0

    .line 1840
    invoke-virtual {p0, p1}, Lcom/android/browser/BrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v5

    .line 1842
    :goto_0
    iput-boolean v10, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 1843
    return v5

    .line 1791
    :sswitch_0
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1792
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-nez v0, :cond_0

    .line 1793
    const/4 v5, 0x0

    .line 1794
    goto :goto_0

    .line 1796
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 1797
    .local v3, mainView:Landroid/webkit/WebView;
    if-nez v3, :cond_1

    .line 1798
    const/4 v5, 0x0

    .line 1799
    goto :goto_0

    .line 1801
    :cond_1
    invoke-virtual {v3}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/browser/BrowserActivity;->copy(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1810
    .end local v0           #currentTab:Lcom/android/browser/Tab;
    .end local v3           #mainView:Landroid/webkit/WebView;
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v6

    .line 1811
    .local v6, webView:Landroid/webkit/WebView;
    if-nez v6, :cond_2

    .line 1812
    const/4 v5, 0x0

    .line 1813
    goto :goto_0

    .line 1815
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1816
    .local v1, hrefMap:Ljava/util/HashMap;
    const-string v7, "webview"

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1817
    iget-object v7, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v8, 0x66

    invoke-virtual {v7, v8, v2, v10, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 1820
    .local v4, msg:Landroid/os/Message;
    invoke-virtual {v6}, Landroid/webkit/WebView;->cursorIsAnchor()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1823
    invoke-virtual {v6, v4}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 1829
    :cond_3
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "url"

    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title"

    iget-object v9, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1788
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d0099 -> :sswitch_1
        0x7f0d009d -> :sswitch_1
        0x7f0d00d2 -> :sswitch_1
        0x7f0d00d3 -> :sswitch_1
        0x7f0d00d4 -> :sswitch_1
        0x7f0d00d5 -> :sswitch_1
        0x7f0d00e4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 1460
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 1461
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_0

    .line 1462
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1466
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    .line 1468
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "phone"

    .line 317
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onCreate: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bundle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 322
    const-string v0, "phone"

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 335
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->setDefaultKeyMode(I)V

    .line 337
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    .line 340
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    .line 344
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 633
    :goto_0
    return-void

    .line 350
    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 351
    const-string v1, "AllowBrowser"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 352
    if-nez v0, :cond_1

    .line 356
    const v0, 0x7f09014a

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 358
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    goto :goto_0

    .line 362
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 364
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 367
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 369
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03000f

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    .line 371
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0046

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    .line 373
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0045

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    .line 375
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0d0044

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 377
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBrowserFrameLayout:Landroid/widget/FrameLayout;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    new-instance v0, Lcom/android/browser/TitleBar;

    invoke-direct {v0, p0}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    .line 380
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 381
    new-instance v0, Lcom/android/browser/TitleBar;

    invoke-direct {v0, p0}, Lcom/android/browser/TitleBar;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    .line 384
    new-instance v0, Lcom/android/browser/TabControl;

    invoke-direct {v0, p0}, Lcom/android/browser/TabControl;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    .line 387
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->retainIconsOnStartup()V

    .line 389
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserSettings;->setTabControl(Lcom/android/browser/TabControl;)V

    .line 393
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lcom/android/browser/BrowserActivity;->orien:I

    .line 394
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 398
    const-string v0, "phone"

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->telephony:Landroid/telephony/TelephonyManager;

    .line 402
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 403
    const-string v1, "Browser"

    invoke-virtual {v0, v7, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 407
    const v0, 0x7f09010d

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    .line 410
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 412
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 419
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 420
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 422
    new-instance v0, Lcom/android/browser/BrowserActivity$3;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$3;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 452
    new-instance v0, Lcom/android/browser/BrowserActivity$4;

    invoke-direct {v0, p0}, Lcom/android/browser/BrowserActivity$4;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    .line 507
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 508
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 510
    new-instance v1, Lcom/android/browser/BrowserActivity$5;

    invoke-direct {v1, p0}, Lcom/android/browser/BrowserActivity$5;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    .line 557
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->restoreState(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 562
    new-instance v0, Lcom/android/browser/BrowserActivity$ClearThumbnails;

    invoke-direct {v0, v3}, Lcom/android/browser/BrowserActivity$ClearThumbnails;-><init>(Lcom/android/browser/BrowserActivity$1;)V

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity$ClearThumbnails;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 566
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeSessionCookie()V

    .line 567
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 568
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 573
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v2

    .line 575
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 576
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-nez v5, :cond_4

    :cond_3
    const-string v5, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_4
    move v3, v7

    :goto_1
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v2, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v5}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 582
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 583
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 584
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 585
    if-eqz v1, :cond_5

    .line 586
    const-string v4, "browser.initialZoomLevel"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 587
    if-lez v1, :cond_5

    const/16 v4, 0x3e8

    if-gt v1, v4, :cond_5

    .line 588
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->setInitialScale(I)V

    .line 594
    :cond_5
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    if-nez v1, :cond_8

    .line 595
    invoke-virtual {v2}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 596
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 610
    :goto_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getThumbnailDir()Ljava/io/File;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 612
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v6

    :goto_3
    if-ge v3, v2, :cond_a

    aget-object v4, v1, v3

    .line 613
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 614
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 612
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    move v3, v6

    .line 576
    goto :goto_1

    .line 598
    :cond_7
    invoke-direct {p0, v0, v2}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto :goto_2

    .line 601
    :cond_8
    iput-boolean v6, p0, Lcom/android/browser/BrowserActivity;->mStartSearch:Z

    goto :goto_2

    .line 606
    :cond_9
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 619
    :cond_a
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getJsFlags()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_b

    .line 621
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 623
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setJsFlags(Ljava/lang/String;)V

    .line 627
    :cond_b
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->getInstalledPackages()V

    .line 630
    new-instance v0, Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/browser/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    .line 632
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->start()V

    goto/16 :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "android.intent.action.VIEW"

    .line 2683
    instance-of v0, p2, Lcom/android/browser/TitleBar;

    if-eqz v0, :cond_1

    .line 2803
    :cond_0
    :goto_0
    return-void

    .line 2686
    :cond_1
    check-cast p2, Landroid/webkit/WebView;

    .line 2687
    invoke-virtual {p2}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    .line 2688
    if-eqz v0, :cond_0

    .line 2692
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v1

    .line 2693
    if-nez v1, :cond_2

    .line 2694
    const-string v0, "browser"

    const-string v1, "We should not show context menu when nothing is touched"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2698
    :cond_2
    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    .line 2704
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 2709
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    .line 2710
    const v3, 0x7f0c0004

    invoke-virtual {v2, v3, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2713
    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 2714
    const v0, 0x7f0d00c7

    const/4 v3, 0x2

    if-ne v1, v3, :cond_6

    move v3, v6

    :goto_1
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2716
    const v0, 0x7f0d00cb

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    move v3, v6

    :goto_2
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2718
    const v0, 0x7f0d00ce

    const/4 v3, 0x3

    if-ne v1, v3, :cond_8

    move v3, v6

    :goto_3
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2720
    const v0, 0x7f0d00d6

    if-eq v1, v8, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_9

    :cond_3
    move v3, v6

    :goto_4
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2723
    const v0, 0x7f0d00d1

    if-eq v1, v9, :cond_4

    const/16 v3, 0x8

    if-ne v1, v3, :cond_a

    :cond_4
    move v3, v6

    :goto_5
    invoke-interface {p1, v0, v3}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 2728
    packed-switch v1, :pswitch_data_0

    .line 2799
    :pswitch_0
    const-string v0, "browser"

    const-string v1, "We should not get here."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_5
    :goto_6
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    goto :goto_0

    :cond_6
    move v3, v5

    .line 2714
    goto :goto_1

    :cond_7
    move v3, v5

    .line 2716
    goto :goto_2

    :cond_8
    move v3, v5

    .line 2718
    goto :goto_3

    :cond_9
    move v3, v5

    .line 2720
    goto :goto_4

    :cond_a
    move v3, v5

    .line 2723
    goto :goto_5

    .line 2730
    :pswitch_1
    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2731
    const v0, 0x7f0d00c8

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2734
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2735
    const-string v1, "phone"

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2736
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2737
    const v1, 0x7f0d00c9

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2739
    const v0, 0x7f0d00ca

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_6

    .line 2744
    :pswitch_2
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2745
    const v0, 0x7f0d00cc

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mailto:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2748
    const v0, 0x7f0d00cd

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2753
    :pswitch_3
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2754
    const v0, 0x7f0d00cf

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:0,0?q="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2758
    const v0, 0x7f0d00d0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Copy;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Copy;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    .line 2764
    :pswitch_4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x109000e

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2767
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/browser/BrowserActivity;->mCursorUrl:Ljava/lang/String;

    .line 2771
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 2773
    const v0, 0x7f0d00d2

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v3}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2775
    const v0, 0x7f0d00d3

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {v2}, Lcom/android/browser/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v3

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2777
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2778
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2779
    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2780
    const/high16 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2781
    const v3, 0x7f0d009d

    invoke-interface {p1, v3}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v0, :cond_c

    move v0, v6

    :goto_7
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2782
    if-eq v1, v9, :cond_5

    .line 2787
    :pswitch_5
    if-ne v1, v8, :cond_b

    .line 2788
    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2790
    :cond_b
    const v0, 0x7f0d00d8

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v7, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 2792
    const v0, 0x7f0d00d7

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$Download;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$Download;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 2794
    const v0, 0x7f0d00d9

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$SetAsWallpaper;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/BrowserActivity$SetAsWallpaper;-><init>(Lcom/android/browser/BrowserActivity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_6

    :cond_c
    move v0, v5

    .line 2781
    goto :goto_7

    .line 2728
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
    .parameter

    .prologue
    .line 1719
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 1721
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1722
    const v1, 0x7f0c0003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1723
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mMenu:Landroid/view/Menu;

    .line 1724
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 1725
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 1541
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onDestroy: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1547
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 1549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 1552
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 1575
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onDestroy()V

    .line 1578
    :cond_1
    :goto_0
    return-void

    .line 1555
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1558
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1559
    if-eqz v0, :cond_3

    .line 1560
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 1561
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1564
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->destroy()V

    .line 1565
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->close()V

    .line 1567
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1570
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;

    invoke-virtual {v0}, Lcom/android/browser/SystemAllowGeolocationOrigins;->stop()V

    .line 1571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/SystemAllowGeolocationOrigins;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1575
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_1

    .line 1576
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onDestroy()V

    goto :goto_0

    .line 1575
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_4

    .line 1576
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->onDestroy()V

    :cond_4
    throw v0
.end method

.method public onDisplaySoftKeyboard(Landroid/webkit/WebView;Z)V
    .locals 3
    .parameter "view"
    .parameter "isTextView"

    .prologue
    .line 638
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 640
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 641
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 642
    .local v0, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 643
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 645
    :cond_0
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v1}, Lcom/android/browser/BitmapWebView;->pause()V

    .line 646
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    .line 648
    .end local v0           #webview:Landroid/webkit/WebView;
    :cond_1
    return-void
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4298
    const-string v0, "BrowserActivity LOG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " BrowserActivity onDownloadStart() Begin - url "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " contentDisposition - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mimetype - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4302
    const-string v0, "application/vnd.webkit.maybe.feed"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 4303
    const-string v0, "application/rss+xml"

    move-object v6, v0

    .line 4307
    :goto_0
    if-eqz p3, :cond_0

    const-string v3, "attachment"

    const/16 v5, 0xa

    move-object v0, p3

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 4311
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4312
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4313
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 4315
    if-eqz v0, :cond_3

    .line 4316
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 4319
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    :goto_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v6

    move-wide v6, p5

    .line 4357
    invoke-static/range {v0 .. v7}, Lcom/android/browser/DownloadActivityChooser;->chooseActivity(Lcom/android/browser/BrowserActivity;Landroid/content/pm/ResolveInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 4359
    return-void

    :cond_2
    move-object v1, v7

    .line 4347
    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_1

    :cond_4
    move-object v1, v7

    goto :goto_1

    :cond_5
    move-object v6, p4

    goto :goto_0
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "BrowserActivity LOG"

    .line 4405
    const-string v0, "BrowserActivity LOG"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " BrowserActivity onDownloadStartNoStream() Begin - url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " contentDisposition - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mimetype - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileNameEx(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4415
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4417
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 4418
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4423
    const-string v2, "shared"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4424
    const v0, 0x7f0900d8

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4425
    const v1, 0x7f0900d7

    .line 4431
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 4504
    :goto_1
    return-void

    .line 4427
    :cond_0
    const v1, 0x7f0900d6

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/BrowserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4428
    const v1, 0x7f0900d5

    goto :goto_0

    .line 4446
    :cond_1
    :try_start_0
    new-instance v1, Landroid/net/WebAddress;

    invoke-direct {v1, p1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 4447
    iget-object v2, v1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/browser/BrowserActivity;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/WebAddress;->mPath:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4457
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4459
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4460
    const-string v4, "uri"

    invoke-virtual {v1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4461
    const-string v4, "cookiedata"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4462
    const-string v2, "useragent"

    invoke-virtual {v3, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4463
    const-string v2, "notificationpackage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4465
    const-string v2, "notificationclass"

    const-class v4, Lcom/android/browser/OpenDownloadReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4467
    const-string v2, "visibility"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4469
    const-string v2, "mimetype"

    invoke-virtual {v3, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4470
    const-string v2, "hint"

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4471
    const-string v0, "description"

    iget-object v1, v1, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4472
    const-wide/16 v0, 0x0

    cmp-long v0, p5, v0

    if-lez v0, :cond_2

    .line 4473
    const-string v0, "total_bytes"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4476
    :cond_2
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isDownloadInternalMemory()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4482
    const-string v0, "storagetype"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4485
    :cond_3
    if-nez p4, :cond_4

    .line 4488
    const-string v0, "BrowserActivity LOG"

    const-string v0, " Browser activity onDownloadStartNoStream FetchUrlMimeType"

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4489
    new-instance v0, Lcom/android/browser/FetchUrlMimeType;

    invoke-direct {v0, p0}, Lcom/android/browser/FetchUrlMimeType;-><init>(Lcom/android/browser/BrowserActivity;)V

    new-array v1, v7, [Landroid/content/ContentValues;

    aput-object v3, v1, v6

    invoke-virtual {v0, v1}, Lcom/android/browser/FetchUrlMimeType;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4502
    :goto_2
    const v0, 0x7f0900df

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 4448
    :catch_0
    move-exception v0

    .line 4451
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception trying to parse url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4497
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_CDURI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2
.end method

.method onHideCustomView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4177
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 4198
    :cond_0
    :goto_0
    return-void

    .line 4181
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 4183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 4186
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 4187
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 4188
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4189
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4191
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 4192
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4193
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 4195
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v2}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    goto :goto_0
.end method

.method onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4078
    .line 4080
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserActivity$15;

    invoke-direct {v2, p0, p4}, Lcom/android/browser/BrowserActivity$15;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$14;

    invoke-direct {v1, p0, p4}, Lcom/android/browser/BrowserActivity$14;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/JsResult;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mJSAlertPopup:Landroid/app/AlertDialog;

    .line 4100
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x52

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3276
    if-ne v6, p1, :cond_0

    .line 3277
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 3278
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 3360
    :goto_0
    return v1

    .line 3286
    :cond_0
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v1, :cond_1

    .line 3290
    if-eq v6, p1, :cond_1

    .line 3292
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 3293
    const/16 v1, 0x3e

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    move v1, v2

    .line 3294
    goto :goto_0

    .line 3298
    :cond_1
    sparse-switch p1, :sswitch_data_0

    .line 3360
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 3303
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3304
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->pageUp(Z)Z

    :goto_1
    move v1, v2

    .line 3308
    goto :goto_0

    .line 3306
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/webkit/WebView;->pageDown(Z)Z

    goto :goto_1

    .line 3310
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 3311
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v1, v2

    .line 3312
    goto :goto_0

    .line 3327
    :sswitch_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->telephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v3, :cond_8

    .line 3331
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3332
    .local v0, view:Landroid/webkit/WebView;
    if-eqz v0, :cond_5

    .line 3333
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v1, :cond_4

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v2, :cond_6

    .line 3334
    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    :cond_5
    :goto_2
    move v1, v2

    .line 3339
    goto :goto_0

    .line 3335
    :cond_6
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eq v1, v3, :cond_7

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v5, :cond_5

    .line 3336
    :cond_7
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto :goto_2

    .line 3346
    .end local v0           #view:Landroid/webkit/WebView;
    :cond_8
    :sswitch_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->telephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eq v1, v3, :cond_2

    .line 3349
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 3350
    .restart local v0       #view:Landroid/webkit/WebView;
    if-eqz v0, :cond_a

    .line 3351
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eqz v1, :cond_9

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v2, :cond_b

    .line 3352
    :cond_9
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    :cond_a
    :goto_3
    move v1, v2

    .line 3357
    goto/16 :goto_0

    .line 3353
    :cond_b
    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-eq v1, v3, :cond_c

    sget v1, Lcom/android/browser/BrowserActivity;->orien:I

    if-ne v1, v5, :cond_a

    .line 3354
    :cond_c
    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto :goto_3

    .line 3298
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
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    .line 3370
    sparse-switch p1, :sswitch_data_0

    .line 3399
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 3372
    :sswitch_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    goto :goto_0

    .line 3375
    :sswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3376
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 3378
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    :goto_2
    move v1, v2

    .line 3395
    goto :goto_1

    .line 3380
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v1, :cond_2

    .line 3382
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    goto :goto_2

    .line 3384
    :cond_2
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 3385
    .local v0, subwindow:Landroid/webkit/WebView;
    if-eqz v0, :cond_4

    .line 3386
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3387
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_2

    .line 3389
    :cond_3
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto :goto_2

    .line 3392
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->goBackOnePageOrQuit()V

    goto :goto_2

    .line 3370
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 1645
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

    .line 1647
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 1648
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->freeMemory()V

    .line 1649
    return-void
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 3
    .parameter "featureId"
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1337
    if-nez p1, :cond_0

    .line 1338
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_3

    .line 1339
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    if-eqz v0, :cond_1

    .line 1343
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1365
    :cond_0
    :goto_0
    return v1

    .line 1345
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_2

    .line 1348
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1349
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 1353
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1354
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0

    .line 1359
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    .line 1360
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 1361
    iput-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mConfigChanged:Z

    .line 1362
    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    goto :goto_0
.end method

.method public onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 4982
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-ne p1, v1, :cond_1

    .line 5000
    :cond_0
    :goto_0
    return-void

    .line 4984
    :cond_1
    if-eqz p1, :cond_3

    .line 4985
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4986
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 4987
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->cancel()V

    .line 4988
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 4996
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 4997
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4998
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_0

    .line 4991
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 4992
    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v1, :cond_2

    .line 4993
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v11, "android.intent.action.VIEW"

    const-string v6, "android.intent.action.SEARCH"

    .line 674
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onNewIntent, intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 680
    if-nez v0, :cond_2

    .line 682
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v9}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 683
    if-nez v0, :cond_1

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 688
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 689
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    :cond_2
    move-object v1, v0

    .line 691
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 692
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 693
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x10

    and-int/2addr v0, v3

    if-nez v0, :cond_0

    .line 701
    const-string v0, "android.intent.action.DOWNLOAD_ACTIVITY_CHOOSER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-ne v0, v8, :cond_3

    .line 703
    invoke-static {p0, p1}, Lcom/android/browser/DownloadActivityChooser;->handleIntent(Lcom/android/browser/BrowserActivity;Landroid/content/Intent;)V

    goto :goto_0

    .line 709
    :cond_3
    const-string v0, "search"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    invoke-virtual {v0}, Landroid/app/SearchManager;->stopSearch()V

    .line 711
    const-string v0, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 713
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_0

    .line 718
    :cond_4
    invoke-virtual {v1}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 719
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v4

    .line 720
    if-eqz v4, :cond_5

    const-string v5, "query"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 726
    :cond_5
    const-string v4, "android.intent.action.SEARCH"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/android/browser/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 728
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    const-string v5, "extra_event"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 732
    const-string v5, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 747
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/BrowserActivity$UrlData;

    move-result-object v4

    .line 748
    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 749
    new-instance v4, Lcom/android/browser/BrowserActivity$UrlData;

    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v5}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/browser/BrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    .line 752
    :cond_7
    const-string v5, "com.android.browser.application_id"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 754
    iget-object v6, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v7, "javascript:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 757
    invoke-virtual {p0, v4, v8, v5}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 760
    :cond_8
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v0, :cond_d

    if-eqz v5, :cond_d

    :cond_9
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const/high16 v0, 0x40

    and-int/2addr v0, v3

    if-eqz v0, :cond_d

    .line 766
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v5}, Lcom/android/browser/TabControl;->getTabFromId(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 767
    if-eqz v0, :cond_b

    .line 768
    const-string v2, "browser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reusing tab for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 773
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 777
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v0, v4}, Lcom/android/browser/TabControl;->recreateWebView(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)Z

    move-result v2

    .line 780
    if-eq v1, v0, :cond_a

    .line 781
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    .line 782
    if-eqz v2, :cond_0

    .line 783
    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 788
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 789
    if-eqz v2, :cond_0

    .line 790
    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 797
    :cond_b
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/android/browser/TabControl;->findUnusedTabWithUrl(Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v0

    .line 798
    if-eqz v0, :cond_c

    .line 799
    if-eq v1, v0, :cond_0

    .line 800
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1, v0}, Lcom/android/browser/TabControl;->getTabIndex(Lcom/android/browser/Tab;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_0

    .line 809
    :cond_c
    invoke-virtual {p0, v4, v8, v5}, Lcom/android/browser/BrowserActivity;->openTabAndShow(Lcom/android/browser/BrowserActivity$UrlData;ZLjava/lang/String;)Lcom/android/browser/Tab;

    goto/16 :goto_0

    .line 813
    :cond_d
    invoke-virtual {v4}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v2, "about:debug"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 815
    const-string v0, "about:debug.dom"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 816
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 817
    :cond_e
    const-string v0, "about:debug.dom.file"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 818
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto/16 :goto_0

    .line 819
    :cond_f
    const-string v0, "about:debug.render"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 820
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 821
    :cond_10
    const-string v0, "about:debug.render.file"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 822
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto/16 :goto_0

    .line 823
    :cond_11
    const-string v0, "about:debug.display"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 824
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto/16 :goto_0

    .line 825
    :cond_12
    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v2, "about:debug.drag"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 826
    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v2, 0x30

    sub-int/2addr v0, v2

    .line 827
    if-lez v0, :cond_13

    const/16 v2, 0x9

    if-le v0, v2, :cond_14

    .line 828
    :cond_13
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 830
    :cond_14
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    new-instance v2, Lcom/android/browser/MeshTracker;

    invoke-direct {v2, v0}, Lcom/android/browser/MeshTracker;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setDragTracker(Landroid/webkit/WebView$DragTracker;)V

    goto/16 :goto_0

    .line 833
    :cond_15
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->toggleDebugSettings()V

    goto/16 :goto_0

    .line 838
    :cond_16
    const-string v0, "about:useragent"

    iget-object v2, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 840
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/BrowserDebug;->editUserAgent(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 844
    :cond_17
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 851
    invoke-virtual {v1, v10}, Lcom/android/browser/Tab;->setAppId(Ljava/lang/String;)V

    .line 852
    iget-object v0, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v2, "rtsp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 855
    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v2

    iget-object v3, v4, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    invoke-direct {p0, v1, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0

    .line 861
    :cond_18
    invoke-direct {p0, v1, v4}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    goto/16 :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2017
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 2240
    :goto_0
    return v0

    .line 2022
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v4

    .line 2023
    goto :goto_0

    .line 2025
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_2

    .line 2030
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    .line 2032
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2234
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 2235
    goto :goto_0

    .line 2035
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 2239
    :cond_3
    :goto_1
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v0, v5

    .line 2240
    goto :goto_0

    .line 2039
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->editUrl()V

    goto :goto_1

    .line 2047
    :pswitch_3
    new-instance v0, Lcom/android/browser/ActiveTabsPage;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-direct {v0, p0, v1}, Lcom/android/browser/ActiveTabsPage;-><init>(Lcom/android/browser/BrowserActivity;Lcom/android/browser/TabControl;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 2048
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 2049
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 2050
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    sget-object v2, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_PARAMS:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2051
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage;->requestFocus()Z

    .line 2052
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    goto :goto_1

    .line 2056
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/AddBookmarkPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2058
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v1

    .line 2059
    const-string v2, "url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2060
    const-string v2, "title"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2061
    const-string v2, "touch_icon_url"

    invoke-virtual {v1}, Landroid/webkit/WebView;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2062
    const-string v2, "thumbnail"

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2063
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2067
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->displayRssLinks()V

    goto :goto_1

    .line 2071
    :pswitch_6
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_4

    .line 2072
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->stopLoading()V

    goto :goto_1

    .line 2074
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_1

    .line 2079
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 2083
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto/16 :goto_1

    .line 2088
    :pswitch_9
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentSubWindow()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2089
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    goto/16 :goto_1

    .line 2092
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeCurrentWindow()V

    goto/16 :goto_1

    .line 2096
    :pswitch_a
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2097
    if-eqz v0, :cond_3

    .line 2098
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->dismissSubWindow(Lcom/android/browser/Tab;)V

    .line 2099
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2104
    :pswitch_b
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/BrowserPreferencesPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2106
    const-string v1, "currentPage"

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2108
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_1

    .line 2112
    :pswitch_c
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createShortcutIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2113
    if-eqz v0, :cond_3

    .line 2115
    const-string v1, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2116
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 2121
    :pswitch_d
    iget v0, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    if-ne v0, v5, :cond_6

    .line 2123
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 2124
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->brightToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 2128
    :cond_6
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createBrightPopup()V

    goto/16 :goto_1

    .line 2133
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->showFindDialog()V

    goto/16 :goto_1

    .line 2141
    :pswitch_f
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/android/browser/BrowserActivity;->showPageInfo(Lcom/android/browser/Tab;Z)V

    goto/16 :goto_1

    .line 2145
    :pswitch_10
    invoke-virtual {p0, v5}, Lcom/android/browser/BrowserActivity;->bookmarksOrHistoryPicker(Z)V

    goto/16 :goto_1

    .line 2150
    :pswitch_11
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2151
    if-nez v0, :cond_7

    .line 2152
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    move v0, v4

    .line 2153
    goto/16 :goto_0

    .line 2155
    :cond_7
    invoke-virtual {v0}, Lcom/android/browser/Tab;->populatePickerData()V

    .line 2157
    :try_start_0
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createScreenshot(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/android/browser/BrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 2160
    :catch_0
    move-exception v0

    const-string v0, "browser"

    const-string v1, "catch exception"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2165
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->debugDump()V

    .line 2167
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/browser/BrowserDebug;->dumpWebView(Landroid/content/Context;Landroid/webkit/WebView;)V

    goto/16 :goto_1

    .line 2172
    :pswitch_13
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    if-ne v0, v5, :cond_3

    .line 2174
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    if-nez v0, :cond_8

    .line 2176
    new-instance v0, Lcom/android/browser/PerformanceTester;

    invoke-direct {v0, p0}, Lcom/android/browser/PerformanceTester;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    .line 2177
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v0}, Lcom/android/browser/PerformanceTester;->startTest()V

    goto/16 :goto_1

    .line 2181
    :cond_8
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v0}, Lcom/android/browser/PerformanceTester;->isTesting()Z

    move-result v0

    if-ne v0, v5, :cond_9

    .line 2183
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v0}, Lcom/android/browser/PerformanceTester;->stopTest()V

    .line 2184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    goto/16 :goto_1

    .line 2188
    :cond_9
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    invoke-virtual {v0}, Lcom/android/browser/PerformanceTester;->startTest()V

    goto/16 :goto_1

    .line 2195
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->dumpV8Counters()V

    goto/16 :goto_1

    .line 2199
    :pswitch_15
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    goto/16 :goto_1

    .line 2203
    :pswitch_16
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    goto/16 :goto_1

    .line 2207
    :pswitch_17
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->viewDownloads()V

    goto/16 :goto_1

    .line 2219
    :pswitch_18
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    move v1, v4

    .line 2220
    :goto_2
    sget-object v2, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 2221
    sget-object v2, Lcom/android/browser/BrowserActivity;->WINDOW_SHORTCUT_ID_ARRAY:[I

    aget v2, v2, v1

    if-ne v2, v0, :cond_a

    .line 2222
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2223
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v2

    if-eq v0, v2, :cond_3

    .line 2225
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->switchToTab(I)Z

    goto/16 :goto_1

    .line 2220
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2032
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d00a3
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
    .line 1408
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    .line 1409
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_1

    .line 1410
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1417
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_0

    .line 1415
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 3896
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserActivity;->resetTitleAndIcon(Landroid/webkit/WebView;)V

    .line 3898
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 3901
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3902
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3903
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3904
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3955
    :cond_0
    sget-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    if-eqz v0, :cond_1

    .line 3956
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 3957
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 3961
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    if-eqz v0, :cond_2

    .line 3962
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mPerfTester:Lcom/android/browser/PerformanceTester;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/PerformanceTester;->onPageFinished(Ljava/lang/String;)V

    .line 3963
    :cond_2
    return-void
.end method

.method onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v2, "browser"

    .line 3826
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 3829
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 3831
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserActivity;->resetLockIcon(Ljava/lang/String;)V

    .line 3832
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/browser/BrowserActivity;->setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V

    .line 3833
    invoke-virtual {p0, p3}, Lcom/android/browser/BrowserActivity;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3836
    const/16 v0, 0xa

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/BrowserActivity;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 3837
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 3839
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity onPageStarted() : mIsNetworkUp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3840
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3842
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 3843
    if-eqz v0, :cond_1

    .line 3844
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    .line 3845
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity onPageStarted(): mIsNetworkUp from info.isAvailable()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIsNetworkUp:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->createAndShowNetworkDialog()V

    .line 3849
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeDialogs()V

    .line 3850
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isTracing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3853
    :try_start_0
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p2}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 3854
    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3858
    :goto_0
    const/16 v1, 0x2e

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 3859
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".trace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3860
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/browser/BrowserActivity;->mInTrace:Z

    .line 3861
    const/high16 v1, 0x140

    invoke-static {v0, v1}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 3885
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3886
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3887
    return-void

    .line 3855
    :catch_0
    move-exception v0

    .line 3856
    const-string v0, "browser"

    move-object v0, v2

    goto :goto_0
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v2, "browser"

    .line 1494
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1498
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

    .line 1501
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-eqz v0, :cond_1

    .line 1502
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already paused."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1507
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->pauseCurrentTab()V

    .line 1508
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1509
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentIndex()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->pauseWebViewTimers()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1510
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1511
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1519
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    if-eqz v0, :cond_3

    .line 1520
    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserActivity;->removeActiveTabPage(Z)V

    .line 1523
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 1526
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1527
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1528
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 1531
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1533
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 1534
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onPaused()V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0d00b3

    const v2, 0x7f0d00a2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2545
    iput-boolean v4, p0, Lcom/android/browser/BrowserActivity;->mCanChord:Z

    .line 2549
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 2552
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getTextSelector()Lcom/android/browser/TextSelector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/TextSelector;->clearSelection()V

    .line 2554
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    packed-switch v0, :pswitch_data_0

    .line 2563
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    if-eq v0, v1, :cond_0

    .line 2564
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2565
    invoke-interface {p1, v2, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2566
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2568
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2572
    if-eqz v0, :cond_7

    .line 2573
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    .line 2574
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    .line 2575
    iget-object v3, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v6, v2

    move v2, v1

    move v1, v6

    .line 2577
    :goto_0
    const v3, 0x7f0d00c0

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2578
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2580
    const v2, 0x7f0d00b4

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2581
    if-nez v0, :cond_3

    move v0, v4

    :goto_1
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2583
    const v0, 0x7f0d00a9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2586
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "about:blank"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-ne v4, v2, :cond_4

    .line 2587
    :cond_1
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2594
    :goto_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2595
    if-eqz v0, :cond_6

    .line 2596
    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    .line 2597
    const/16 v2, 0x64

    if-ne v0, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    .line 2603
    :goto_3
    const v2, 0x7f0d00aa

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2604
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2606
    const v0, 0x7f0d00a7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2609
    const v0, 0x7f0d00a3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2613
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2614
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2615
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2616
    const/high16 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 2617
    const v1, 0x7f0d00ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v0, :cond_5

    move v0, v4

    :goto_4
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2619
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->isNavDump()Z

    move-result v0

    .line 2620
    const v1, 0x7f0d00b0

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2621
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2622
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2624
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    .line 2625
    const v1, 0x7f0d00b2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2626
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2627
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2629
    const v0, 0x7f0d00a4

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2631
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 2666
    :goto_5
    const v0, 0x7f0d00a5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2668
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2669
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2672
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updatePerfTestMenuItems()V

    .line 2676
    :cond_2
    :goto_6
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    .line 2677
    return v4

    .line 2556
    :pswitch_0
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mCurrentMenuState:I

    iget v1, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    if-eq v0, v1, :cond_2

    .line 2557
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 2558
    invoke-interface {p1, v2, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 2559
    invoke-interface {p1, v3, v5}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    goto :goto_6

    :cond_3
    move v0, v5

    .line 2581
    goto/16 :goto_1

    .line 2589
    :cond_4
    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_5
    move v0, v5

    .line 2617
    goto :goto_4

    .line 2634
    :pswitch_1
    const v1, 0x7f020037

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2638
    :pswitch_2
    const v1, 0x7f020038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2642
    :pswitch_3
    const v1, 0x7f020039

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2646
    :pswitch_4
    const v1, 0x7f02003a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2650
    :pswitch_5
    const v1, 0x7f02003b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2654
    :pswitch_6
    const v1, 0x7f02003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2658
    :pswitch_7
    const v1, 0x7f02003d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 2662
    :pswitch_8
    const v1, 0x7f02003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_5

    :cond_6
    move v0, v5

    goto/16 :goto_3

    :cond_7
    move v0, v5

    move v1, v5

    move v2, v5

    goto/16 :goto_0

    .line 2554
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 2631
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
    .parameter
    .parameter

    .prologue
    .line 4104
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p2}, Lcom/android/browser/TitleBar;->setProgress(I)V

    .line 4106
    const/16 v0, 0x64

    if-ne p2, v0, :cond_3

    .line 4115
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

    .line 4117
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-eqz v0, :cond_1

    .line 4118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 4119
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 4121
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-nez v0, :cond_1

    .line 4122
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 4126
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 4127
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->isRssLinkedPage()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setRss(Z)V

    .line 4147
    :cond_2
    :goto_0
    return-void

    .line 4130
    :cond_3
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    if-nez v0, :cond_4

    .line 4134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mInLoad:Z

    .line 4135
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateInLoadMenuItems()V

    .line 4142
    :cond_4
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mOptionsMenuOpen:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mIconView:Z

    if-eqz v0, :cond_2

    .line 4144
    :cond_5
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->showFakeTitleBar()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "browser"

    .line 1242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1245
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onResume: this="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPendingZoomViewResume = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->initIntentFilter()V

    .line 1251
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1252
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1256
    const v0, 0x7f09014a

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1257
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->finish()V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1261
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    if-nez v0, :cond_2

    .line 1262
    const-string v0, "browser"

    const-string v0, "BrowserActivity is already resumed."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1266
    :cond_2
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->resumeCurrentTab()V

    .line 1267
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mActivityInPause:Z

    .line 1268
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resumeWebViewTimers()V

    .line 1270
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_3

    .line 1271
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->onResumed()V

    .line 1273
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1274
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1275
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1278
    :cond_4
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1280
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mIMEReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ResponseAxT9Info"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1282
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 1284
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1285
    const-string v0, "browser"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrowserActivity.onResume mPendingZoomViewResume mZoomView = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_6

    .line 1288
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 1289
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1290
    if-eqz v0, :cond_5

    .line 1291
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1293
    :cond_5
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->resume()V

    .line 1296
    :cond_6
    iput-boolean v3, p0, Lcom/android/browser/BrowserActivity;->mPendingZoomViewResume:Z

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 1479
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

    .line 1489
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0, p1}, Lcom/android/browser/TabControl;->saveState(Landroid/os/Bundle;)V

    .line 1490
    return-void
.end method

.method onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 4
    .parameter "view"
    .parameter "callback"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 4151
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_0

    .line 4153
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v3}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 4155
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4156
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 4174
    :goto_0
    return-void

    .line 4161
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    sget-object v1, Lcom/android/browser/BrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4162
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    .line 4163
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mCustomViewCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 4166
    iget v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mOldMenuState:I

    .line 4167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 4169
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4171
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->setStatusBarVisibility(Z)V

    .line 4172
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4173
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 1176
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1177
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onStart: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1184
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->resume()V

    .line 1191
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    .line 1193
    iget v0, p0, Lcom/android/browser/BrowserActivity;->autobright:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1195
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1197
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mBrightPopup:Landroid/app/AlertDialog;

    .line 1201
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1202
    const/high16 v1, -0x4080

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 1203
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1210
    :goto_0
    return-void

    .line 1208
    :cond_3
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->setWindowBrightness(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 1214
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1215
    const-string v0, "browser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BrowserActivity.onStop: this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1226
    if-eqz v0, :cond_0

    .line 1227
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v0, :cond_1

    .line 1230
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    invoke-virtual {v0}, Lcom/android/browser/BitmapWebView;->pause()V

    .line 1233
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1234
    const-string v1, "brightness"

    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->getBrightness()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1235
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1236
    return-void
.end method

.method openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 2
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
    .line 4223
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    .line 4230
    :goto_0
    return-void

    .line 4224
    :cond_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 4225
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4226
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4227
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 4228
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openTab(Ljava/lang/String;)Lcom/android/browser/Tab;
    .locals 4
    .parameter "url"

    .prologue
    .line 2924
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v2}, Lcom/android/browser/BrowserSettings;->openInBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2925
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->createNewTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 2926
    .local v0, t:Lcom/android/browser/Tab;
    if-eqz v0, :cond_0

    .line 2927
    invoke-virtual {v0}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    .line 2928
    .local v1, view:Landroid/webkit/WebView;
    invoke-direct {p0, v1, p1}, Lcom/android/browser/BrowserActivity;->loadUrl(Landroid/webkit/WebView;Ljava/lang/String;)V

    .end local v1           #view:Landroid/webkit/WebView;
    :cond_0
    move-object v2, v0

    .line 2932
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
    .line 2897
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 2898
    .local v1, currentTab:Lcom/android/browser/Tab;
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4}, Lcom/android/browser/TabControl;->canCreateNewTab()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2899
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v0

    .line 2900
    .local v0, closeTab:Lcom/android/browser/Tab;
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->closeTab(Lcom/android/browser/Tab;)V

    .line 2901
    if-ne v0, v1, :cond_0

    .line 2902
    const/4 v1, 0x0

    .line 2905
    .end local v0           #closeTab:Lcom/android/browser/Tab;
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    iget-object v5, p1, Lcom/android/browser/BrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, p2, p3, v5}, Lcom/android/browser/TabControl;->createNewTab(ZLjava/lang/String;Ljava/lang/String;)Lcom/android/browser/Tab;

    move-result-object v2

    .line 2907
    .local v2, tab:Lcom/android/browser/Tab;
    invoke-virtual {v2}, Lcom/android/browser/Tab;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    .line 2910
    .local v3, webview:Landroid/webkit/WebView;
    if-eqz v1, :cond_1

    .line 2911
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 2915
    :cond_1
    iget-object v4, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v4, v2}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 2916
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 2917
    invoke-virtual {p1}, Lcom/android/browser/BrowserActivity$UrlData;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 2918
    invoke-direct {p0, v2, p1}, Lcom/android/browser/BrowserActivity;->loadUrlDataIn(Lcom/android/browser/Tab;Lcom/android/browser/BrowserActivity$UrlData;)V

    .line 2920
    :cond_2
    return-object v2
.end method

.method openTabToHomePage()Lcom/android/browser/Tab;
    .locals 3

    .prologue
    .line 1911
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
    .line 3437
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3439
    return-void
.end method

.method removeActiveTabPage(Z)V
    .locals 2
    .parameter "needToAttach"

    .prologue
    .line 1950
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mContentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mActiveTabsPage:Lcom/android/browser/ActiveTabsPage;

    .line 1952
    const v0, 0x7f0d00a2

    iput v0, p0, Lcom/android/browser/BrowserActivity;->mMenuState:I

    .line 1953
    if-eqz p1, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1956
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    .line 1957
    return-void
.end method

.method removeMessages(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "object"

    .prologue
    .line 3443
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3444
    return-void
.end method

.method resetTitleAndRevertLockIcon()V
    .locals 1

    .prologue
    .line 3090
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3098
    :cond_0
    :goto_0
    return-void

    .line 3095
    :cond_1
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->revertLockIcon()V

    .line 3096
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 3097
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    goto :goto_0
.end method

.method revertVoiceTitleBar()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1037
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1038
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1040
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1041
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method setFavicon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 3179
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3180
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 3181
    return-void
.end method

.method public setFindDialogText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-virtual {v0, p1}, Lcom/android/browser/FindDialog;->setText(Ljava/lang/String;)V

    .line 2523
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 4971
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 4972
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 4973
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 4975
    :cond_0
    return-void
.end method

.method setShouldShowErrorConsole(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 5297
    iget-boolean v2, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    if-ne p1, v2, :cond_1

    .line 5327
    :cond_0
    :goto_0
    return-void

    .line 5301
    :cond_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v1

    .line 5302
    .local v1, t:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    .line 5307
    iput-boolean p1, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    .line 5309
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/browser/Tab;->getErrorConsole(Z)Lcom/android/browser/ErrorConsoleView;

    move-result-object v0

    .line 5311
    .local v0, errorConsole:Lcom/android/browser/ErrorConsoleView;
    if-eqz p1, :cond_3

    .line 5313
    invoke-virtual {v0}, Lcom/android/browser/ErrorConsoleView;->numberOfErrors()I

    move-result v2

    if-lez v2, :cond_2

    .line 5314
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    .line 5320
    :goto_1
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 5316
    :cond_2
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/browser/ErrorConsoleView;->showConsole(I)V

    goto :goto_1

    .line 5324
    :cond_3
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mErrorConsoleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method setUrlTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "title"

    .prologue
    .line 3131
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mUrl:Ljava/lang/String;

    .line 3132
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mTitle:Ljava/lang/String;

    .line 3135
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/Tab;->isInVoiceSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3138
    :goto_0
    return-void

    .line 3136
    :cond_0
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 3137
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    goto :goto_0
.end method

.method shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, ""

    const-string v3, ";"

    .line 3971
    const-string v0, "wtai://wp/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3974
    const-string v0, "wtai://wp/mc;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3975
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "wtai://wp/mc;"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 3978
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 4068
    :goto_0
    return v0

    .line 3983
    :cond_0
    const-string v0, "wtai://wp/sd;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 3985
    goto :goto_0

    .line 3990
    :cond_1
    const-string v0, "wtai://wp/ap;"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3993
    const-string v0, "wtai://wp/ap;"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 3994
    const-string v1, ""

    .line 3995
    const-string v1, ""

    .line 3997
    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 4000
    const-string v1, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4001
    const-string v2, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 4002
    const-string v2, "%20"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4009
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4010
    const-string v3, "name"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4011
    const-string v0, "phone"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4012
    invoke-virtual {p0, v2}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 4014
    goto :goto_0

    :cond_2
    move-object v1, v0

    move-object v0, v6

    .line 4006
    goto :goto_1

    .line 4022
    :cond_3
    const-string v0, "about:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "javascript:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v4

    .line 4023
    goto :goto_0

    .line 4029
    :cond_5
    const/4 v0, 0x1

    :try_start_0
    invoke-static {p2, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4037
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_7

    .line 4038
    invoke-virtual {v0}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    .line 4039
    if-eqz v0, :cond_6

    .line 4040
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "market://search?q=pname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4042
    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4043
    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v0, v5

    .line 4044
    goto/16 :goto_0

    .line 4030
    :catch_0
    move-exception v0

    .line 4031
    const-string v1, "Browser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 4032
    goto/16 :goto_0

    :cond_6
    move v0, v4

    .line 4046
    goto/16 :goto_0

    .line 4052
    :cond_7
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4053
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4055
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {p0, v0, v1}, Lcom/android/browser/BrowserActivity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    move v0, v5

    .line 4056
    goto/16 :goto_0

    .line 4058
    :catch_1
    move-exception v0

    .line 4063
    :cond_8
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mMenuIsDown:Z

    if-eqz v0, :cond_9

    .line 4064
    invoke-virtual {p0, p2}, Lcom/android/browser/BrowserActivity;->openTab(Ljava/lang/String;)Lcom/android/browser/Tab;

    .line 4065
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    move v0, v5

    .line 4066
    goto/16 :goto_0

    :cond_9
    move v0, v4

    .line 4068
    goto/16 :goto_0
.end method

.method shouldShowErrorConsole()Z
    .locals 1

    .prologue
    .line 5330
    iget-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mShouldShowErrorConsole:Z

    return v0
.end method

.method public showFindDialog()V
    .locals 3

    .prologue
    .line 2506
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    if-nez v1, :cond_0

    .line 2507
    new-instance v1, Lcom/android/browser/FindDialog;

    invoke-direct {v1, p0}, Lcom/android/browser/FindDialog;-><init>(Lcom/android/browser/BrowserActivity;)V

    iput-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    .line 2510
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 2511
    .local v0, webview:Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    if-eqz v1, :cond_1

    .line 2513
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V

    .line 2514
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mBitmapWebView:Lcom/android/browser/BitmapWebView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/browser/BitmapWebView;->setVisible(I)V

    .line 2518
    :cond_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mFindDialog:Lcom/android/browser/FindDialog;

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->showDialog(Lcom/android/browser/WebDialog;)Landroid/webkit/WebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 2519
    return-void
.end method

.method showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 4884
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 4885
    const v1, 0x7f030019

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 4887
    if-eqz p5, :cond_0

    .line 4888
    const v0, 0x7f0d0059

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, p5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4890
    :cond_0
    if-eqz p6, :cond_1

    .line 4891
    const v0, 0x7f0d005b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    check-cast p5, Landroid/widget/EditText;

    invoke-virtual {p5, p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 4895
    :cond_1
    if-nez p4, :cond_3

    .line 4896
    const v0, 0x7f09000a

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 4900
    :goto_0
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 4901
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09000d

    new-instance v0, Lcom/android/browser/BrowserActivity$26;

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/BrowserActivity$26;-><init>(Lcom/android/browser/BrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v6, v7, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    new-instance v3, Lcom/android/browser/BrowserActivity$25;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/BrowserActivity$25;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$24;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/BrowserActivity$24;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 4939
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 4941
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4942
    if-eqz p7, :cond_2

    .line 4943
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 4947
    :goto_1
    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    .line 4948
    return-void

    .line 4945
    :cond_2
    const v1, 0x7f0d0059

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_1

    :cond_3
    move-object v0, p4

    goto :goto_0
.end method

.method showSSLCertificateOnError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f0d0081

    const v5, 0x7f030022

    .line 4717
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v2

    .line 4719
    if-nez v2, :cond_0

    .line 4806
    :goto_0
    return-void

    .line 4723
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 4725
    const v0, 0x7f0d006c

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4728
    const/4 v1, 0x3

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4729
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4731
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f090019

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 4735
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4736
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4738
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f09001a

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 4742
    :cond_2
    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4743
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 4745
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v4, 0x7f09001b

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 4749
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 4750
    invoke-virtual {v3, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 4752
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09001c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4756
    :cond_4
    iput-object p2, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 4757
    iput-object p1, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorView:Landroid/webkit/WebView;

    .line 4758
    iput-object p3, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 4759
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09001d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f02001e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090010

    new-instance v2, Lcom/android/browser/BrowserActivity$23;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$23;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090013

    new-instance v2, Lcom/android/browser/BrowserActivity$22;

    invoke-direct {v2, p0, p1}, Lcom/android/browser/BrowserActivity$22;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/BrowserActivity$21;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/browser/BrowserActivity$21;-><init>(Lcom/android/browser/BrowserActivity;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto/16 :goto_0
.end method

.method showTitleBarContextMenu()V
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0}, Lcom/android/browser/TitleBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1456
    :goto_0
    return-void

    .line 1452
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->hideFakeTitleBar()V

    .line 1453
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->closeOptionsMenu()V

    .line 1455
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->openContextMenu(Landroid/view/View;)V

    goto :goto_0
.end method

.method showVoiceSearchResults(Ljava/lang/String;)V
    .locals 8
    .parameter "result"

    .prologue
    const/4 v7, 0x0

    .line 656
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    sget-object v6, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3

    .line 658
    .local v3, client:Landroid/content/ContentProviderClient;
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    .line 659
    .local v4, prov:Landroid/content/ContentProvider;
    move-object v0, v4

    check-cast v0, Lcom/android/browser/BrowserProvider;

    move-object v1, v0

    .line 660
    .local v1, bp:Lcom/android/browser/BrowserProvider;
    iget-object v5, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v5}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/Tab;->getVoiceSearchResults()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/browser/BrowserProvider;->setQueryResults(Ljava/util/ArrayList;)V

    .line 661
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 663
    const-string v5, "browser-key"

    invoke-direct {p0, v5}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 665
    .local v2, bundle:Landroid/os/Bundle;
    const-string v5, "android.search.CONTEXT_IS_VOICE"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 666
    invoke-virtual {p0, p1, v7, v2, v7}, Lcom/android/browser/BrowserActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 667
    return-void
.end method

.method showVoiceTitleBar(Ljava/lang/String;)V
    .locals 2
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    .line 1030
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1031
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, v1}, Lcom/android/browser/TitleBar;->setInVoiceMode(Z)V

    .line 1033
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mFakeTitleBar:Lcom/android/browser/TitleBar;

    invoke-virtual {v0, p1}, Lcom/android/browser/TitleBar;->setDisplayTitle(Ljava/lang/String;)V

    .line 1035
    return-void
.end method

.method smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 5259
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 5260
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    move v1, v4

    .line 5262
    :goto_0
    sget-object v2, Lcom/android/browser/BrowserActivity;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 5263
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5265
    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 5266
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 5267
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5270
    :cond_0
    if-eqz v1, :cond_1

    .line 5271
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 5289
    :cond_1
    :goto_1
    return-object v0

    .line 5260
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 5275
    :cond_3
    if-nez v1, :cond_4

    .line 5276
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5277
    invoke-static {v0}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5284
    :cond_4
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Landroid/provider/Browser;->addSearchUrl(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 5289
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/browser/search/SearchEngine;->getSettingSearchEnginesUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1867
    const-string v0, "browser"

    const-string v1, "startSearch : Cancelled because custom view is on"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    :goto_0
    return-void

    .line 1871
    :cond_0
    if-nez p3, :cond_2

    .line 1872
    const-string v0, "browser-type"

    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->createGoogleSearchSourceBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 1875
    :goto_1
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/BrowserSettings;->getSearchEngine()Lcom/android/browser/search/SearchEngine;

    move-result-object v1

    .line 1876
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1877
    const-string v1, "android.search.DISABLE_VOICE_SEARCH"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1880
    :cond_1
    invoke-super {p0, p1, p2, v0, p4}, Landroid/app/Activity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    goto :goto_0

    :cond_2
    move-object v0, p3

    goto :goto_1
.end method

.method stopLoading()V
    .locals 3

    .prologue
    .line 3403
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/BrowserActivity;->mDidStopLoad:Z

    .line 3404
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 3405
    invoke-virtual {p0}, Lcom/android/browser/BrowserActivity;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 3406
    if-nez v0, :cond_0

    .line 3421
    :goto_0
    return-void

    .line 3409
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 3414
    iget-object v1, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 3417
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->cancelStopToast()V

    .line 3418
    const v0, 0x7f090027

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    .line 3420
    iget-object v0, p0, Lcom/android/browser/BrowserActivity;->mStopToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method switchToTab(I)Z
    .locals 3
    .parameter "index"

    .prologue
    .line 1893
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, p1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    .line 1894
    .local v1, tab:Lcom/android/browser/Tab;
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2}, Lcom/android/browser/TabControl;->getCurrentTab()Lcom/android/browser/Tab;

    move-result-object v0

    .line 1895
    .local v0, currentTab:Lcom/android/browser/Tab;
    if-eqz v1, :cond_0

    if-ne v1, v0, :cond_1

    .line 1896
    :cond_0
    const/4 v2, 0x0

    .line 1907
    :goto_0
    return v2

    .line 1898
    :cond_1
    if-eqz v0, :cond_2

    .line 1901
    invoke-direct {p0, v0}, Lcom/android/browser/BrowserActivity;->removeTabFromContentView(Lcom/android/browser/Tab;)V

    .line 1903
    :cond_2
    iget-object v2, p0, Lcom/android/browser/BrowserActivity;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v2, v1}, Lcom/android/browser/TabControl;->setCurrentTab(Lcom/android/browser/Tab;)Z

    .line 1904
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserActivity;->attachTabToContentView(Lcom/android/browser/Tab;)V

    .line 1905
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->resetTitleIconAndProgress()V

    .line 1906
    invoke-direct {p0}, Lcom/android/browser/BrowserActivity;->updateLockIconToLatest()V

    .line 1907
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public viewDownloads()V
    .locals 2

    .prologue
    .line 5132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_SEC_DOWNLOADS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5134
    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 5135
    return-void
.end method