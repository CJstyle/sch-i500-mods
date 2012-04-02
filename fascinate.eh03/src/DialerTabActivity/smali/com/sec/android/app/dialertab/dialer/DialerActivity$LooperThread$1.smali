.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;
.super Landroid/os/Handler;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;)V
    .locals 0
    .parameter

    .prologue
    .line 4251
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;->this$1:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/16 v7, 0x111

    .line 4258
    const/4 v2, 0x0

    .line 4260
    .local v2, mContact:Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2900()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->block()V

    .line 4261
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2900()Landroid/os/ConditionVariable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/ConditionVariable;->close()V

    .line 4263
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4264
    .local v0, copyMsg:Landroid/os/Message;
    invoke-virtual {v0, p1}, Landroid/os/Message;->copyFrom(Landroid/os/Message;)V

    .line 4266
    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;->this$1:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    iget-object v4, v4, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2400(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v5, 0xbb8

    invoke-virtual {v4, v7, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 4268
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 4326
    :goto_0
    return-void

    .line 4270
    :pswitch_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4272
    .local v3, temp:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 4273
    :try_start_0
    const-string v5, "DialerActivity"

    const-string v6, "<++++++++++>Sync"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;->this$1:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    iget-object v5, v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v5, v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3100(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    move-result-object v2

    .line 4283
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;->this$1:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    iget-object v5, v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2400(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x111

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 4288
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3200()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 4289
    if-eqz v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3300()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 4290
    const/16 v5, 0x70

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4291
    const/16 v5, 0x13

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 4292
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3400()I

    move-result v5

    iput v5, v0, Landroid/os/Message;->arg2:I

    .line 4293
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4294
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4295
    .local v1, data:Landroid/os/Bundle;
    const-string v5, "args"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4296
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4297
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3302(I)I

    .line 4298
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3202(Z)Z

    .line 4322
    .end local v1           #data:Landroid/os/Bundle;
    :goto_1
    iget-object v5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread$1;->this$1:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    iget-object v5, v5, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2400(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4323
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4299
    :cond_0
    if-nez v2, :cond_1

    :try_start_1
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3300()I

    move-result v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 4300
    const/16 v5, 0x70

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4301
    const/16 v5, 0x12

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 4302
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3302(I)I

    .line 4303
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3202(Z)Z

    goto :goto_1

    .line 4305
    :cond_1
    const/16 v5, 0x70

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4306
    const/16 v5, 0x14

    iput v5, v0, Landroid/os/Message;->arg1:I

    goto :goto_1

    .line 4309
    :cond_2
    if-eqz v2, :cond_3

    .line 4310
    const/16 v5, 0x70

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4311
    const/16 v5, 0x13

    iput v5, v0, Landroid/os/Message;->arg1:I

    .line 4312
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$3400()I

    move-result v5

    iput v5, v0, Landroid/os/Message;->arg2:I

    .line 4313
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4314
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4315
    .restart local v1       #data:Landroid/os/Bundle;
    const-string v5, "args"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4316
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    .line 4318
    .end local v1           #data:Landroid/os/Bundle;
    :cond_3
    const/16 v5, 0x70

    iput v5, v0, Landroid/os/Message;->what:I

    .line 4319
    const/16 v5, 0x12

    iput v5, v0, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 4268
    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method
