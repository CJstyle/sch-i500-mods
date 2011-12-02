.class Lcom/android/music/list/activity/MpMainTabActivity$14;
.super Landroid/os/Handler;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
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
    .line 2520
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 2521
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->changeTab(I)Z

    .line 2523
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2530
    .local v2, viewItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 2531
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v3}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 2532
    .local v1, tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v3, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v3, :cond_0

    .line 2533
    iget-object v3, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 2534
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 2530
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2539
    .end local v1           #tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_1
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v4, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 2542
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/music/list/activity/MpMainTabActivity;->dismissDialog(I)V

    .line 2543
    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$14;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 2544
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2545
    return-void
.end method
