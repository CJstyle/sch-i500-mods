.class Lcom/sec/android/inputmethod/axt9/AxT9IME$10;
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
    .line 3902
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/16 v5, -0x88

    const/16 v4, -0x89

    const/4 v3, 0x1

    .line 3905
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3907
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.diotek.diodict.lang"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3908
    const-string v2, "lang_str"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3910
    .local v1, language:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3911
    const-string v2, "eng"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3913
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3914
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-array v3, v3, [I

    aput v4, v3, v6

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 3922
    .end local v1           #language:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3916
    .restart local v1       #language:Ljava/lang/String;
    :cond_1
    const-string v2, "kor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3917
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-array v3, v3, [I

    aput v5, v3, v6

    invoke-virtual {v2, v5, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_0
.end method
