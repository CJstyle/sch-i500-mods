.class public Lcom/android/browser/widget/BookmarkWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "BookmarkWidgetProvider.java"


# static fields
.field static final TAG:Ljava/lang/String; = "BookmarkWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 47
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 42
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4
    .parameter "context"
    .parameter "mngr"
    .parameter "ids"

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.browser.widget.UPDATE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {v0, v1, v2, p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 37
    return-void
.end method
