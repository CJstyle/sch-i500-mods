.class Lcom/android/music/list/activity/MpListActivity$6;
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
    .line 2110
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2112
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpListActivity;->access$000(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/music/common/data/MusicDB;->createInstance(Landroid/content/Context;)Lcom/android/music/common/data/MusicDB;

    move-result-object v2

    .line 2115
    .local v2, musicDB:Lcom/android/music/common/data/MusicDB;
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget v3, v3, Lcom/android/music/list/activity/MpListActivity;->mListType:I

    invoke-direct {v0, v3, v7}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    .line 2116
    .local v0, filter:Lcom/android/music/common/data/MpListFilter;
    const/4 v1, -0x1

    .line 2117
    .local v1, mCon:I
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v3, v3, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    if-nez v3, :cond_0

    .line 2118
    const/4 v1, -0x1

    .line 2124
    :goto_0
    iget-object v3, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v4, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v7, v1, v5}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v4, v3, v6

    .line 2126
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v3}, Lcom/android/music/list/activity/MpListActivity;->access$100(Lcom/android/music/list/activity/MpListActivity;)Lcom/android/music/common/data/MusicAddData;

    move-result-object v3

    iget v3, v3, Lcom/android/music/common/data/MusicAddData;->mId:I

    invoke-virtual {v2, v0, v3}, Lcom/android/music/common/data/MusicDB;->removeItem(Lcom/android/music/common/data/MpListFilter;I)Z

    .line 2127
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v3, v3, Lcom/android/music/list/activity/MpListActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2128
    return-void

    .line 2120
    :cond_0
    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v3, v3, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/music/list/activity/MpListActivity$6;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v3, v3, Lcom/android/music/list/activity/MpListActivity;->mConditions:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    :goto_1
    goto :goto_0

    :cond_1
    move v1, v6

    goto :goto_1
.end method
