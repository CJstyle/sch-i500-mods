.class Lcom/sec/android/inputmethod/axt9/AxT9IME$3;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;
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
    .line 607
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x6

    .line 609
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 610
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 612
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 613
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, 0xf00

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 615
    const-string v2, "AxT9IMEPrivateActionDone"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 618
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCustomExtractViewEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 619
    invoke-interface {v1, v4}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0

    .line 622
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doAction()V

    goto :goto_0
.end method
