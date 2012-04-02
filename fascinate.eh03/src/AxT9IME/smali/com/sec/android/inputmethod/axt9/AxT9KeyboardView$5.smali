.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;
.super Ljava/lang/Object;
.source "AxT9KeyboardView.java"

# interfaces
.implements Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V
    .locals 0
    .parameter

    .prologue
    .line 4513
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(I[I)V
    .locals 1
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    .line 4515
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 4516
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 4517
    return-void
.end method

.method public onPress(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 4524
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 4525
    return-void
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 4527
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 4528
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 4530
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 4531
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 4532
    return-void
.end method

.method public swipeDown()V
    .locals 0

    .prologue
    .line 4522
    return-void
.end method

.method public swipeLeft()V
    .locals 0

    .prologue
    .line 4519
    return-void
.end method

.method public swipeRight()V
    .locals 0

    .prologue
    .line 4520
    return-void
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 4521
    return-void
.end method
