.class Lcom/android/music/list/activity/MpListActivity$14;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z
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
    .line 2127
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

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

    .line 2129
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpListActivity;->access$200(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    .line 2132
    .local v4, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v2, Lcom/android/music/common/data/MpListFilter;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v6, v6, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-direct {v2, v6, v10}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2133
    .local v2, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v3, -0x1

    .line 2134
    .local v3, mCon:I
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    if-nez v6, :cond_1

    .line 2135
    const/4 v3, -0x1

    .line 2140
    :goto_0
    iget-object v6, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v7, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v10, v3, v8}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v7, v6, v9

    .line 2142
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpListActivity;->access$300(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z

    .line 2144
    :try_start_0
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v6}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2148
    :goto_1
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v6}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2149
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v6, 0x2

    new-array v5, v6, [Ljava/lang/String;

    .line 2150
    .local v5, str:[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v6, v6, v9

    aput-object v6, v5, v9

    .line 2152
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 2155
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v6}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 2160
    :cond_0
    :goto_2
    return-void

    .line 2137
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v5           #str:[Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v6, v6, v10

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v3, v6

    :goto_3
    goto :goto_0

    :cond_2
    move v3, v9

    goto :goto_3

    .line 2145
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 2146
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 2156
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v5       #str:[Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v6}, Lcom/android/music/list/activity/MpListActivity;->access$400(Lcom/android/music/list/activity/MpListActivity;)I

    move-result v6

    if-nez v6, :cond_0

    .line 2157
    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v7, p0, Lcom/android/music/list/activity/MpListActivity$14;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v7, v7, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v7}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v7

    invoke-virtual {v6, v7, v10}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V

    goto :goto_2
.end method
