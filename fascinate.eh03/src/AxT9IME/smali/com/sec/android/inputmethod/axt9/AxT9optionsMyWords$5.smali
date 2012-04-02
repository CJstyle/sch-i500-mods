.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;
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
    .line 731
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 734
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 735
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const-class v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 736
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 738
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 739
    return-void
.end method
