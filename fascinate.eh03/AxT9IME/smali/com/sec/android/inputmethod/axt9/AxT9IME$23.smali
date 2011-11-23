.class Lcom/sec/android/inputmethod/axt9/AxT9IME$23;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputMethodSelectOptionMenu()V
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
    .line 5448
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5450
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 5451
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5452
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitInputMethodType(I)V

    .line 5453
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5454
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5469
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5470
    return-void

    .line 5457
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setPreInputMethodType(I)V

    .line 5458
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    .line 5459
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 5460
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showWindow(Z)V

    goto :goto_0

    .line 5463
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 5464
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5465
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5466
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
