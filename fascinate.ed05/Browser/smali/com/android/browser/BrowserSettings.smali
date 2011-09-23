.class Lcom/android/browser/BrowserSettings;
.super Ljava/util/Observable;
.source "BrowserSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserSettings$Observer;
    }
.end annotation


# static fields
.field public static final DEFAULT_DOWNLOAD_EXTERNAL:I = 0x2

.field public static final DEFAULT_DOWNLOAD_INTERNAL:I = 0x1

.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final MAX_TEXTVIEW_LEN:I = 0x50

.field public static final PREF_CLEAR_CACHE:Ljava/lang/String; = "privacy_clear_cache"

.field public static final PREF_CLEAR_COOKIES:Ljava/lang/String; = "privacy_clear_cookies"

.field public static final PREF_CLEAR_FORM_DATA:Ljava/lang/String; = "privacy_clear_form_data"

.field public static final PREF_CLEAR_GEOLOCATION_ACCESS:Ljava/lang/String; = "privacy_clear_geolocation_access"

.field public static final PREF_CLEAR_HISTORY:Ljava/lang/String; = "privacy_clear_history"

.field public static final PREF_CLEAR_PASSWORDS:Ljava/lang/String; = "privacy_clear_passwords"

.field public static final PREF_DEBUG_SETTINGS:Ljava/lang/String; = "debug_menu"

.field public static final PREF_DEFAULT_DOWNLOAD_STORAGE:Ljava/lang/String; = "default_download_storage"

.field public static final PREF_DEFAULT_TEXT_ENCODING:Ljava/lang/String; = "default_text_encoding"

.field public static final PREF_DEFAULT_ZOOM:Ljava/lang/String; = "default_zoom"

.field public static final PREF_DOWNLOAD_DEFAULT_STORAGE:Ljava/lang/String; = "download_default_storyage"

.field public static final PREF_EXTRAS_RESET_DEFAULTS:Ljava/lang/String; = "reset_default_preferences"

.field public static final PREF_HOMEPAGE:Ljava/lang/String; = "homepage"

.field public static final PREF_SEARCH_ENGINE:Ljava/lang/String; = "search_engine"

.field public static final PREF_TEXT_SIZE:Ljava/lang/String; = "text_size"

.field public static final PREF_WEBSITE_SETTINGS:Ljava/lang/String; = "website_settings"

.field private static final TAG:Ljava/lang/String; = "BrowserSettings"

.field private static defaultFixedFontSize:I

.field private static defaultFontSize:I

.field private static minimumFontSize:I

.field private static minimumLogicalFontSize:I

.field private static pageCacheCapacity:I

.field private static sSingleton:Lcom/android/browser/BrowserSettings;

.field private static textSize:Landroid/webkit/WebSettings$TextSize;

.field private static zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;


# instance fields
.field private appCacheEnabled:Z

.field private appCacheMaxSize:J

.field private appCachePath:Ljava/lang/String;

.field private autoFitPage:Z

.field private bDownloadInternalMemory:Z

.field private brightness:I

.field private databaseEnabled:Z

.field private databasePath:Ljava/lang/String;

.field private defaultTextEncodingName:Ljava/lang/String;

.field private domStorageEnabled:Z

.field private geolocationDatabasePath:Ljava/lang/String;

.field private geolocationEnabled:Z

.field private homeUrl:Ljava/lang/String;

.field private javaScriptCanOpenWindowsAutomatically:Z

.field private javaScriptEnabled:Z

.field private jsFlags:Ljava/lang/String;

.field private landscapeOnly:Z

.field public layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private lightTouch:Z

.field private loadsImagesAutomatically:Z

.field private loadsPageInOverviewMode:Z

.field private mTabControl:Lcom/android/browser/TabControl;

.field private mWebSettingsToObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/webkit/WebSettings;",
            "Lcom/android/browser/BrowserSettings$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private navDump:Z

.field private openInBackground:Z

.field private pluginState:Landroid/webkit/WebSettings$PluginState;

.field private rememberPasswords:Z

.field private saveFormData:Z

.field private searchEngine:Lcom/android/browser/search/SearchEngine;

.field private showConsole:Z

.field private showDebugSettings:Z

.field private showSecurityWarnings:Z

.field private tracing:Z

.field private useWideViewPort:Z

.field private userAgent:I

.field private webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

.field private workersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 122
    sput v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    .line 123
    sput v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    .line 124
    const/16 v0, 0x10

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    .line 125
    const/16 v0, 0xd

    sput v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    .line 126
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    sput-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 128
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    sput-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, ""

    .line 662
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 82
    const-string v0, ""

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 95
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 101
    const-string v0, ""

    iput-object v4, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 106
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 108
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 109
    iput v2, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 110
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    .line 111
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 112
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 113
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 120
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    .line 663
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 664
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/BrowserSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFixedFontSize:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method static synthetic access$1200()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method static synthetic access$1300()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    return v0
.end method

.method static synthetic access$1800()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/browser/BrowserSettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/browser/BrowserSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/BrowserSettings;)Landroid/webkit/WebSettings$PluginState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/BrowserSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/browser/BrowserSettings;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/browser/BrowserSettings;->minimumFontSize:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/browser/BrowserSettings;->minimumLogicalFontSize:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/android/browser/BrowserSettings;->defaultFontSize:I

    return v0
.end method

.method private getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    const-string v3, "{CID}"

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 655
    const-string v1, "{CID}"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 658
    :cond_0
    return-object v0
.end method

.method static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 538
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    if-nez v0, :cond_0

    .line 539
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0}, Lcom/android/browser/BrowserSettings;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    .line 541
    :cond_0
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method private maybeDisableWebsiteSettings(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 603
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, v0

    .line 604
    .local v1, activity:Landroid/preference/PreferenceActivity;
    const-string v3, "website_settings"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 606
    .local v2, screen:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 607
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v3

    new-instance v4, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 615
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v3

    new-instance v4, Lcom/android/browser/BrowserSettings$2;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/BrowserSettings$2;-><init>(Lcom/android/browser/BrowserSettings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 622
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 671
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 672
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 673
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 674
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 675
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 676
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 677
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 678
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 679
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 680
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    .line 681
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 682
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 684
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 685
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 686
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 687
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 688
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 689
    return-void
.end method

.method private updateTabControlSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setShouldShowErrorConsole(Z)V

    .line 597
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setRequestedOrientation(I)V

    .line 600
    return-void

    :cond_0
    move v1, v2

    .line 595
    goto :goto_0

    .line 597
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;
    .locals 3
    .parameter "s"

    .prologue
    .line 511
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserSettings$Observer;

    .line 512
    .local v1, old:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v1, :cond_0

    .line 513
    invoke-super {p0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 515
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserSettings$Observer;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserSettings$Observer;-><init>(Landroid/webkit/WebSettings;)V

    .line 516
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 518
    return-object v0
.end method

.method clearCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 561
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 562
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v1, :cond_0

    .line 563
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 564
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 565
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 568
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 571
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 572
    return-void
.end method

.method clearDatabases(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 625
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 626
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->maybeDisableWebsiteSettings(Landroid/content/Context;)V

    .line 627
    return-void
.end method

.method clearFormData(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 581
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 582
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v0, :cond_0

    .line 583
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 585
    :cond_0
    return-void
.end method

.method clearHistory(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 576
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 577
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 578
    return-void
.end method

.method clearLocationAccess(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 630
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 631
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->maybeDisableWebsiteSettings(Landroid/content/Context;)V

    .line 632
    return-void
.end method

.method clearPasswords(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 588
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 589
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 590
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 591
    return-void
.end method

.method public deleteObserver(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 526
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserSettings$Observer;

    .line 527
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 531
    :cond_0
    return-void
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    return v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 470
    sget-object v0, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 466
    sget-object v0, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    return-object v0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public isDownloadInternalMemory()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    return v0
.end method

.method public isLightTouch()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    return v0
.end method

.method public isNavDump()Z
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    return v0
.end method

.method public loadFromDb(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v6, 0x0

    const-string v7, ""

    .line 260
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 263
    .local v1, p:Landroid/content/SharedPreferences;
    const-string v2, "appcache"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    .line 265
    new-instance v2, Lcom/android/browser/WebStorageSizeManager;

    new-instance v3, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/browser/WebStorageSizeManager;-><init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    .line 269
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v2}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 271
    const-string v2, "databases"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    .line 273
    const-string v2, "geolocation"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    .line 275
    const-string v2, "homepage"

    const-string v3, ""

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v7, :cond_0

    .line 277
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 283
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 285
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 286
    const/4 v2, 0x5

    sput v2, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    .line 295
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 296
    return-void

    .line 288
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 1

    .prologue
    .line 474
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    return v0
.end method

.method resetDefaultPreferences(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 636
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 638
    .local v1, p:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 639
    const v2, 0x7f050002

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 642
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 643
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "landscape_only"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 644
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 647
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 649
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v2}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 650
    return-void
.end method

.method public setBrightness(I)V
    .locals 0
    .parameter "newBrightness"

    .prologue
    .line 422
    iput p1, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    .line 423
    return-void
.end method

.method public setDownloadDefaultStorage(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "storage_type"

    .prologue
    const/4 v2, 0x1

    .line 454
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 455
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "default_download_storage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 457
    if-ne p2, v2, :cond_0

    .line 458
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    goto :goto_0
.end method

.method public setHomePage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "url"

    .prologue
    .line 446
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 448
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 449
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 450
    iput-object p2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 451
    return-void
.end method

.method setTabControl(Lcom/android/browser/TabControl;)V
    .locals 0
    .parameter "tabControl"

    .prologue
    .line 548
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    .line 549
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    .line 550
    return-void
.end method

.method public showDebugSettings()Z
    .locals 1

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    return v0
.end method

.method public showSecurityWarnings()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    return v0
.end method

.method syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 12
    .parameter "ctx"
    .parameter "p"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 300
    const-string v7, "homepage"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 302
    const-string v7, "search_engine"

    const-string v8, "google"

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, searchEngineName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v7}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 305
    :cond_0
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v7, :cond_2

    .line 306
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v7}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 311
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 310
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 314
    .end local v1           #i:I
    :cond_1
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v7}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 316
    :cond_2
    invoke-static {p1, v5}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    .line 318
    :cond_3
    const-string v7, "BrowserSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Selected search engine: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const-string v7, "load_images"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 322
    const-string v7, "enable_javascript"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 324
    const-string v7, "plugin_state"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v8}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 326
    const-string v7, "brightness"

    iget v8, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    .line 327
    const-string v7, "block_popup_windows"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    if-nez v8, :cond_7

    move v8, v11

    :goto_1
    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_8

    move v7, v11

    :goto_2
    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 330
    const-string v7, "show_security_warnings"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 332
    const-string v7, "remember_passwords"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 334
    const-string v7, "save_formdata"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 336
    const-string v7, "accept_cookies"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 338
    .local v0, accept_cookies:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 339
    const-string v7, "open_in_background"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 340
    const-string v7, "text_size"

    sget-object v8, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v8}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v7

    sput-object v7, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 342
    const-string v7, "default_zoom"

    sget-object v8, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v8}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v7

    sput-object v7, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    .line 344
    const-string v7, "autofit_pages"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 345
    const-string v7, "load_page"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 347
    const-string v7, "landscape_only"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 349
    .local v3, landscapeOnlyTemp:Z
    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    if-eq v3, v7, :cond_4

    .line 350
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    .line 352
    :cond_4
    iput-boolean v11, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 353
    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    if-eqz v7, :cond_9

    .line 354
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 358
    :goto_3
    const-string v7, "default_text_encoding"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 362
    const-string v7, "debug_menu"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 365
    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v7, :cond_5

    .line 366
    const-string v7, "small_screen"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v9, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v8, v9, :cond_a

    move v8, v11

    :goto_4
    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 369
    .local v6, small_screen:Z
    if-eqz v6, :cond_b

    .line 370
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 381
    :goto_5
    const-string v7, "wide_viewport"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 382
    const-string v7, "enable_tracing"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 383
    const-string v7, "enable_light_touch"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 384
    const-string v7, "enable_nav_dump"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 385
    const-string v7, "user_agent"

    const-string v8, "0"

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 389
    .end local v6           #small_screen:Z
    :cond_5
    const-string v7, "js_engine_flags"

    const-string v8, ""

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 396
    const-string v7, "javascript_console"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 399
    const-string v7, "enable_appcache"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 400
    const-string v7, "enable_database"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 401
    const-string v7, "enable_domstorage"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 402
    const-string v7, "enable_geolocation"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 403
    const-string v7, "enable_workers"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 406
    const/4 v2, 0x0

    .line 407
    .local v2, iDefaultStorageType:I
    const-string v7, "default_download_storage"

    invoke-interface {p2, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 408
    const/4 v7, 0x2

    if-eq v2, v7, :cond_6

    .line 411
    :cond_6
    iput-boolean v10, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 414
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 415
    return-void

    .end local v0           #accept_cookies:Z
    .end local v2           #iDefaultStorageType:I
    .end local v3           #landscapeOnlyTemp:Z
    :cond_7
    move v8, v10

    .line 327
    goto/16 :goto_1

    :cond_8
    move v7, v10

    goto/16 :goto_2

    .line 356
    .restart local v0       #accept_cookies:Z
    .restart local v3       #landscapeOnlyTemp:Z
    :cond_9
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_3

    :cond_a
    move v8, v10

    .line 366
    goto/16 :goto_4

    .line 372
    .restart local v6       #small_screen:Z
    :cond_b
    const-string v7, "normal_layout"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v9, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v8, v9, :cond_c

    move v8, v11

    :goto_6
    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 374
    .local v4, normal_layout:Z
    if-eqz v4, :cond_d

    .line 375
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_5

    .end local v4           #normal_layout:Z
    :cond_c
    move v8, v10

    .line 372
    goto :goto_6

    .line 377
    .restart local v4       #normal_layout:Z
    :cond_d
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_5
.end method

.method public toggleDebugSettings()V
    .locals 1

    .prologue
    .line 498
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 499
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 500
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 501
    return-void

    .line 498
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update()V
    .locals 0

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->setChanged()V

    .line 557
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->notifyObservers()V

    .line 558
    return-void
.end method
