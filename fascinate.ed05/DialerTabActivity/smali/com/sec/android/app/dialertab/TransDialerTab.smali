.class public Lcom/sec/android/app/dialertab/TransDialerTab;
.super Lcom/sec/android/app/dialertab/DialerTabActivity;
.source "TransDialerTab.java"


# static fields
.field public static mTransDialerForceStop:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/dialertab/TransDialerTab;->mTransDialerForceStop:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/sec/android/app/dialertab/DialerTabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 35
    invoke-static {}, Lcom/sec/android/app/dialertab/DialerTabActivity;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/dialertab/TransDialerTab;->mTransDialerForceStop:Z

    .line 38
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/dialertab/DialerTabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/sec/android/app/dialertab/TransDialerTab;->finish()V

    .line 40
    return-void
.end method
