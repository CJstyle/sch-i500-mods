.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;
.super Ljava/lang/Object;
.source "AxT9KeyboardHwrView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->mStartedHwrTimer:Z

    .line 93
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onHwrTimeOut()V

    .line 94
    return-void
.end method
