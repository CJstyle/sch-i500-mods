.class Lcom/android/music/list/activity/MpListActivity$16;
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
    .line 2179
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2181
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpListActivity;->access$200(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v3

    .line 2184
    .local v3, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v4, v4, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-direct {v1, v4, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2185
    .local v1, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v2, -0x1

    .line 2186
    .local v2, mCon:I
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2187
    const/4 v2, -0x1

    .line 2192
    :goto_0
    iget-object v4, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v5, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v8, v2, v6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v5, v4, v7

    .line 2194
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v4}, Lcom/android/music/list/activity/MpListActivity;->access$300(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z

    .line 2196
    :try_start_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v4}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2200
    :goto_1
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v4}, Lcom/android/music/list/view/AbstractMpListView;->resetView()V

    .line 2201
    return-void

    .line 2189
    :cond_0
    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/music/list/activity/MpListActivity$16;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v4, v4, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v4, v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v2, v4

    :goto_2
    goto :goto_0

    :cond_1
    move v2, v7

    goto :goto_2

    .line 2197
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 2198
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
