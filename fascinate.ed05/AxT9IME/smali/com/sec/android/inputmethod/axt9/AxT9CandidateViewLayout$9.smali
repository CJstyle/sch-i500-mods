.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;
.super Ljava/lang/Object;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createHwrViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 471
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 473
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$9;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 474
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 475
    const-string v1, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 477
    :cond_0
    return-void
.end method
