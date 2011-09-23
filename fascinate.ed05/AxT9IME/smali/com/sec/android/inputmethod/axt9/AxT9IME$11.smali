.class Lcom/sec/android/inputmethod/axt9/AxT9IME$11;
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
    .line 3925
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    const-string v4, "ResponseAxT9InfoAllHeight"

    .line 3930
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3931
    .local v0, respInt:Landroid/content/Intent;
    const-string v1, "ResponseAxT9InfoAllHeight"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3932
    const-string v1, "ResponseAxT9InfoAllHeight"

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    add-int/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3933
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 3935
    return-void

    .line 3932
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->isShown()Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getHeight()I

    move-result v2

    goto :goto_1
.end method
