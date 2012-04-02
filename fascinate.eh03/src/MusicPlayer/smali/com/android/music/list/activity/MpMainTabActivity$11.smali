.class Lcom/android/music/list/activity/MpMainTabActivity$11;
.super Ljava/lang/Object;
.source "MpMainTabActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpMainTabActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    .line 2364
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2366
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v2

    .line 2367
    .local v2, mCurrentTabTag:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpMainTabActivity;->access$200(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v3, v5, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 2368
    .local v3, mlistView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v3, :cond_0

    .line 2370
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    .line 2372
    .local v4, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v3}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v5

    invoke-direct {v0, v5, v9}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2373
    .local v0, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v1, -0x1

    .line 2374
    .local v1, mCon:I
    iget-object v5, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2375
    const/4 v1, -0x1

    .line 2378
    :goto_0
    iget-object v5, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v9, v1, v7}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v6, v5, v8

    .line 2379
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpMainTabActivity;->access$700(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z

    .line 2380
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpMainTabActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2381
    iget-object v5, p0, Lcom/android/music/list/activity/MpMainTabActivity$11;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v5, v2}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 2395
    .end local v0           #filter:Lcom/android/music/common/data/MpListFilter;
    .end local v1           #mCon:I
    .end local v4           #musicDB:Lcom/android/music/common/data/MusicDB;
    :cond_0
    return-void

    .line 2377
    .restart local v0       #filter:Lcom/android/music/common/data/MpListFilter;
    .restart local v1       #mCon:I
    .restart local v4       #musicDB:Lcom/android/music/common/data/MusicDB;
    :cond_1
    iget-object v5, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v3, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v1, v5

    :goto_1
    goto :goto_0

    :cond_2
    move v1, v8

    goto :goto_1
.end method
