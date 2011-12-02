.class Lcom/android/music/list/activity/MpMainTabActivity$10;
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
    .line 1981
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1982
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpMainTabActivity;->access$500(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/sec/android/touchwiz/widget/TwTabHost;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v3

    .line 1983
    .local v3, mCurrentTabTag:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpMainTabActivity;->access$100(Lcom/android/music/list/activity/MpMainTabActivity;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;

    iget-object v4, v6, Lcom/android/music/list/activity/MpMainTabActivity$ViewItem;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    .line 1984
    .local v4, mlistView:Lcom/android/music/list/view/AbstractMpListView;
    if-eqz v4, :cond_0

    .line 1986
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpMainTabActivity;->access$600(Lcom/android/music/list/activity/MpMainTabActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v5

    .line 1988
    .local v5, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->getListType()I

    move-result v6

    invoke-direct {v1, v6, v10}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 1989
    .local v1, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v2, -0x1

    .line 1990
    .local v2, mCon:I
    iget-object v6, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 1991
    const/4 v2, -0x1

    .line 1994
    :goto_0
    iget-object v6, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v7, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-direct {v7, v1, v10, v2, v8}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v7, v6, v9

    .line 1995
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpMainTabActivity;->access$700(Lcom/android/music/list/activity/MpMainTabActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z

    .line 1996
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpMainTabActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x12c

    invoke-virtual {v6, v9, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1997
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v6, v3}, Lcom/android/music/list/activity/MpMainTabActivity;->checkNoTracks(Ljava/lang/String;)V

    .line 1999
    :try_start_0
    iget-object v6, p0, Lcom/android/music/list/activity/MpMainTabActivity$10;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpMainTabActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    .end local v1           #filter:Lcom/android/music/common/data/MpListFilter;
    .end local v2           #mCon:I
    .end local v5           #musicDB:Lcom/android/music/common/data/MusicDB;
    :cond_0
    :goto_1
    return-void

    .line 1993
    .restart local v1       #filter:Lcom/android/music/common/data/MpListFilter;
    .restart local v2       #mCon:I
    .restart local v5       #musicDB:Lcom/android/music/common/data/MusicDB;
    :cond_1
    iget-object v6, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, v4, Lcom/android/music/list/view/AbstractMpListView;->mConditions:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v2, v6

    :goto_2
    goto :goto_0

    :cond_2
    move v2, v9

    goto :goto_2

    .line 2000
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 2001
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
