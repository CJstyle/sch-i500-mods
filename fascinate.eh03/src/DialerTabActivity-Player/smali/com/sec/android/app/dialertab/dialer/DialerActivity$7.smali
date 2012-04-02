.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;
.super Landroid/os/Handler;
.source "DialerActivity.java"


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
    .line 4164
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/16 v4, 0x111

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 4171
    iget v3, p1, Landroid/os/Message;->what:I

    if-ne v3, v4, :cond_2

    .line 4177
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    if-eqz v3, :cond_0

    .line 4179
    :try_start_0
    const-string v3, "DialerActivity"

    const-string v4, "LookupQuery timeout..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4180
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->quit()Z

    .line 4181
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2302(Landroid/os/Handler;)Landroid/os/Handler;

    .line 4182
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->join(J)V

    .line 4183
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-static {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2400(Lcom/sec/android/app/dialertab/dialer/DialerActivity;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x111

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 4184
    const/4 v3, 0x0

    sput-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4192
    :cond_0
    const-string v3, "DialerActivity"

    const-string v4, "...creating new looping thread"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4193
    new-instance v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    iget-object v4, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    const-string v5, "LooperThread"

    invoke-direct {v3, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;-><init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Ljava/lang/String;)V

    sput-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    .line 4194
    sget-object v3, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;->start()V

    .line 4196
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2300()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4197
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2300()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 4198
    .local v2, msg1:Landroid/os/Message;
    const/16 v3, 0x11

    iput v3, v2, Landroid/os/Message;->what:I

    .line 4199
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4201
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2300()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4238
    .end local v2           #msg1:Landroid/os/Message;
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 4185
    .restart local p0
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 4186
    .local v0, e:Ljava/lang/InterruptedException;
    sput-object v7, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->mLooperThread:Lcom/sec/android/app/dialertab/dialer/DialerActivity$LooperThread;

    .line 4187
    invoke-static {v7}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2302(Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    .line 4203
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x70

    if-ne v3, v4, :cond_1

    .line 4204
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2500()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 4205
    const/4 v1, 0x0

    .line 4206
    .local v1, isSearchOk:Z
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$700()Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/dialertab/dialer/EllipsisTextView;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 4208
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_0

    .line 4236
    .end local p0
    :goto_1
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2900()Landroid/os/ConditionVariable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 4210
    .restart local p0
    :pswitch_0
    const/4 v1, 0x1

    .line 4211
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2600()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 4212
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2700(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;Ljava/lang/String;I)V

    .line 4213
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2800()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 4216
    .restart local p0
    :pswitch_1
    const/4 v1, 0x0

    .line 4217
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2800()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4218
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2600()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 4221
    :pswitch_2
    if-eqz v1, :cond_3

    .line 4222
    iget-object v3, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$7;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "args"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3, p0, v4, v5}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2700(Lcom/sec/android/app/dialertab/dialer/DialerActivity;Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;Ljava/lang/String;I)V

    .line 4223
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2800()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4224
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2600()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 4226
    .restart local p0
    :cond_3
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2800()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4227
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2600()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 4232
    :cond_4
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2800()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4233
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2600()Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 4234
    invoke-static {}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$2500()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 4208
    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
