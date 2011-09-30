.class public Lcom/android/music/list/activity/MpPlayListActivity;
.super Lcom/android/music/list/activity/MpListActivity;
.source "MpPlayListActivity.java"

# interfaces
.implements Lcom/android/music/list/interfaces/MpCorePlayer;
.implements Lcom/android/music/list/interfaces/MpHandlerInterface;


# instance fields
.field private final mMediaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/music/list/activity/MpListActivity;-><init>()V

    .line 125
    new-instance v0, Lcom/android/music/list/activity/MpPlayListActivity$1;

    invoke-direct {v0, p0}, Lcom/android/music/list/activity/MpPlayListActivity$1;-><init>(Lcom/android/music/list/activity/MpPlayListActivity;)V

    iput-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method protected checkListFilter()V
    .locals 0

    .prologue
    .line 90
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 118
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, intentMediaStateFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/music/list/activity/MpPlayListActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-super {p0, p1}, Lcom/android/music/list/activity/MpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/music/list/activity/MpPlayListActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    invoke-super {p0}, Lcom/android/music/list/activity/MpListActivity;->onDestroy()V

    .line 112
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->activityCheck:Z

    .line 41
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    if-eqz v0, :cond_1

    .line 43
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v0}, Lcom/android/music/list/view/AbstractMpListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;

    iget-object v0, v0, Lcom/android/music/list/adapter/AbstractMpListAdapter;->tempimage:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-virtual {v0}, Lcom/android/music/list/data/MpImageDataBuffer;->ClearLoadImage()V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-boolean v0, Lcom/android/music/list/view/AbstractMpListView;->isMusicHandlerRun:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    sget-object v0, Lcom/android/music/list/view/AbstractMpListView;->mHandler:Lcom/android/music/list/view/AbstractMpListView$musicHandler;

    const/4 v1, 0x2

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/list/view/AbstractMpListView$musicHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 56
    :cond_1
    invoke-super {p0}, Lcom/android/music/list/activity/MpListActivity;->onPause()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/music/list/activity/MpListActivity;->onResume()V

    .line 62
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->TAG:Ljava/lang/String;

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {p0, v1}, Lcom/android/music/list/activity/MpPlayListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 65
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    if-eqz v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListView:Lcom/android/music/list/view/AbstractMpListView;

    invoke-virtual {v1}, Lcom/android/music/list/view/AbstractMpListView;->resetView()V

    .line 75
    :cond_0
    const/4 v0, 0x0

    .line 76
    .local v0, iCursorPosition:I
    iget-boolean v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mHasCheck:Z

    if-eqz v1, :cond_1

    .line 77
    add-int/lit8 v0, v0, 0x1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/android/music/list/activity/MpPlayListActivity;->mListData:Lcom/android/music/list/data/MpListDisplayData;

    invoke-virtual {v1}, Lcom/android/music/list/data/MpListDisplayData;->getListLayout()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/music/list/activity/MpPlayListActivity;->setTitleLayout(II)V

    .line 81
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method
