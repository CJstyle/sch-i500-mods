.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;
.super Landroid/os/Handler;
.source "AxT9KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 557
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 559
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 582
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 561
    .restart local p0
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 562
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 568
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 573
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->repeatKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 574
    const/4 v1, 0x3

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, repeat:Landroid/os/Message;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    const/16 v2, 0x14

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-wide/16 v1, 0xc8

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-wide/16 v1, 0x32

    goto :goto_1

    .line 579
    .end local v0           #repeat:Landroid/os/Message;
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/MotionEvent;

    invoke-static {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 559
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
