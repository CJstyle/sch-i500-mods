.class public Lcom/android/browser/BrowserHomepageSetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BrowserHomepageSetReceiver.java"


# static fields
.field public static final CSC_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.CSC_BROWSER_HOMEPAGE"

.field public static final CSC_SET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

.field public static final OMADM_GET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.OMADM_BROWSER_GET_HOMEPAGE"

.field public static final OMADM_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.OMADM_BROWSER_HOMEPAGE"

.field public static final OMADM_SET_HOMEPAGE_URL:Ljava/lang/String; = "android.intent.action.OMADM_BROWSER_SET_HOMEPAGE"


# instance fields
.field tmpSettings:Lcom/android/browser/BrowserSettings;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v10, "http://"

    const-string v9, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    const-string v8, "homepage"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 48
    .local v2, intentAction:Ljava/lang/String;
    const-string v6, "android.intent.action.OMADM_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 52
    :cond_0
    const-string v6, "homepage"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    .local v5, rcvdUrl:Ljava/lang/String;
    const-string v6, "http://"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "https://"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 73
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 74
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6, p1, v5}, Lcom/android/browser/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    const-string v6, "android.intent.action.CSC_BROWSER_SET_HOMEPAGE"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 81
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.CSC_BROWSER_HOMEPAGE"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    .local v4, it:Landroid/content/Intent;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 83
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, curUrl:Ljava/lang/String;
    const-string v6, "homepage"

    invoke-virtual {v4, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    invoke-virtual {p1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 103
    .end local v0           #curUrl:Ljava/lang/String;
    .end local v4           #it:Landroid/content/Intent;
    .end local v5           #rcvdUrl:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 60
    .restart local v5       #rcvdUrl:Ljava/lang/String;
    :cond_3
    const-string v6, "http:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "https:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 61
    :cond_4
    const-string v6, "http:/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "https:/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 62
    :cond_5
    const-string v6, "/"

    const-string v7, "//"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 64
    :cond_6
    const-string v6, ":"

    const-string v7, "://"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 67
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 89
    .end local v5           #rcvdUrl:Ljava/lang/String;
    :cond_8
    const-string v6, "android.intent.action.OMADM_BROWSER_GET_HOMEPAGE"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 91
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.OMADM_BROWSER_HOMEPAGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, intentToSend:Landroid/content/Intent;
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    .line 94
    iget-object v6, p0, Lcom/android/browser/BrowserHomepageSetReceiver;->tmpSettings:Lcom/android/browser/BrowserSettings;

    invoke-virtual {v6}, Lcom/android/browser/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, currentHomepage:Ljava/lang/String;
    const-string v6, "homepage"

    invoke-virtual {v3, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 101
    .end local v1           #currentHomepage:Ljava/lang/String;
    .end local v3           #intentToSend:Landroid/content/Intent;
    :cond_9
    const-string v6, "BrowserReceiver"

    const-string v7, " ** onReceive : Wrong intents are received.."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
