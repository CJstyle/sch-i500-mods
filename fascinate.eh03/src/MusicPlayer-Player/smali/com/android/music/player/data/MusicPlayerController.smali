.class public Lcom/android/music/player/data/MusicPlayerController;
.super Ljava/lang/Object;
.source "MusicPlayerController.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLaunchMode:I

.field private mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

.field private mRepeatMode:I

.field private myFiles_bucketID:Ljava/lang/String;

.field private myFiles_filePath:Ljava/lang/String;

.field private myFiles_iPos:I

.field private myFiles_sortOrder:I

.field private previewUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/music/player/data/MusicPlayerController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/player/data/MusicPlayerController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/music/common/data/MusicDB;Landroid/content/Context;)V
    .locals 3
    .parameter "mMusicDB"
    .parameter "mContext"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    .line 27
    iput v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mRepeatMode:I

    .line 34
    iput v1, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_sortOrder:I

    .line 35
    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    .line 36
    iput v1, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    .line 37
    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_bucketID:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    .line 43
    new-instance v0, Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-direct {v0, p1, p2}, Lcom/android/music/player/data/MusicPlayerIterator;-><init>(Lcom/android/music/common/data/MusicDB;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    .line 44
    return-void
.end method


# virtual methods
.method public getCurAudioId()I
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCurAudioId()I

    move-result v0

    return v0
.end method

.method public getCurrentFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCurFilePath()Ljava/lang/String;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    .line 184
    :cond_0
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    goto :goto_0

    .line 187
    :cond_1
    sget-object v0, Lcom/android/music/player/data/MusicPlayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFilePath():LAUNCH_PREVIEW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMediaListType()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCurListType()I

    move-result v0

    return v0
.end method

.method public getCurrentMediaUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 163
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    if-eqz v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/music/player/data/MusicPlayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentMediaUri():LAUNCH_PREVIEW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    .line 167
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCurItem()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCurPos()I

    move-result v0

    return v0
.end method

.method public getCurrent_ID()I
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCur_ID()I

    move-result v0

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getItemCountFromDB()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemCountFromDB()I

    move-result v0

    return v0
.end method

.method public getLaunchMode()I
    .locals 1

    .prologue
    .line 205
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    return v0
.end method

.method public getMpListFilter()Lcom/android/music/common/data/MpListFilter;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v0

    return-object v0
.end method

.method public getNext(Z)Landroid/net/Uri;
    .locals 7
    .parameter "ignoreRepeatOne"

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 103
    .local v1, mediaUri:Landroid/net/Uri;
    iget v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 104
    iget v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    .line 106
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_bucketID:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 107
    .local v2, nCount:I
    iget v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    if-lt v3, v2, :cond_0

    .line 108
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    .line 110
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget v4, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_sortOrder:I

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_bucketID:Ljava/lang/String;

    iget v6, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    .line 111
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->getFile_ID(Ljava/lang/String;)I

    move-result v0

    .line 112
    .local v0, _id:I
    if-ltz v0, :cond_1

    .line 113
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    .line 119
    :goto_0
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    .line 129
    .end local v0           #_id:I
    .end local v2           #nCount:I
    :goto_1
    return-object v3

    .line 115
    .restart local v0       #_id:I
    .restart local v2       #nCount:I
    :cond_1
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    goto :goto_0

    .line 121
    .end local v0           #_id:I
    .end local v2           #nCount:I
    :cond_2
    iget v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 123
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    goto :goto_1

    .line 126
    :cond_3
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget v4, p0, Lcom/android/music/player/data/MusicPlayerController;->mRepeatMode:I

    invoke-virtual {v3, p1, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->getNext(ZI)Landroid/net/Uri;

    move-result-object v1

    .line 128
    sget-object v3, Lcom/android/music/player/data/MusicPlayerController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNext:LAUNCH_NORMAL ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v1

    .line 129
    goto :goto_1
.end method

.method public getPrev()Landroid/net/Uri;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 134
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 135
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    .line 136
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    if-gez v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_bucketID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 138
    .local v1, nCount:I
    sub-int v2, v1, v5

    iput v2, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    .line 141
    .end local v1           #nCount:I
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_sortOrder:I

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_bucketID:Ljava/lang/String;

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_iPos:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/music/player/data/MusicPlayerIterator;->getFile_ID(Ljava/lang/String;)I

    move-result v0

    .line 143
    .local v0, _id:I
    if-ltz v0, :cond_1

    .line 144
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    .line 150
    :goto_0
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    .line 155
    .end local v0           #_id:I
    :goto_1
    return-object v2

    .line 146
    .restart local v0       #_id:I
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->myFiles_filePath:Ljava/lang/String;

    goto :goto_0

    .line 152
    .end local v0           #_id:I
    :cond_2
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    if-ne v2, v5, :cond_3

    .line 153
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->previewUri:Landroid/net/Uri;

    goto :goto_1

    .line 155
    :cond_3
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v2}, Lcom/android/music/player/data/MusicPlayerIterator;->getPrev()Landroid/net/Uri;

    move-result-object v2

    goto :goto_1
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mRepeatMode:I

    return v0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getShuffle()Z

    move-result v0

    return v0
.end method

.method public initIterator(ILcom/android/music/common/data/MpListFilter;)Z
    .locals 1
    .parameter "position"
    .parameter "filter"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/data/MusicPlayerIterator;->initIterator(ILcom/android/music/common/data/MpListFilter;)Z

    move-result v0

    return v0
.end method

.method public initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z
    .locals 1
    .parameter "fileUri"
    .parameter "filter"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0, p1, p2}, Lcom/android/music/player/data/MusicPlayerIterator;->initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z

    move-result v0

    return v0
.end method

.method public setCurrentMedia(Landroid/net/Uri;)V
    .locals 1
    .parameter "uri"

    .prologue
    .line 172
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mLaunchMode:I

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerIterator;->setCurItem(Landroid/net/Uri;)V

    .line 175
    :cond_0
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0
    .parameter "repeat"

    .prologue
    .line 246
    iput p1, p0, Lcom/android/music/player/data/MusicPlayerController;->mRepeatMode:I

    .line 247
    return-void
.end method

.method public setShuffle(Z)V
    .locals 1
    .parameter "bShuffle"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerController;->mMusicPlayerIterator:Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0, p1}, Lcom/android/music/player/data/MusicPlayerIterator;->setShuffle(Z)V

    .line 66
    return-void
.end method
