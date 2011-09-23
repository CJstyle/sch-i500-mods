.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;
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
    .line 290
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, -0x1

    .line 292
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Lcom/sec/android/inputmethod/axt9/widget/DioEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/widget/DioEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$302(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Landroid/text/Editable;)Landroid/text/Editable;

    .line 293
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$402(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)Ljava/lang/String;

    .line 294
    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    if-nez v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)[B

    move-result-object v0

    const/16 v1, 0x5000

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWRUDBInit([BS)S

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 301
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)V

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->setResult(ILandroid/content/Intent;)V

    .line 308
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWordsAdd;->finish()V

    .line 309
    return-void
.end method
