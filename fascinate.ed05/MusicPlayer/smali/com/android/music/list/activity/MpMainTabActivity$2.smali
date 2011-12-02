.class Lcom/android/music/list/activity/MpMainTabActivity$2;
.super Ljava/lang/Object;
.source "MpMainTabActivity.java"

# interfaces
.implements Lcom/sec/android/touchwiz/widget/TwTabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpMainTabActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 497
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .parameter "newTag"

    .prologue
    .line 498
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v3, v3, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v2, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 499
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 501
    .local v1, view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    if-eqz v2, :cond_0

    .line 503
    :try_start_0
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursorIndexer:Lcom/sec/android/touchwiz/widget/TwCursorIndexer;

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 505
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 514
    :cond_0
    :goto_0
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->clearAdapter()V

    .line 526
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2, p1}, Lcom/android/music/list/activity/MpMainTabActivity;->access$002(Lcom/android/music/list/activity/MpMainTabActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 527
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 528
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$000(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 529
    .restart local v1       #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 530
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v2}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/interfaces/MpSetViewInterface;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/android/music/list/interfaces/MpSetViewInterface;->setEnable(Z)V

    .line 533
    :cond_1
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    if-eqz v2, :cond_2

    .line 534
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mGridView:Lcom/android/music/list/view/MpListGridView;

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$300(Lcom/android/music/list/activity/MpMainTabActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/music/list/view/MpListGridView;->setNumColumns(I)V

    .line 537
    .end local v1           #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_2
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 538
    return-void

    .line 508
    .restart local v1       #view:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 509
    .local v0, e:Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalStateException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 511
    .local v0, e:Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$2;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "IllegalArgumentException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
