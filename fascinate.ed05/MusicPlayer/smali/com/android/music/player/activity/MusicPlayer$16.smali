.class Lcom/android/music/player/activity/MusicPlayer$16;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->initializeControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 1705
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 1707
    :try_start_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-boolean v3, v3, Lcom/android/music/player/activity/MusicPlayer;->bCalledByList:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getCurrentMedia()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1709
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/music/common/manager/MusicAppManager;->getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;

    move-result-object v2

    .line 1711
    .local v2, mMusicAppManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    if-nez v2, :cond_0

    .line 1713
    new-instance v2, Lcom/android/music/common/manager/MusicAppManageFilter;

    .end local v2           #mMusicAppManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    invoke-direct {v2}, Lcom/android/music/common/manager/MusicAppManageFilter;-><init>()V

    .line 1716
    .restart local v2       #mMusicAppManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getPlayListType()I

    move-result v3

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    .line 1718
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    invoke-interface {v3}, Lcom/android/music/player/service/ICorePlayerService;->getIndexOfPlayList()I

    move-result v3

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    .line 1720
    const/4 v3, 0x3

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    .line 1721
    const/16 v3, 0xc

    iput v3, v2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    .line 1722
    invoke-static {}, Lcom/android/music/common/manager/MusicAppManager;->getInstance()Lcom/android/music/common/manager/MusicAppManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1735
    .end local v2           #mMusicAppManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3}, Lcom/android/music/player/activity/MusicPlayer;->finish()V

    .line 1736
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const v4, 0x7f040006

    const v5, 0x7f040007

    invoke-virtual {v3, v4, v5}, Lcom/android/music/player/activity/MusicPlayer;->overridePendingTransition(II)V

    .line 1737
    return-void

    .line 1726
    :cond_1
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1728
    .local v0, backIntent:Landroid/content/Intent;
    const/high16 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1729
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-virtual {v3, v0}, Lcom/android/music/player/activity/MusicPlayer;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1731
    .end local v0           #backIntent:Landroid/content/Intent;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1732
    .local v1, e:Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/music/player/activity/MusicPlayer$16;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v3, v3, Lcom/android/music/player/activity/MusicPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException...mButtonList,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
