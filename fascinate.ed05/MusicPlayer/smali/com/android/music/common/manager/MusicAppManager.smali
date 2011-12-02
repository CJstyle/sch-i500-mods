.class public Lcom/android/music/common/manager/MusicAppManager;
.super Ljava/lang/Object;
.source "MusicAppManager.java"


# static fields
.field public static final CURRENT_RUNNING_STATE_DISCPLUS_ACTIVITY:I = 0xd

.field public static final CURRENT_RUNNING_STATE_LIST_ACTIVITY:I = 0xb

.field public static final CURRENT_RUNNING_STATE_PLAYER_ACTIVITY:I = 0xc

.field public static final CURRENT_RUNNING_STATE_TAP_ACTIVITY:I = 0xa

.field public static final MANAGE_MODE_DESTROY_DISCPLUS:I = 0x2

.field public static final MANAGE_MODE_GO_TO_LIBRARY:I = 0x3

.field public static final MANAGE_MODE_LANUNCH_DISCPLUS:I = 0x1

.field public static final MANAGE_MODE_NONE:I = -0x1

.field private static mInstance:Lcom/android/music/common/manager/MusicAppManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

.field private mOldManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 25
    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mOldManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/music/common/manager/MusicAppManager;
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/android/music/common/manager/MusicAppManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lcom/android/music/common/manager/MusicAppManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManager;-><init>()V

    sput-object v1, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;

    .line 46
    :cond_0
    sget-object v1, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 41
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    return-object v0
.end method

.method public launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z
    .locals 13
    .parameter "context"
    .parameter "manageFilter"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 63
    const/4 v7, 0x0

    .line 66
    .local v7, bResult:Z
    const/4 v6, 0x0

    .line 67
    .local v6, allItemCount:I
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "count()"

    aput-object v3, v2, v11

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 71
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 72
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 75
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_1
    iput v6, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->allItemCount:I

    .line 80
    invoke-virtual {p0, p2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 82
    const-string v0, "launchDiscPlus : manageMode[%d], runningState[%d], listType[%d], focusIndex[%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v11

    iget v2, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v12

    const/4 v2, 0x2

    iget v3, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 84
    .local v10, log:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/16 v0, 0x7d0

    invoke-static {v11, v0}, Landroid/os/Power;->acquireDVFSlock(II)I

    .line 95
    new-instance v9, Landroid/content/Intent;

    const-class v0, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-direct {v9, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    .local v9, intent:Landroid/content/Intent;
    invoke-virtual {p1, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    check-cast p1, Landroid/app/Activity;

    .end local p1
    invoke-virtual {p1, v11, v11}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 102
    return v7
.end method

.method public releaseDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;Z)Z
    .locals 7
    .parameter "context"
    .parameter "manageFilter"
    .parameter "isPlaying"

    .prologue
    .line 109
    const/4 v0, 0x0

    .line 111
    .local v0, bResult:Z
    invoke-virtual {p0, p2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 113
    const-string v3, "releaseDiscPlus: manageMode[%d], runningState[%d], listType[%d], focusIndex[%d]"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->listType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->focusIndex:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, log:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz p3, :cond_0

    .line 120
    iget-object v3, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    const-string v4, "releaseDiscPlus: isPlaying is true -> startActivity MusicPlayer"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "musicplayer.action"

    const-string v4, "Library"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const/high16 v3, 0x402

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return v0
.end method

.method public setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V
    .locals 1
    .parameter "manageFilter"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mOldManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 52
    iput-object p1, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 53
    return-void
.end method
