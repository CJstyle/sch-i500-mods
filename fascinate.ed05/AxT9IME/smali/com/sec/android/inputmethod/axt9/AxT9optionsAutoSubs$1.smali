.class Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;
.super Ljava/lang/Object;
.source "AxT9optionsAutoSubs.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 273
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-static {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$102(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;Z)Z

    .line 275
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 278
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    const-class v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubsAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 279
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "shortcut"

    check-cast p1, Landroid/widget/TableRow;

    invoke-virtual {p1, v4}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 281
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsAutoSubs;->startActivityForResult(Landroid/content/Intent;I)V

    .line 283
    :cond_0
    return-void
.end method
