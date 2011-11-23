.class Lcom/sec/android/inputmethod/axt9/AxT9IME$15;
.super Landroid/content/BroadcastReceiver;
.source "AxT9IME.java"


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
    .line 4017
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 4021
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4022
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 4024
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4025
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4027
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4030
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4031
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 4033
    :cond_3
    return-void
.end method
