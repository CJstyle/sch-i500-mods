.class Lcom/android/music/list/activity/MpListActivity$18;
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
    .line 2220
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2221
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpListActivity;->access$200(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v4

    .line 2224
    .local v4, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v2, Lcom/android/music/common/data/MpListFilter;

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v5, v5, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-direct {v2, v5, v8}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2225
    .local v2, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v3, -0x1

    .line 2226
    .local v3, mCon:I
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2227
    const/4 v3, -0x1

    .line 2232
    :goto_0
    iget-object v5, v2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v8, v3, v7}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v6, v5, v9

    .line 2234
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpListActivity;->access$300(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z

    .line 2236
    :try_start_0
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v5}, Lcom/android/music/player/service/ICorePlayerService;->InitIndex()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2240
    :goto_1
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2241
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->refreshView()V

    .line 2242
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v5, v8, :cond_0

    .line 2243
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v5}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 2245
    :cond_0
    return-void

    .line 2229
    .end local v0           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$18;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v3, v5

    :goto_2
    goto :goto_0

    :cond_2
    move v3, v9

    goto :goto_2

    .line 2237
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2238
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method
