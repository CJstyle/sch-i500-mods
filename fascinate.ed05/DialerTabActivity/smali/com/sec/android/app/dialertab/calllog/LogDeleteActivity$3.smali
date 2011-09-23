.class Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;
.super Landroid/os/Handler;
.source "LogDeleteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 272
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 274
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iget-object v0, v0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity$3;->this$0:Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;

    iget-object v1, v1, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/dialertab/calllog/LogDeleteActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
