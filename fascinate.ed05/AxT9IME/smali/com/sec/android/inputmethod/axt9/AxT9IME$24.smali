.class Lcom/sec/android/inputmethod/axt9/AxT9IME$24;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputLanguageSelectOptionMenu()V
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
    .line 6054
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "di"
    .parameter "position"

    .prologue
    .line 6056
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6057
    if-ltz p2, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 6058
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 6059
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 6060
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1902(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I

    .line 6061
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2000(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V

    .line 6064
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 6081
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 6082
    return-void

    .line 6078
    :cond_1
    const-string v0, "AxT9IME"

    const-string v1, "This Language is not enable!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
