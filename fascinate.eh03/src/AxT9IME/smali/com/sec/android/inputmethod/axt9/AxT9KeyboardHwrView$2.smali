.class Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;
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
    .line 98
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->onPostHwrTimeOut()V

    .line 101
    return-void
.end method
