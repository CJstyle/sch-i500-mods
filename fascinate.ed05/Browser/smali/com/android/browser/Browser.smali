.class public Lcom/android/browser/Browser;
.super Landroid/app/Application;
.source "Browser.java"


# static fields
.field static final DEBUG:Z = false

.field static final LOGD_ENABLED:Z = true

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field static final LOGV_ENABLED:Z = false

.field private static final TARGET_HEAP_UTILIZATION:F = 0.75f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 48
    return-void
.end method

.method static createBrowserViewIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const/high16 v1, 0x3f40

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 57
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 59
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 60
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/BrowserSettings;->loadFromDb(Landroid/content/Context;)V

    .line 61
    return-void
.end method
