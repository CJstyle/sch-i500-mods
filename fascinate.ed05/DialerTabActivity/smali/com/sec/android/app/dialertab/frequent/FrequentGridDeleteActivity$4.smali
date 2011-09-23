.class Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;
.super Landroid/os/Handler;
.source "FrequentGridDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 595
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 596
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 606
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 601
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$4;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
