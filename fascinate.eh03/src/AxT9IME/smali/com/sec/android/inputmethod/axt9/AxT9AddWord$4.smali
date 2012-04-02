.class Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;
.super Ljava/lang/Object;
.source "AxT9AddWord.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9AddWord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 5
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 399
    const-string v2, "AxT9IMEPrivateActionDone"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 400
    const-string v0, ""

    .line 401
    .local v0, addingWord:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 405
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)[B

    move-result-object v2

    const/16 v3, 0x5000

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    move-result v1

    .line 406
    .local v1, errorcode:S
    if-eqz v1, :cond_0

    .line 410
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-static {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;Ljava/lang/String;)V

    .line 412
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9AddWord;)V

    .line 413
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v2, v4}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setFlagIsDone(Z)V

    .line 414
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->finish()V

    .line 415
    const/4 v2, 0x0

    .line 418
    .end local v0           #addingWord:Ljava/lang/String;
    .end local v1           #errorcode:S
    :goto_0
    return v2

    :cond_1
    move v2, v4

    goto :goto_0
.end method
