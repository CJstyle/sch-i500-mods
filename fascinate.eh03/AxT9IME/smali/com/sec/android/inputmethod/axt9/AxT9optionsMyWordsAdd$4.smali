.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsAdd.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 414
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 416
    const-string v1, "AxT9IMEPrivateActionDone"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 418
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 419
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 422
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ne v1, v4, :cond_2

    .line 432
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 433
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V

    .line 435
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V

    .line 436
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 437
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setResult(ILandroid/content/Intent;)V

    .line 438
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->finish()V

    :cond_2
    move v1, v5

    .line 443
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method
