.class Lcom/sec/android/inputmethod/axt9/AxT9IME$12;
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
    .line 3962
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 3966
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3967
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2202(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z

    .line 3968
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3969
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3971
    :cond_0
    return-void
.end method
