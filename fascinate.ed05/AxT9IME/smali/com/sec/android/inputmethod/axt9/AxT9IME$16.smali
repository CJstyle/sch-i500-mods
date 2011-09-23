.class Lcom/sec/android/inputmethod/axt9/AxT9IME$16;
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
    .line 4036
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    .line 4040
    const-string v1, "caps_status"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 4041
    .local v0, capslock:Z
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setForcedCapslock(Z)V

    .line 4043
    return-void

    :cond_0
    move v2, v4

    .line 4041
    goto :goto_0
.end method
