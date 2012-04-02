.class Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;
.super Ljava/lang/Object;
.source "AxT9AddWord.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 273
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->setResult(ILandroid/content/Intent;)V

    .line 276
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9AddWord$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;->finish()V

    .line 277
    return-void
.end method
