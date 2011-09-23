.class Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter$ChangeObserver;
.super Landroid/database/ContentObserver;
.source "BrowserRssNewlinkPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeObserver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;


# direct methods
.method public constructor <init>(Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter$ChangeObserver;->this$1:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 164
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter$ChangeObserver;->this$1:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    invoke-virtual {v0}, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;->refreshData()V

    .line 174
    return-void
.end method
