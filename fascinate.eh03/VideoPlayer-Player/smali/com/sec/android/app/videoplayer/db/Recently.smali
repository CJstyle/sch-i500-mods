.class public Lcom/sec/android/app/videoplayer/db/Recently;
.super Ljava/lang/Object;
.source "Recently.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/db/IVideoSubList;


# static fields
.field private static mInstance:Lcom/sec/android/app/videoplayer/db/Recently;


# instance fields
.field private mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

.field mSelectCols:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const-string v3, "_id"

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, "video_uri"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mSelectCols:[Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-direct {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    .line 31
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "recently"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/videoplayer/db/DbExec;->setTable(Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    const-string v1, "_id"

    invoke-virtual {v0, v3}, Lcom/sec/android/app/videoplayer/db/DbExec;->setIdColumn(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/database/sqlite/SQLiteDatabase;)Lcom/sec/android/app/videoplayer/db/Recently;
    .locals 2
    .parameter "db"

    .prologue
    .line 36
    const-class v0, Lcom/sec/android/app/videoplayer/db/Recently;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/db/Recently;->mInstance:Lcom/sec/android/app/videoplayer/db/Recently;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/sec/android/app/videoplayer/db/Recently;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/db/Recently;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sput-object v1, Lcom/sec/android/app/videoplayer/db/Recently;->mInstance:Lcom/sec/android/app/videoplayer/db/Recently;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    sget-object v1, Lcom/sec/android/app/videoplayer/db/Recently;->mInstance:Lcom/sec/android/app/videoplayer/db/Recently;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public add(Landroid/content/ContentValues;)V
    .locals 1
    .parameter "values"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/videoplayer/db/DbExec;->add(Landroid/content/ContentValues;)V

    .line 45
    return-void
.end method

.method public addBookmark(Ljava/lang/String;JJ)Z
    .locals 1
    .parameter "uri"
    .parameter "videoId"
    .parameter "curTime"

    .prologue
    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public deleteAll()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/db/DbExec;->deleteAll()I

    move-result v0

    return v0
.end method

.method public deleteBookmark(JLjava/util/ArrayList;)I
    .locals 1
    .parameter "videoId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 127
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public getBookmarkList(Ljava/lang/String;J)Ljava/util/ArrayList;
    .locals 1
    .parameter "uri"
    .parameter "videoId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public getList()Landroid/database/Cursor;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    iget-object v1, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mSelectCols:[Ljava/lang/String;

    const-string v2, "video_uri"

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/sec/android/app/videoplayer/db/DbExec;->getList([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getTotalCnt(J)I
    .locals 1
    .parameter "videoId"

    .prologue
    .line 136
    const/4 v0, 0x0

    return v0
.end method

.method public update(JLandroid/content/ContentValues;)I
    .locals 1
    .parameter "id"
    .parameter "values"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/db/Recently;->mExedb:Lcom/sec/android/app/videoplayer/db/DbExec;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/db/DbExec;->update(JLandroid/content/ContentValues;)I

    move-result v0

    return v0
.end method
