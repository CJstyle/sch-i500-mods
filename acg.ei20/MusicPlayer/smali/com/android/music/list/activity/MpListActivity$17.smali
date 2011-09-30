.class Lcom/android/music/list/activity/MpListActivity$17;
.super Landroid/os/Handler;
.source "MpListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2423
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/16 v2, 0x8

    .line 2425
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$300(Lcom/android/music/list/activity/MpListActivity;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$300(Lcom/android/music/list/activity/MpListActivity;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 2426
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0xd

    if-gt v0, v1, :cond_1

    .line 2427
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->setNoItem()V

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2428
    :cond_1
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_3

    .line 2430
    :cond_2
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->setNoItem()V

    goto :goto_0

    .line 2432
    :cond_3
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    goto :goto_0

    .line 2435
    :cond_4
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 2436
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/music/list/view/AbstractMpListView;->setVisibility(I)V

    .line 2437
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$400(Lcom/android/music/list/activity/MpListActivity;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2438
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$17;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$400(Lcom/android/music/list/activity/MpListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
