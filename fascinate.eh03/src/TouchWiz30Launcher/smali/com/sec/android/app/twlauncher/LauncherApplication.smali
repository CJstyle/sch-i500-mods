.class public Lcom/sec/android/app/twlauncher/LauncherApplication;
.super Landroid/app/Application;
.source "LauncherApplication.java"


# instance fields
.field public mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

.field private final mFavoritesObserver:Landroid/database/ContentObserver;

.field public mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field public mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

.field mSystemShuttingDown:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 92
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherApplication$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/LauncherApplication$2;-><init>(Lcom/sec/android/app/twlauncher/LauncherApplication;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    return-void
.end method


# virtual methods
.method getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    return-object v0
.end method

.method getIconCache()Lcom/sec/android/app/twlauncher/IconCache;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    return-object v0
.end method

.method getModel()Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 44
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v2

    const-wide/32 v3, 0x800000

    invoke-virtual {v2, v3, v4}, Ldalvik/system/VMRuntime;->setMinimumHeapSize(J)J

    .line 46
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 48
    new-instance v2, Lcom/sec/android/app/twlauncher/IconCache;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/IconCache;-><init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 49
    new-instance v2, Lcom/sec/android/app/twlauncher/BadgeCache;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/BadgeCache;-><init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    .line 50
    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherModel;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mBadgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;-><init>(Lcom/sec/android/app/twlauncher/LauncherApplication;Lcom/sec/android/app/twlauncher/IconCache;Lcom/sec/android/app/twlauncher/BadgeCache;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 57
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 59
    .restart local v0       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 65
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v0       #filter:Landroid/content/IntentFilter;
    new-instance v2, Lcom/sec/android/app/twlauncher/LauncherApplication$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/LauncherApplication$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 83
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/LauncherApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 85
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mFavoritesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)Lcom/sec/android/app/twlauncher/LauncherModel;
    .locals 1
    .parameter "launcher"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel;->initialize(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherApplication;->mModel:Lcom/sec/android/app/twlauncher/LauncherModel;

    return-object v0
.end method
