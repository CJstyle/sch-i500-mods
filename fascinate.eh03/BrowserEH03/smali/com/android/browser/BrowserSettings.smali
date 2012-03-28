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

    .line 680
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

    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    .line 681
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 682
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

    .line 667
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, url:Ljava/lang/String;
    const-string v1, "{CID}"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 669
    const-string v1, "{CID}"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/BrowserProvider;->getClientId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_0
    const-string v1, "SCH-I500"

    const-string v2, "SC-02B"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 674
    const-string v0, "http://www.dcm-gate.com"

    .line 676
    :cond_1
    return-object v0
.end method

.method static getInstance()Lcom/android/browser/BrowserSettings;
    .locals 1

    .prologue
    .line 549
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    if-nez v0, :cond_0

    .line 550
    new-instance v0, Lcom/android/browser/BrowserSettings;

    invoke-direct {v0}, Lcom/android/browser/BrowserSettings;-><init>()V

    sput-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    .line 552
    :cond_0
    sget-object v0, Lcom/android/browser/BrowserSettings;->sSingleton:Lcom/android/browser/BrowserSettings;

    return-object v0
.end method

.method private maybeDisableWebsiteSettings(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 617
    move-object v0, p1

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v1, v0

    .line 618
    .local v1, activity:Landroid/preference/PreferenceActivity;
    const-string v3, "website_settings"

    invoke-virtual {v1, v3}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 620
    .local v2, screen:Landroid/preference/PreferenceScreen;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 621
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v3

    new-instance v4, Lcom/android/browser/BrowserSettings$1;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/BrowserSettings$1;-><init>(Lcom/android/browser/BrowserSettings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 629
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v3

    new-instance v4, Lcom/android/browser/BrowserSettings$2;

    invoke-direct {v4, p0, v2}, Lcom/android/browser/BrowserSettings$2;-><init>(Lcom/android/browser/BrowserSettings;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v3, v4}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 636
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 689
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 690
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 691
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v0, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 692
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    .line 693
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 695
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 696
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 697
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 698
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    .line 699
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 700
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 702
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 703
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 704
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 705
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 706
    iput-boolean v1, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 707
    return-void
.end method

.method private updateTabControlSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 609
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

    .line 611
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v0}, Lcom/android/browser/TabControl;->getBrowserActivity()Lcom/android/browser/BrowserActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserActivity;->setRequestedOrientation(I)V

    .line 614
    return-void

    :cond_0
    move v1, v2

    .line 609
    goto :goto_0

    .line 611
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addObserver(Landroid/webkit/WebSettings;)Lcom/android/browser/BrowserSettings$Observer;
    .locals 3
    .parameter "s"

    .prologue
    .line 522
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/BrowserSettings$Observer;

    .line 523
    .local v1, old:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v1, :cond_0

    .line 524
    invoke-super {p0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 526
    :cond_0
    new-instance v0, Lcom/android/browser/BrowserSettings$Observer;

    invoke-direct {v0, p1}, Lcom/android/browser/BrowserSettings$Observer;-><init>(Landroid/webkit/WebSettings;)V

    .line 527
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-super {p0, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 529
    return-object v0
.end method

.method clearCache(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 572
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    .line 573
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v1, :cond_0

    .line 574
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 575
    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 579
    .end local v0           #current:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 582
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 583
    return-void
.end method

.method clearDatabases(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 639
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 640
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->maybeDisableWebsiteSettings(Landroid/content/Context;)V

    .line 641
    return-void
.end method

.method clearFormData(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 592
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    .line 593
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    if-eqz v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v1}, Lcom/android/browser/TabControl;->getCurrentTopWebView()Landroid/webkit/WebView;

    move-result-object v0

    .line 595
    .local v0, currentTopView:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 596
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    .line 599
    .end local v0           #currentTopView:Landroid/webkit/WebView;
    :cond_0
    return-void
.end method

.method clearHistory(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 586
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 587
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Landroid/provider/Browser;->clearHistory(Landroid/content/ContentResolver;)V

    .line 588
    invoke-static {v0}, Landroid/provider/Browser;->clearSearches(Landroid/content/ContentResolver;)V

    .line 589
    return-void
.end method

.method clearLocationAccess(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 644
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->clearAll()V

    .line 645
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->maybeDisableWebsiteSettings(Landroid/content/Context;)V

    .line 646
    return-void
.end method

.method clearPasswords(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 602
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    .line 603
    .local v0, db:Landroid/webkit/WebViewDatabase;
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    .line 604
    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    .line 605
    return-void
.end method

.method public deleteObserver(Landroid/webkit/WebSettings;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/BrowserSettings$Observer;

    .line 538
    .local v0, o:Lcom/android/browser/BrowserSettings$Observer;
    if-eqz v0, :cond_0

    .line 539
    iget-object v1, p0, Lcom/android/browser/BrowserSettings;->mWebSettingsToObservers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-super {p0, v0}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 542
    :cond_0
    return-void
.end method

.method public getBrightness()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    return v0
.end method

.method public getHomePage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJsFlags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchEngine()Lcom/android/browser/search/SearchEngine;
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    return-object v0
.end method

.method public getWebStorageSizeManager()Lcom/android/browser/WebStorageSizeManager;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    return-object v0
.end method

.method public isDownloadInternalMemory()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    return v0
.end method

.method public isNavDump()Z
    .locals 1

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    return v0
.end method

.method public isTracing()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    return v0
.end method

.method public loadFromDb(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v6, 0x0

    const-string v7, ""

    .line 269
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 272
    .local v1, p:Landroid/content/SharedPreferences;
    const-string v2, "appcache"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    .line 274
    new-instance v2, Lcom/android/browser/WebStorageSizeManager;

    new-instance v3, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;

    iget-object v4, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/android/browser/WebStorageSizeManager$StatFsDiskInfo;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;

    iget-object v5, p0, Lcom/android/browser/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-direct {v4, v5}, Lcom/android/browser/WebStorageSizeManager$WebKitAppCacheInfo;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p1, v3, v4}, Lcom/android/browser/WebStorageSizeManager;-><init>(Landroid/content/Context;Lcom/android/browser/WebStorageSizeManager$DiskInfo;Lcom/android/browser/WebStorageSizeManager$AppCacheInfo;)V

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    .line 278
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v2}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 280
    const-string v2, "databases"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->databasePath:Ljava/lang/String;

    .line 282
    const-string v2, "geolocation"

    invoke-virtual {p1, v2, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    .line 284
    const-string v2, "homepage"

    const-string v3, ""

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-ne v2, v7, :cond_0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 294
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_1

    .line 295
    const/4 v2, 0x5

    sput v2, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    .line 304
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 305
    return-void

    .line 297
    :cond_1
    const/4 v2, 0x1

    sput v2, Lcom/android/browser/BrowserSettings;->pageCacheCapacity:I

    goto :goto_0
.end method

.method public openInBackground()Z
    .locals 1

    .prologue
    .line 485
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    return v0
.end method

.method resetDefaultPreferences(Landroid/content/Context;)V
    .locals 4
    .parameter "ctx"

    .prologue
    .line 649
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->reset()V

    .line 650
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 652
    .local v1, p:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 653
    const v2, 0x7f050002

    const/4 v3, 0x1

    invoke-static {p1, v2, v3}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 656
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 657
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "landscape_only"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 661
    invoke-direct {p0, p1}, Lcom/android/browser/BrowserSettings;->getFactoryResetHomeUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 663
    iget-object v2, p0, Lcom/android/browser/BrowserSettings;->webStorageSizeManager:Lcom/android/browser/WebStorageSizeManager;

    invoke-virtual {v2}, Lcom/android/browser/WebStorageSizeManager;->getAppCacheMaxSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/BrowserSettings;->appCacheMaxSize:J

    .line 664
    return-void
.end method

.method public setBrightness(I)V
    .locals 0
    .parameter "newBrightness"

    .prologue
    .line 433
    iput p1, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    .line 434
    return-void
.end method

.method public setDownloadDefaultStorage(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "storage_type"

    .prologue
    const/4 v2, 0x1

    .line 465
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "default_download_storage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 468
    if-ne p2, v2, :cond_0

    .line 469
    iput-boolean v2, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 474
    :goto_0
    return-void

    .line 472
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
    .line 457
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 459
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v1, "homepage"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 460
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 461
    iput-object p2, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 462
    return-void
.end method

.method setTabControl(Lcom/android/browser/TabControl;)V
    .locals 0
    .parameter "tabControl"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    .line 560
    invoke-direct {p0}, Lcom/android/browser/BrowserSettings;->updateTabControlSettings()V

    .line 561
    return-void
.end method

.method public showDebugSettings()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    return v0
.end method

.method public showSecurityWarnings()Z
    .locals 1

    .prologue
    .line 489
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

    .line 309
    const-string v7, "homepage"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->homeUrl:Ljava/lang/String;

    .line 311
    const-string v7, "search_engine"

    const-string v8, "google"			# djp952: was "bing"

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 313
    .local v5, searchEngineName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v7}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 314
    :cond_0
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    if-eqz v7, :cond_2

    .line 315
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v7}, Lcom/android/browser/search/SearchEngine;->supportsVoiceSearch()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 319
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7}, Lcom/android/browser/TabControl;->getTabCount()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 320
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->mTabControl:Lcom/android/browser/TabControl;

    invoke-virtual {v7, v1}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/Tab;->revertVoiceSearchMode()V

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 323
    .end local v1           #i:I
    :cond_1
    iget-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    invoke-interface {v7}, Lcom/android/browser/search/SearchEngine;->close()V

    .line 325
    :cond_2
    invoke-static {p1, v5}, Lcom/android/browser/search/SearchEngines;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->searchEngine:Lcom/android/browser/search/SearchEngine;

    .line 327
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

    .line 329
    const-string v7, "load_images"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->loadsImagesAutomatically:Z

    .line 331
    const-string v7, "enable_javascript"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->javaScriptEnabled:Z

    .line 333
    const-string v7, "plugin_state"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {v8}, Landroid/webkit/WebSettings$PluginState;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebSettings$PluginState;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$PluginState;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->pluginState:Landroid/webkit/WebSettings$PluginState;

    .line 335
    const-string v7, "brightness"

    iget v8, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/android/browser/BrowserSettings;->brightness:I

    .line 336
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

    .line 339
    const-string v7, "show_security_warnings"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showSecurityWarnings:Z

    .line 341
    const-string v7, "remember_passwords"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->rememberPasswords:Z

    .line 343
    const-string v7, "save_formdata"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->saveFormData:Z

    .line 345
    const-string v7, "accept_cookies"

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 347
    .local v0, accept_cookies:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 348
    const-string v7, "open_in_background"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->openInBackground:Z

    .line 349
    const-string v7, "text_size"

    sget-object v8, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v8}, Landroid/webkit/WebSettings$TextSize;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebSettings$TextSize;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$TextSize;

    move-result-object v7

    sput-object v7, Lcom/android/browser/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    .line 351
    const-string v7, "default_zoom"

    sget-object v8, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v8}, Landroid/webkit/WebSettings$ZoomDensity;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/webkit/WebSettings$ZoomDensity;->valueOf(Ljava/lang/String;)Landroid/webkit/WebSettings$ZoomDensity;

    move-result-object v7

    sput-object v7, Lcom/android/browser/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    .line 353
    const-string v7, "autofit_pages"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    .line 354
    const-string v7, "load_page"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->loadsPageInOverviewMode:Z

    .line 356
    const-string v7, "landscape_only"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 358
    .local v3, landscapeOnlyTemp:Z
    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    if-eq v3, v7, :cond_4

    .line 359
    iput-boolean v3, p0, Lcom/android/browser/BrowserSettings;->landscapeOnly:Z

    .line 361
    :cond_4
    iput-boolean v11, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 362
    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->autoFitPage:Z

    if-eqz v7, :cond_9

    .line 363
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 367
    :goto_3
    const-string v7, "default_text_encoding"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    .line 371
    const-string v7, "debug_menu"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 374
    iget-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-eqz v7, :cond_5

    .line 375
    const-string v7, "small_screen"

    iget-object v8, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    sget-object v9, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v8, v9, :cond_a

    move v8, v11

    :goto_4
    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 378
    .local v6, small_screen:Z
    if-eqz v6, :cond_b

    .line 379
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 390
    :goto_5
    const-string v7, "wide_viewport"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->useWideViewPort:Z

    .line 391
    const-string v7, "enable_tracing"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->tracing:Z

    .line 392
    const-string v7, "enable_light_touch"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->lightTouch:Z

    .line 393
    const-string v7, "enable_nav_dump"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 396
    .end local v6           #small_screen:Z
    :cond_5
    const-string v7, "user_agent"

    const-string v8, "0"

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/browser/BrowserSettings;->userAgent:I

    .line 400
    const-string v7, "js_engine_flags"

    const-string v8, ""

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->jsFlags:Ljava/lang/String;

    .line 407
    const-string v7, "javascript_console"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->showConsole:Z

    .line 410
    const-string v7, "enable_appcache"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->appCacheEnabled:Z

    .line 411
    const-string v7, "enable_database"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->databaseEnabled:Z

    .line 412
    const-string v7, "enable_domstorage"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->domStorageEnabled:Z

    .line 413
    const-string v7, "enable_geolocation"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->geolocationEnabled:Z

    .line 414
    const-string v7, "enable_workers"

    iget-boolean v8, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    invoke-interface {p2, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/browser/BrowserSettings;->workersEnabled:Z

    .line 417
    const/4 v2, 0x0

    .line 418
    .local v2, iDefaultStorageType:I
    const-string v7, "default_download_storage"

    invoke-interface {p2, v7, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 419
    const/4 v7, 0x2

    if-eq v2, v7, :cond_6

    .line 422
    :cond_6
    iput-boolean v10, p0, Lcom/android/browser/BrowserSettings;->bDownloadInternalMemory:Z

    .line 425
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 426
    return-void

    .end local v0           #accept_cookies:Z
    .end local v2           #iDefaultStorageType:I
    .end local v3           #landscapeOnlyTemp:Z
    :cond_7
    move v8, v10

    .line 336
    goto/16 :goto_1

    :cond_8
    move v7, v10

    goto/16 :goto_2

    .line 365
    .restart local v0       #accept_cookies:Z
    .restart local v3       #landscapeOnlyTemp:Z
    :cond_9
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_3

    :cond_a
    move v8, v10

    .line 375
    goto/16 :goto_4

    .line 381
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

    .line 383
    .local v4, normal_layout:Z
    if-eqz v4, :cond_d

    .line 384
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_5

    .end local v4           #normal_layout:Z
    :cond_c
    move v8, v10

    .line 381
    goto :goto_6

    .line 386
    .restart local v4       #normal_layout:Z
    :cond_d
    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v7, p0, Lcom/android/browser/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    goto/16 :goto_5
.end method

.method public toggleDebugSettings()V
    .locals 1

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    .line 510
    iget-boolean v0, p0, Lcom/android/browser/BrowserSettings;->showDebugSettings:Z

    iput-boolean v0, p0, Lcom/android/browser/BrowserSettings;->navDump:Z

    .line 511
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->update()V

    .line 512
    return-void

    .line 509
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method update()V
    .locals 0

    .prologue
    .line 567
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->setChanged()V

    .line 568
    invoke-virtual {p0}, Lcom/android/browser/BrowserSettings;->notifyObservers()V

    .line 569
    return-void
.end method
