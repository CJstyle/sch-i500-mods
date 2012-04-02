.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;
.super Ljava/lang/Object;
.source "AxT9CandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v6, -0x1

    .line 93
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 95
    .local v1, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 97
    .local v3, y:I
    packed-switch v1, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 99
    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;Z)Z

    .line 100
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$102(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    .line 102
    instance-of v4, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v4, :cond_0

    .line 103
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v2, v0

    .line 104
    .local v2, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v5

    invoke-static {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    goto :goto_0

    .line 109
    .end local v2           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :pswitch_1
    instance-of v4, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v4, :cond_1

    .line 110
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v2, v0

    .line 111
    .restart local v2       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 112
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    goto :goto_0

    .line 116
    .end local v2           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$202(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;I)I

    goto :goto_0

    .line 121
    :pswitch_2
    instance-of v4, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v4, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v2, v0

    .line 123
    .restart local v2       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 124
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v5

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getSuggestion()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
