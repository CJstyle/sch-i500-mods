.class Lcom/android/music/list/activity/MpMainTabActivity$15;
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
    .line 2993
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 2996
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->changeTab(I)Z

    .line 3005
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3006
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->access$1100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v2}, Lcom/android/music/list/data/MpListDisplayData;->getListName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    .line 3007
    .local v1, tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 3008
    iget-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 3009
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mCursor:Landroid/database/Cursor;

    .line 3005
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3014
    .end local v1           #tempItem:Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;
    :cond_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v3, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 3018
    :try_start_0
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->dismissDialog(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3020
    :goto_1
    iget-object v2, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 3021
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 3022
    return-void

    .line 3019
    :catch_0
    move-exception v2

    goto :goto_1
.end method
