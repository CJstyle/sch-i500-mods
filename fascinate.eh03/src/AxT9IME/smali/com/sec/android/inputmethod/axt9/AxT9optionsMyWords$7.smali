.class Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;
.super Ljava/lang/Object;
.source "AxT9optionsMyWords.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;


# direct methods
.method constructor <init>(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)V
    .locals 0
    .parameter

    .prologue
    .line 801
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 805
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 808
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords$7;->this$0:Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;

    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;->access$400(Lcom/sec/android/inputmethod/axt9/AxT9optionsMyWords;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 811
    :cond_0
    return-void
.end method
