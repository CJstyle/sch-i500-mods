.class Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;
.super Landroid/os/Handler;
.source "FrequentDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 750
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 753
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 761
    :cond_0
    :goto_0
    return-void

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 757
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity$7;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/frequent/FrequentDeleteActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 753
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
