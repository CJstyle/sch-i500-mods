.class Lcom/sec/android/inputmethod/axt9/AxT9IME$14;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter

    .prologue
    .line 3981
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x4

    const-string v4, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    .line 3985
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 4014
    :cond_0
    :goto_0
    return-void

    .line 3989
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3990
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3991
    const-string v2, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3993
    .local v1, handlerMessage:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3996
    const-string v2, "START_SELECTING_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3997
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4000
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 4001
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4002
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_0

    .line 4005
    :cond_2
    const-string v2, "STOP_SELECTING_TEXT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4006
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4007
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 4008
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4009
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_0
.end method
