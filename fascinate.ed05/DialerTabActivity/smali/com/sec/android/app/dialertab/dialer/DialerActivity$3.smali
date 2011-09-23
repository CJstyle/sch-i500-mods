.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;
.super Ljava/lang/Object;
.source "DialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1214
    const-string v0, "DialerActivity"

    const-string v1, "make thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$3;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$500(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)V

    .line 1216
    return-void
.end method
