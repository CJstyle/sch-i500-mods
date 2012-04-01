.class public Lcom/android/music/common/manager/MusicAppManager;
.super Ljava/lang/Object;
.source "MusicAppManager.java"


# static fields
.field private static mInstance:Lcom/android/music/common/manager/MusicAppManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

.field private mOldManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 23
    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mOldManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 25
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
    .line 39
    const-class v0, Lcom/android/music/common/manager/MusicAppManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;

    if-nez v1, :cond_0

    .line 41
    new-instance v1, Lcom/android/music/common/manager/MusicAppManager;

    invoke-direct {v1}, Lcom/android/music/common/manager/MusicAppManager;-><init>()V

    sput-object v1, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;

    .line 44
    :cond_0
    sget-object v1, Lcom/android/music/common/manager/MusicAppManager;->mInstance:Lcom/android/music/common/manager/MusicAppManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 39
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getManagFilter()Lcom/android/music/common/manager/MusicAppManageFilter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    return-object v0
.end method

.method public launchDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "count()"

    aput-object v3, v2, v6

    invoke-static {}, Lcom/android/music/common/data/MusicDB;->defaultAudioWhereClause()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 73
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 76
    :goto_1
    iput v0, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->allItemCount:I

    .line 78
    invoke-virtual {p0, p2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 80
    const-string v0, "launchDiscPlus : manageMode[%d], runningState[%d], listType[%d], focusIndex[%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    iget v2, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

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

    move-result-object v0

    .line 82
    iget-object v1, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/discplus/activity/DiscPlus;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 97
    return v6

    :cond_0
    move v1, v6

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_1
.end method

.method public releaseDiscPlus(Landroid/content/Context;Lcom/android/music/common/manager/MusicAppManageFilter;Z)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 104
    .line 106
    invoke-virtual {p0, p2}, Lcom/android/music/common/manager/MusicAppManager;->setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V

    .line 108
    const-string v0, "releaseDiscPlus: manageMode[%d], runningState[%d], listType[%d], focusIndex[%d]"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->manageMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p2, Lcom/android/music/common/manager/MusicAppManageFilter;->runingState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

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

    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    if-eqz p3, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->TAG:Ljava/lang/String;

    const-string v1, "releaseDiscPlus: isPlaying is true -> startActivity MusicPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 118
    const-string v1, "musicplayer.action"

    const-string v2, "Library"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x402

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    :cond_0
    return v4
.end method

.method public setManageFilter(Lcom/android/music/common/manager/MusicAppManageFilter;)V
    .locals 1
    .parameter "manageFilter"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    iput-object v0, p0, Lcom/android/music/common/manager/MusicAppManager;->mOldManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 50
    iput-object p1, p0, Lcom/android/music/common/manager/MusicAppManager;->mManageFilter:Lcom/android/music/common/manager/MusicAppManageFilter;

    .line 51
    return-void
.end method
