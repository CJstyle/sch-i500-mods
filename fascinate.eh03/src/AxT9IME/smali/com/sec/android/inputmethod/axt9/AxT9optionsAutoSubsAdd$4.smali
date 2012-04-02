.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubsAdd.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/widget/DioEditText$OnPrivateCommandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V
    .locals 0
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 424
    const-string v3, "AxT9IMEPrivateActionDone"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 425
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 426
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_0

    .line 427
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 429
    :cond_0
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;

    invoke-direct {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;-><init>()V

    .line 430
    .local v0, entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$502(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 431
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setShortcut(Ljava/lang/String;)V

    .line 433
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$602(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 434
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->setSubstitution(Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetUserDefinedAutoSubstitution()S

    move-result v1

    .line 440
    .local v1, errorcode:S
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWSetLDBAutoSubstitution()S

    move-result v1

    .line 443
    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 444
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 445
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Ljava/lang/String;)V

    .line 448
    :cond_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;)V

    .line 449
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;)V

    .line 452
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;->getShortcut()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v6, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->setResult(ILandroid/content/Intent;)V

    .line 453
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;->finish()V

    move v3, v7

    .line 457
    .end local v0           #entryset:Lcom/sec/android/inputmethod/axt9/AutoSubsEntrySet;
    .end local v1           #errorcode:S
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method
