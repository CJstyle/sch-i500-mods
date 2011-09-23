.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;
.super Ljava/lang/Object;
.source "AxT9CandidateViewLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->createExpandViews()V
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
    .line 374
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout$6;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;->access$200(Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 377
    return-void
.end method
