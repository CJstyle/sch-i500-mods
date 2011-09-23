.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;
.super Ljava/lang/Object;
.source "AxT9KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z
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
    .line 4231
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 4233
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 4234
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 4235
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 4236
    return-void
.end method
