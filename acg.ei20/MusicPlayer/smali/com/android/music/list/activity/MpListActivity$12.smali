.class Lcom/android/music/list/activity/MpListActivity$12;
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
    .line 2231
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

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

    .line 2234
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpListActivity;->access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v3

    .line 2237
    .local v3, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v1, Lcom/android/music/common/data/MpListFilter;

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v5, v5, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-direct {v1, v5, v9}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2238
    .local v1, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v2, -0x1

    .line 2239
    .local v2, mCon:I
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 2240
    const/4 v2, -0x1

    .line 2245
    :goto_0
    iget-object v5, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v6, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v9, v2, v7}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v6, v5, v8

    .line 2247
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpListActivity;->access$100(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;Lcom/android/music/common/data/MusicAddData;)Z

    .line 2250
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v5}, Lcom/android/music/list/view/AbstractMpListView;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2251
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/String;

    .line 2252
    .local v4, str:[Ljava/lang/String;
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mListTitleText:[Ljava/lang/String;

    aget-object v5, v5, v8

    aput-object v5, v4, v8

    .line 2254
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-ne v5, v9, :cond_3

    .line 2257
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v5}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 2262
    :cond_0
    :goto_1
    return-void

    .line 2242
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v4           #str:[Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v5, v5, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v5, v5, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v2, v5

    :goto_2
    goto :goto_0

    :cond_2
    move v2, v8

    goto :goto_2

    .line 2258
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v4       #str:[Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v5}, Lcom/android/music/list/activity/MpListActivity;->access$200(Lcom/android/music/list/activity/MpListActivity;)I

    move-result v5

    if-nez v5, :cond_0

    .line 2259
    iget-object v5, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, p0, Lcom/android/music/list/activity/MpListActivity$12;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v6, v6, Lcom/android/music/list/activity/MpListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v6}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v6

    invoke-virtual {v5, v6, v9}, Lcom/android/music/list/activity/MpListActivity;->setTitleLayout(II)V

    goto :goto_1
.end method