.class public Lcom/android/music/player/data/MusicPlayerIterator;
.super Ljava/lang/Object;
.source "MusicPlayerIterator.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _id:I

.field private count:I

.field private curAudioId:I

.field private curFilePath:Ljava/lang/String;

.field private curIndex:I

.field private curUri:Landroid/net/Uri;

.field private db:Lcom/android/music/common/data/MusicDB;

.field private isShuffleMode:Z

.field private listFilter:Lcom/android/music/common/data/MpListFilter;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private shuffleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/android/music/player/data/MusicPlayerIterator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/music/common/data/MusicDB;Landroid/content/Context;)V
    .locals 3
    .parameter "mMusicDB"
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    .line 25
    iput-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    .line 26
    iput-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    .line 27
    iput-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    .line 28
    iput-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 29
    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 30
    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 31
    iput-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mContext:Landroid/content/Context;

    .line 37
    iput-object p1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    .line 38
    iput-object p2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mContext:Landroid/content/Context;

    .line 40
    return-void
.end method

.method private createShuffleIndex(IZ)V
    .locals 10
    .parameter "position"
    .parameter "rearrange"

    .prologue
    const/4 v9, 0x1

    .line 647
    sget-object v6, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "createShuffleIndex(position:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ",rearrange="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, i:I
    const/4 v2, 0x0

    .line 651
    .local v2, iOffset:I
    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    .line 652
    .local v3, nRemainCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 653
    .local v5, tempList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, -0x1

    .line 655
    .local v1, iLastIndex:I
    if-ltz p1, :cond_0

    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-lt p1, v6, :cond_1

    .line 656
    :cond_0
    const/4 p1, 0x0

    .line 657
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 658
    const/4 p2, 0x0

    .line 663
    :cond_1
    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-gtz v6, :cond_2

    .line 704
    :goto_0
    return-void

    .line 666
    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-ge v0, v6, :cond_3

    .line 667
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 666
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 670
    :cond_3
    if-ne p2, v9, :cond_4

    .line 672
    const/4 v0, 0x0

    .line 673
    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 674
    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 687
    :goto_2
    new-instance v4, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Random;-><init>(J)V

    .line 689
    .local v4, rand:Ljava/util/Random;
    :goto_3
    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-ge v0, v6, :cond_6

    .line 690
    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    sub-int v3, v6, v0

    .line 691
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 695
    :goto_4
    if-nez v0, :cond_5

    if-le v3, v9, :cond_5

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    if-ne v1, v2, :cond_5

    .line 696
    invoke-virtual {v4, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    goto :goto_4

    .line 678
    .end local v4           #rand:Ljava/util/Random;
    :cond_4
    const/4 v0, 0x1

    .line 679
    const/4 v1, -0x1

    .line 681
    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 682
    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 683
    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 698
    .restart local v4       #rand:Ljava/util/Random;
    :cond_5
    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 702
    :cond_6
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    goto :goto_0
.end method

.method private getAudioIdFromUri(Ljava/lang/String;)I
    .locals 8
    .parameter "uri"

    .prologue
    const/4 v7, 0x1

    .line 836
    const/4 v0, -0x1

    .line 837
    .local v0, id:I
    if-nez p1, :cond_0

    .line 838
    sget-object v3, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v4, "getAudioIdFromUri(null) is called"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 856
    .end local v0           #id:I
    .local v1, id:I
    :goto_0
    return v1

    .line 842
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_0
    const-string v3, "content://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 843
    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 844
    .local v2, lastIndex:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    if-ge v2, v3, :cond_1

    .line 845
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 853
    .end local v2           #lastIndex:I
    :cond_1
    :goto_1
    sget-object v3, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v4, "getAudioIdFromUri(uri=%s) :id=[%d]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 856
    .end local v0           #id:I
    .restart local v1       #id:I
    goto :goto_0

    .line 847
    .end local v1           #id:I
    .restart local v0       #id:I
    :cond_2
    const-string v3, "file://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 848
    const/4 v3, 0x7

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 849
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 850
    invoke-virtual {p0, p1}, Lcom/android/music/player/data/MusicPlayerIterator;->getFile_ID(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method private getCursorCount()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 802
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-nez v0, :cond_0

    .line 803
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "getCursorCount(): listFilter==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :goto_0
    return-void

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 809
    iput-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    .line 812
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 814
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v1, v1, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v1, v1, v5

    iget v1, v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v0, v1}, Lcom/android/music/common/data/MusicDB;->getItemCountInPlaylist(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    .line 832
    :goto_1
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "getCursorCount(): count[%d]"

    new-array v2, v7, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 818
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v1, v1, Lcom/android/music/common/data/MpListFilter;->listType:I

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    new-array v3, v7, [Ljava/lang/String;

    const-string v4, "count(_id)"

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/android/music/common/data/MusicDB;->getMusicListCursor(ILcom/android/music/common/data/MpListFilter;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    .line 820
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 821
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 823
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    .line 826
    :cond_3
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 827
    iput-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->mCursor:Landroid/database/Cursor;

    goto :goto_1

    .line 829
    :cond_4
    iput v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    goto :goto_1
.end method

.method private initItemList()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 707
    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 708
    iput v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 709
    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    .line 710
    iput v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    .line 711
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 712
    iput v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 714
    return-void
.end method

.method private setCurUriWith_Id(I)Landroid/net/Uri;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 860
    const/4 v1, 0x0

    .line 862
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-nez v2, :cond_0

    .line 863
    const-string v2, "setCurUriAndId(%d) listFilter==null"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 864
    .local v0, msg:Ljava/lang/String;
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 869
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v3, v4, p1}, Lcom/android/music/common/data/MusicDB;->getAudioID(Lcom/android/music/common/data/MpListFilter;I)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 871
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "setCurUriWith_Id(%d):uri=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    return-object v1
.end method


# virtual methods
.method public InitIndex()V
    .locals 1

    .prologue
    .line 747
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 782
    :cond_0
    return-void
.end method

.method public getCurAudioId()I
    .locals 4

    .prologue
    .line 319
    const/4 v0, -0x1

    .line 321
    .local v0, audioId:I
    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-nez v1, :cond_0

    .line 322
    sget-object v1, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v2, "getCurAudioId():curUri == null, [-1]"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 328
    :goto_0
    return v1

    .line 326
    :cond_0
    sget-object v1, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurAudioId()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    goto :goto_0
.end method

.method public getCurFilePath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 346
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurFilePath()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCurItem()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getCurListType()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCurPos()I
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 272
    const/4 v0, -0x1

    .line 273
    .local v0, index:I
    iget-boolean v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v5, :cond_5

    .line 274
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    if-ltz v5, :cond_0

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-nez v5, :cond_1

    .line 275
    :cond_0
    const-string v5, "getCurPos(): shuffleList.isEmpty() || curIndex=%d"

    new-array v6, v10, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 276
    .local v2, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 310
    .end local v0           #index:I
    .end local v2           #msg:Ljava/lang/String;
    .local v1, index:I
    :goto_0
    return v1

    .line 281
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_1
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 282
    .local v3, tempIndex:I
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v5, v6, v3}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v4

    .line 284
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_4

    .line 288
    :cond_2
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    .line 289
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 291
    invoke-direct {p0, v0, v9}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 308
    .end local v3           #tempIndex:I
    .end local v4           #tempUri:Landroid/net/Uri;
    :cond_3
    :goto_1
    sget-object v5, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v6, "getCurPos(), shuffle:%s,index:%d,curIndex=%d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    iget v9, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 310
    .end local v0           #index:I
    .restart local v1       #index:I
    goto :goto_0

    .line 301
    .end local v1           #index:I
    .restart local v0       #index:I
    .restart local v3       #tempIndex:I
    .restart local v4       #tempUri:Landroid/net/Uri;
    :cond_4
    move v0, v3

    goto :goto_1

    .line 305
    .end local v3           #tempIndex:I
    .end local v4           #tempUri:Landroid/net/Uri;
    :cond_5
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 306
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    goto :goto_1
.end method

.method public getCur_ID()I
    .locals 3

    .prologue
    .line 314
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCur_ID()["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    return v0
.end method

.method public getFilePath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .parameter "uri"

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, filePath:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 370
    :goto_0
    sget-object v1, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFilePath()["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    return-object v0

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v1, v1, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 364
    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Lcom/android/music/common/data/MpListFilter;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 367
    :cond_1
    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v1, p1}, Lcom/android/music/common/data/MusicDB;->getAudioFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFile_ID(Ljava/lang/String;)I
    .locals 2
    .parameter "filePath"

    .prologue
    .line 917
    if-nez p1, :cond_0

    .line 918
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "getFile_ID(filePath == null)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v0, -0x1

    .line 921
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, p1}, Lcom/android/music/common/data/MusicDB;->getFileId(Ljava/lang/String;)J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getItem(I)Landroid/net/Uri;
    .locals 4
    .parameter "i"

    .prologue
    .line 576
    const/4 v0, 0x0

    .line 577
    .local v0, mediaUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v1, v1, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v1, v1, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v1, v2, p1}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v0

    .line 587
    :goto_0
    return-object v0

    .line 581
    :cond_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2, v3, p1}, Lcom/android/music/common/data/MusicDB;->getAudioID(Lcom/android/music/common/data/MpListFilter;I)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    return v0
.end method

.method public getItemCountFromDB()I
    .locals 1

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 448
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    return v0
.end method

.method public getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "bucketID"
    .parameter "filePath"

    .prologue
    .line 901
    const/4 v0, 0x0

    .line 903
    .local v0, nCount:I
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    if-nez v2, :cond_0

    .line 905
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getItemCountInMxList() db == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 913
    .end local v0           #nCount:I
    .local v1, nCount:I
    :goto_0
    return v1

    .line 909
    .end local v1           #nCount:I
    .restart local v0       #nCount:I
    :cond_0
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v2, p1, p2}, Lcom/android/music/common/data/MusicDB;->getItemCountInMxList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 911
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getItemCountInMxList return - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 913
    .end local v0           #nCount:I
    .restart local v1       #nCount:I
    goto :goto_0
.end method

.method public getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "order"
    .parameter "bucketID"
    .parameter "iPos"

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    if-nez v0, :cond_0

    .line 892
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "getItemFilePathMxList() db == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/4 v0, 0x0

    .line 896
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/common/data/MusicDB;->getItemFilePathMxList(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemPositionMxList(ILjava/lang/String;Ljava/lang/String;)I
    .locals 5
    .parameter "order"
    .parameter "bucketID"
    .parameter "path"

    .prologue
    const/4 v4, -0x1

    .line 877
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    if-nez v0, :cond_0

    .line 878
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "getItemPositionMxList() db == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 886
    :goto_0
    return v0

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, p3}, Lcom/android/music/common/data/MusicDB;->getFileId(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/music/common/data/MusicDB;->getItemPositionMxList(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 885
    :cond_1
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "DB is not exist!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 886
    goto :goto_0
.end method

.method public getMpListFilter()Lcom/android/music/common/data/MpListFilter;
    .locals 1

    .prologue
    .line 742
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    return-object v0
.end method

.method public getNext(ZI)Landroid/net/Uri;
    .locals 10
    .parameter "ignoreRepeatOne"
    .parameter "repeatMode"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 452
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getNext(%s,%d) is called"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, -0x1

    .line 456
    .local v0, index:I
    iget v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    .line 457
    .local v1, tempCount:I
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 459
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-gtz v2, :cond_0

    move-object v2, v9

    .line 526
    :goto_0
    return-object v2

    .line 462
    :cond_0
    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_1

    .line 463
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 467
    :goto_1
    const/16 v2, -0x64

    if-ne v0, v2, :cond_2

    .line 468
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getNext(), current file is removed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 469
    goto :goto_0

    .line 465
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    goto :goto_1

    .line 472
    :cond_2
    if-nez p1, :cond_4

    .line 473
    if-ne p2, v8, :cond_3

    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    sub-int/2addr v2, v7

    if-ne v0, v2, :cond_3

    .line 475
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getNext() : REPEAT_OFF, last song was played, so stop."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 478
    goto :goto_0

    .line 479
    :cond_3
    if-ne p2, v7, :cond_4

    .line 480
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getNext() : REPEAT_ONE, current song is played again."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    goto :goto_0

    .line 487
    :cond_4
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    sub-int/2addr v2, v7

    if-lt v0, v2, :cond_6

    .line 491
    const/4 v0, 0x0

    .line 492
    iput v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 493
    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-eq v2, v1, :cond_5

    .line 494
    invoke-direct {p0, v0, v6}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 509
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    invoke-virtual {v3, v4, v2}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 510
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-nez v2, :cond_8

    .line 511
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getNext() curUri==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->initItemList()V

    .line 519
    :goto_4
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getNext():count[%d],_id[%d],curUri[%s]"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 497
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 499
    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_5

    .line 500
    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 501
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-eq v2, v1, :cond_5

    .line 502
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNext() : isShuffleMode && count("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") != tempCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-direct {p0, v0, v6}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    goto/16 :goto_2

    :cond_7
    move v2, v0

    .line 509
    goto :goto_3

    .line 514
    :cond_8
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/music/player/data/MusicPlayerIterator;->getAudioIdFromUri(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 515
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_5
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/music/common/data/MusicDB;->get_ID(Lcom/android/music/common/data/MpListFilter;II)I

    move-result v2

    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 516
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    goto/16 :goto_4

    :cond_9
    move v2, v0

    .line 515
    goto :goto_5
.end method

.method public getNextPos()I
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 231
    const/4 v0, -0x1

    .line 233
    .local v0, index:I
    iget-boolean v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v5, :cond_6

    .line 234
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    if-gez v5, :cond_1

    .line 235
    :cond_0
    const-string v5, "getCurPos(): shuffleList.isEmpty() || curIndex=%d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 236
    .local v1, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 241
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 242
    .local v3, tempIndex:I
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v5, v6, v3}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v4

    .line 244
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 246
    :cond_2
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    .line 247
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 248
    invoke-direct {p0, v0, v9}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 251
    :cond_3
    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    add-int/lit8 v2, v5, 0x1

    .line 252
    .local v2, nextShufflePos:I
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_4

    .line 253
    const/4 v2, 0x0

    .line 255
    :cond_4
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 268
    .end local v2           #nextShufflePos:I
    .end local v3           #tempIndex:I
    .end local v4           #tempUri:Landroid/net/Uri;
    :cond_5
    :goto_0
    return v0

    .line 258
    .restart local p0
    :cond_6
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-eqz v5, :cond_7

    .line 259
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    .line 261
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 262
    invoke-virtual {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemCount()I

    move-result v5

    if-lt v0, v5, :cond_5

    .line 264
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrev()Landroid/net/Uri;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 531
    const/4 v0, -0x1

    .line 533
    .local v0, index:I
    iget v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    .line 534
    .local v1, tempCount:I
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 536
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-gtz v2, :cond_0

    move-object v2, v6

    .line 571
    :goto_0
    return-object v2

    .line 539
    :cond_0
    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_1

    .line 540
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 544
    :goto_1
    const/16 v2, -0x64

    if-ne v0, v2, :cond_2

    .line 545
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getPrev(), current file is removed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v6

    .line 546
    goto :goto_0

    .line 542
    :cond_1
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    goto :goto_1

    .line 547
    :cond_2
    if-gtz v0, :cond_4

    .line 548
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 553
    :goto_2
    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_3

    .line 554
    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 555
    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-eq v1, v2, :cond_3

    .line 556
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPrev() : isShuffleMode && count("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") != tempCount("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 562
    :cond_3
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_3
    invoke-virtual {v3, v4, v2}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 563
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-nez v2, :cond_6

    .line 564
    sget-object v2, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v3, "getPrev() curUri==null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->initItemList()V

    .line 571
    :goto_4
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 550
    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    move v2, v0

    .line 562
    goto :goto_3

    .line 567
    :cond_6
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/music/player/data/MusicPlayerIterator;->getAudioIdFromUri(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 568
    iget-object v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v4, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    iget-boolean v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_5
    invoke-virtual {v3, v4, v5, v2}, Lcom/android/music/common/data/MusicDB;->get_ID(Lcom/android/music/common/data/MpListFilter;II)I

    move-result v2

    iput v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 569
    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move v2, v0

    .line 568
    goto :goto_5
.end method

.method public getPrevPos()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 189
    const/4 v0, -0x1

    .line 191
    .local v0, index:I
    iget-boolean v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v5, :cond_6

    .line 192
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    if-gez v5, :cond_1

    .line 193
    :cond_0
    const-string v5, "getCurPos(): shuffleList.isEmpty() || curIndex=%d"

    new-array v6, v9, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, msg:Ljava/lang/String;
    sget-object v5, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v5, Ljava/lang/Error;

    invoke-direct {v5, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 200
    .end local v1           #msg:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 201
    .local v3, tempIndex:I
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v5, v6, v3}, Lcom/android/music/common/data/MusicDB;->getItemContentUri(Lcom/android/music/common/data/MpListFilter;I)Landroid/net/Uri;

    move-result-object v4

    .line 203
    .local v4, tempUri:Landroid/net/Uri;
    if-eqz v4, :cond_2

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v5, v4}, Landroid/net/Uri;->compareTo(Landroid/net/Uri;)I

    move-result v5

    if-eqz v5, :cond_3

    .line 205
    :cond_2
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    .line 206
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 207
    invoke-direct {p0, v0, v10}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 210
    :cond_3
    iget v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    sub-int v2, v5, v9

    .line 211
    .local v2, prevShufflePos:I
    if-gez v2, :cond_4

    .line 212
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int v2, v5, v9

    .line 214
    :cond_4
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 227
    .end local v2           #prevShufflePos:I
    .end local v3           #tempIndex:I
    .end local v4           #tempUri:Landroid/net/Uri;
    :cond_5
    :goto_0
    return v0

    .line 217
    .restart local p0
    :cond_6
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-eqz v5, :cond_7

    .line 218
    iget-object v5, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v6, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v7, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v8, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    .line 220
    :cond_7
    add-int/lit8 v0, v0, -0x1

    .line 221
    if-gez v0, :cond_5

    .line 223
    invoke-virtual {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getItemCountFromDB()I

    move-result v5

    sub-int v0, v5, v9

    goto :goto_0
.end method

.method public getShuffle()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    return v0
.end method

.method public initIterator(IIILjava/lang/String;ILjava/lang/String;)Z
    .locals 7
    .parameter "id"
    .parameter "listType"
    .parameter "filterId"
    .parameter "strFilter"
    .parameter "filterId2"
    .parameter "strFilter2"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, ","

    .line 44
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initIterator_1("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->initItemList()V

    .line 50
    if-gt p5, v6, :cond_0

    if-eqz p6, :cond_3

    .line 51
    :cond_0
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    const/4 v1, 0x2

    invoke-direct {v0, p2, v1}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    .line 53
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p5, v6, :cond_2

    move v3, v5

    :goto_0
    invoke-direct {v1, v2, v3, p5, p6}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v1, v0, v5

    .line 63
    :goto_1
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 65
    iput p1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 66
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-direct {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->setCurUriWith_Id(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getAudioIdFromUri(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 68
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    .line 70
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    if-gez v0, :cond_5

    .line 71
    :cond_1
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "initIterator_1() count<=0 || _id<0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 79
    :goto_2
    return v0

    :cond_2
    move v3, v4

    .line 53
    goto :goto_0

    .line 57
    :cond_3
    new-instance v0, Lcom/android/music/common/data/MpListFilter;

    invoke-direct {v0, p2, v5}, Lcom/android/music/common/data/MpListFilter;-><init>(II)V

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    .line 59
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v0, v0, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    new-instance v1, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq p3, v6, :cond_4

    move v3, v5

    :goto_3
    invoke-direct {v1, v2, v3, p3, p4}, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;-><init>(Lcom/android/music/common/data/MpListFilter;ZILjava/lang/String;)V

    aput-object v1, v0, v4

    goto :goto_1

    :cond_4
    move v3, v4

    goto :goto_3

    .line 75
    :cond_5
    iget-boolean v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v0, :cond_6

    .line 76
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    :cond_6
    move v0, v5

    .line 79
    goto :goto_2
.end method

.method public initIterator(ILcom/android/music/common/data/MpListFilter;)Z
    .locals 5
    .parameter "id"
    .parameter "filter"

    .prologue
    const/4 v4, 0x0

    const-string v3, ","

    .line 85
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->initItemList()V

    .line 87
    iput-object p2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    .line 89
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-nez v0, :cond_0

    .line 90
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "initIterator: filter==null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 120
    :goto_0
    return v0

    .line 93
    :cond_0
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initIterator_2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/music/common/data/MpListFilter;->listType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v4

    iget v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->iFilter_ID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/music/common/data/MpListFilter;->filter:[Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;

    aget-object v2, v2, v4

    iget-object v2, v2, Lcom/android/music/common/data/MpListFilter$MpListFilterSetting;->strFilterData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 97
    iput p1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 98
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v0, v0, Lcom/android/music/common/data/MpListFilter;->listType:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 101
    :cond_1
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-direct {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->setCurUriWith_Id(I)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 102
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getAudioIdFromUri(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 109
    :goto_1
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    .line 111
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    if-gez v0, :cond_4

    .line 112
    :cond_2
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "initIterator_2() count<=0 || _id<0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 113
    goto/16 :goto_0

    .line 106
    :cond_3
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 107
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    goto :goto_1

    .line 116
    :cond_4
    iget-boolean v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v0, :cond_5

    .line 117
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 120
    :cond_5
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public initIterator(Landroid/net/Uri;Lcom/android/music/common/data/MpListFilter;)Z
    .locals 5
    .parameter "fileUri"
    .parameter "mFilter"

    .prologue
    const/4 v4, 0x0

    .line 125
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->initItemList()V

    .line 127
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 128
    :cond_0
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "initIterator_3() fileUri == null || mFilter == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 152
    :goto_0
    return v0

    .line 132
    :cond_1
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initIterator_3("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/music/common/data/MpListFilter;->listType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iput-object p2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    .line 135
    iput-object p1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 136
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getAudioIdFromUri(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 137
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    .line 139
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 141
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-gtz v0, :cond_2

    .line 142
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "initIterator_3() count <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 143
    goto :goto_0

    .line 146
    :cond_2
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->get_ID(Lcom/android/music/common/data/MpListFilter;II)I

    move-result v0

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 148
    iget-boolean v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    invoke-direct {p0, v0, v4}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    .line 152
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setCurItem(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, -0x1

    .line 597
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurItem()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iput-object p1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    .line 600
    if-nez p1, :cond_3

    move v0, v3

    :goto_1
    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    .line 602
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    if-eqz v0, :cond_0

    .line 604
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    if-ne v0, v3, :cond_4

    move v0, v3

    :goto_2
    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 608
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    invoke-virtual {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getFilePath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curFilePath:Ljava/lang/String;

    .line 609
    :cond_1
    return-void

    .line 597
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 600
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/music/player/data/MusicPlayerIterator;->getAudioIdFromUri(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curAudioId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->get_ID(Lcom/android/music/common/data/MpListFilter;II)I

    move-result v0

    goto :goto_2
.end method

.method public setShuffle(Z)V
    .locals 4
    .parameter "bShuffle"

    .prologue
    .line 162
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShuffle("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-boolean v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    if-ne v0, p1, :cond_0

    .line 184
    :goto_0
    return-void

    .line 166
    :cond_0
    iput-boolean p1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    .line 170
    iget-boolean v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->isShuffleMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 171
    invoke-direct {p0}, Lcom/android/music/player/data/MusicPlayerIterator;->getCursorCount()V

    .line 172
    iget v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->count:I

    if-gtz v0, :cond_1

    .line 173
    sget-object v0, Lcom/android/music/player/data/MusicPlayerIterator;->TAG:Ljava/lang/String;

    const-string v1, "isShuffleMode == true, setShuffle(): count <= 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->db:Lcom/android/music/common/data/MusicDB;

    iget-object v1, p0, Lcom/android/music/player/data/MusicPlayerIterator;->listFilter:Lcom/android/music/common/data/MpListFilter;

    iget-object v2, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curUri:Landroid/net/Uri;

    iget v3, p0, Lcom/android/music/player/data/MusicPlayerIterator;->_id:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/music/common/data/MusicDB;->getItemPosition(Lcom/android/music/common/data/MpListFilter;Landroid/net/Uri;I)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/music/player/data/MusicPlayerIterator;->createShuffleIndex(IZ)V

    goto :goto_0

    .line 179
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->curIndex:I

    .line 181
    iget-object v0, p0, Lcom/android/music/player/data/MusicPlayerIterator;->shuffleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
