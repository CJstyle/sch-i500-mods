.class public interface abstract Lcom/sec/android/app/videoplayer/db/IVideoSubList;
.super Ljava/lang/Object;
.source "IVideoSubList.java"


# virtual methods
.method public abstract add(Landroid/content/ContentValues;)V
.end method

.method public abstract addBookmark(Ljava/lang/String;JJ)Z
.end method

.method public abstract deleteAll()I
.end method

.method public abstract deleteBookmark(JLjava/util/ArrayList;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract getBookmarkList(Ljava/lang/String;J)Ljava/util/ArrayList;
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
.end method

.method public abstract getList()Landroid/database/Cursor;
.end method

.method public abstract getTotalCnt(J)I
.end method

.method public abstract update(JLandroid/content/ContentValues;)I
.end method
