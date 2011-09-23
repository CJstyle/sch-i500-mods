.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;
.super Ljava/lang/Object;
.source "AxT9optionsMyWordsDel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->makeDeletePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "di"
    .parameter "arg1"

    .prologue
    .line 258
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 259
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;Ljava/lang/String;)V

    .line 258
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;)V

    .line 262
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    const/4 v3, -0x1

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "Delete is Done"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->setResult(ILandroid/content/Intent;)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsDel;->finish()V

    .line 264
    return-void
.end method
