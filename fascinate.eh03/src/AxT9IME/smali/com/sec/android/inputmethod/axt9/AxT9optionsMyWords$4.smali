.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 713
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 719
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 720
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 721
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    const-class v3, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 722
    const-string v2, "CurrentMode"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v2, "edittingMyWords"

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$CheckboxArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    const/high16 v0, 0x400

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 727
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->startActivityForResult(Landroid/content/Intent;I)V

    .line 728
    return-void
.end method
