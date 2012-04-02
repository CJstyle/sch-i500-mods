.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "tview"

    .prologue
    .line 340
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    move-result v2

    .line 343
    .local v2, result:Z
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;Z)Z

    .line 344
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0024

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, CurrentMode:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 346
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const-class v4, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 347
    const-string v3, "edittingMyWords"

    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 348
    const-string v3, "CurrentMode"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)I

    move-result v4

    invoke-virtual {v3, v1, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 351
    .end local v0           #CurrentMode:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #result:Z
    :cond_0
    return-void
.end method
