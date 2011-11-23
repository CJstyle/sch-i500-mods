.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsAdd.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 312
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setResult(ILandroid/content/Intent;)V

    .line 315
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->finish()V

    .line 316
    return-void
.end method
