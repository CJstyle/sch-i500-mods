.class Lcom/android/browser/PerfSite$1;
.super Landroid/os/Handler;
.source "PerformanceTester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/PerfSite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/PerfSite;


# direct methods
.method constructor <init>(Lcom/android/browser/PerfSite;)V
    .locals 0
    .parameter

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/browser/PerfSite$1;->this$0:Lcom/android/browser/PerfSite;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 378
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 387
    :goto_0
    return-void

    .line 382
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/PerfSite$1;->this$0:Lcom/android/browser/PerfSite;

    invoke-virtual {v0}, Lcom/android/browser/PerfSite;->loadSiteAfterResetBrowser()V

    goto :goto_0

    .line 378
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
