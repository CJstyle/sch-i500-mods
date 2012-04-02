.class Lcom/sec/android/inputmethod/axt9/AxT9IME$29;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToRecognitionStatusView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field final synthetic val$configChanged:Z


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 8400
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iput-boolean p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->val$configChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8402
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2802(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z

    .line 8403
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceInput;->getView()Landroid/view/View;

    move-result-object v1

    .line 8404
    .local v1, v:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 8405
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 8406
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8408
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputView(Landroid/view/View;)V

    .line 8409
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateInputViewShown()V

    .line 8410
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->val$configChanged:Z

    if-eqz v2, :cond_1

    .line 8411
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/android/inputmethod/voice/VoiceInput;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/inputmethod/voice/VoiceInput;->onConfigurationChanged()V

    .line 8413
    :cond_1
    return-void
.end method
