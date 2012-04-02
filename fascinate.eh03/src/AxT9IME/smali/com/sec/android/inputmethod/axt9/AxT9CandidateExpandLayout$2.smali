.class Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;
.super Ljava/lang/Object;
.source "AxT9CandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 139
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->access$300(Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 142
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout$2;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateExpandLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleAddWord()V

    .line 143
    return-void
.end method
