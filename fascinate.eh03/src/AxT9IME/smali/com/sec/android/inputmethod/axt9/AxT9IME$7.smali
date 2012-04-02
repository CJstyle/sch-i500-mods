.class Lcom/sec/android/inputmethod/axt9/AxT9IME$7;
.super Ljava/lang/Object;
.source "AxT9IME.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreate()V
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
    .line 817
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 819
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$900(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1000(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 821
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 822
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 825
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleBack()Z

    .line 829
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->dismissPreview()V

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 832
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 834
    :cond_3
    return-void
.end method
