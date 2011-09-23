.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;
.super Ljava/lang/Object;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V
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
    .line 253
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 255
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)I

    move-result v6

    .line 256
    .local v6, displayedNum:I
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->setCandidateMode(I)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 258
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$500(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$600(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v3

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$700(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)B

    move-result v4

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setSuggestionsExpand(Ljava/util/List;ZZBII)V

    .line 260
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$800(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->invalidateInputView()V

    .line 261
    return-void
.end method
