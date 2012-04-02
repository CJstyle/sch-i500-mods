.class Lcom/sec/android/inputmethod/axt9/AxT9IME$19;
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
    .line 4073
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4076
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4077
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 4078
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4079
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 4080
    :cond_1
    return-void
.end method
