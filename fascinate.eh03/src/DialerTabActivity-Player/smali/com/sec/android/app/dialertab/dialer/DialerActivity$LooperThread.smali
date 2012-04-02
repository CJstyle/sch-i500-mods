.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;
.super Landroid/os/HandlerThread;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LooperThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "name"

    .prologue
    .line 4242
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    .line 4243
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 4244
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .locals 1

    .prologue
    .line 4251
    new-instance v0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;)V

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2302(Landroid/os/Handler;)Landroid/os/Handler;

    .line 4328
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 4329
    return-void
.end method

.method public quit()Z
    .locals 1

    .prologue
    .line 4332
    invoke-super {p0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    return v0
.end method
