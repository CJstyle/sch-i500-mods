.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;
.super Ljava/lang/Object;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createNormalViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mBtnIndex:I

.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "me"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 197
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$100(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Landroid/view/GestureDetector;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3, v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    move v3, v7

    .line 236
    :goto_0
    return v3

    .line 202
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 204
    .local v1, action:I
    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v7

    .line 236
    goto :goto_0

    .line 206
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 207
    instance-of v3, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v3, :cond_1

    .line 208
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v2, v0

    .line 209
    .local v2, tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v3

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    goto :goto_1

    .line 213
    .end local v2           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :pswitch_1
    instance-of v3, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v3, :cond_2

    .line 214
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v2, v0

    .line 215
    .restart local v2       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    if-eq v3, v4, :cond_1

    .line 216
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    goto :goto_1

    .line 220
    .end local v2           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :cond_2
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    goto :goto_1

    .line 224
    :pswitch_2
    instance-of v3, p1, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$000(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 225
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;

    move-object v2, v0

    .line 226
    .restart local v2       #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    if-ne v3, v4, :cond_3

    .line 227
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getIndex()I

    move-result v4

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;->getSuggestion()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 231
    .end local v2           #tv:Lcom/sec/android/inputmethod/axt9/widget/DioCandidateTextView;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v3, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$002(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;Z)Z

    .line 232
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$1;->mBtnIndex:I

    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
