.class Lcom/sec/android/inputmethod/axt9/AxT9IME$28;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToKeyboardView()V
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
    .line 8388
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 8390
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$2802(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z

    .line 8391
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8392
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputView(Landroid/view/View;)V

    .line 8394
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateInputViewShown()V

    .line 8395
    return-void
.end method
