.class Lcom/android/browser/Bookmarks;
.super Ljava/lang/Object;
.source "Bookmarks.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Bookmarks"

.field private static final acceptableBookmarkSchemes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "https:"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "about:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "data:"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "javascript:"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "file:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "content:"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "rtsp:"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZI)V
    .locals 9
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "name"
    .parameter "thumbnail"
    .parameter "retainIcon"
    .parameter "folder"

    .prologue
    .line 71
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 72
    .local v1, creationTime:J
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 75
    .local v5, map:Landroid/content/ContentValues;
    const/4 v0, 0x0

    .line 77
    .local v0, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1, p2}, Landroid/provider/Browser;->getVisitedLike(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 78
    .end local v0           #cursor:Landroid/database/Cursor;
    .local v3, cursor:Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-nez v0, :cond_4

    .line 82
    const-string v0, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #creationTime:J
    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v0, "title"

    invoke-virtual {v5, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string p3, "bookmark"

    .end local p3
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, p3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string p3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 88
    const-string p3, "folder"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 89
    const-string p3, "browser"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bookmarks.addBookmark folder = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "_id = "

    .end local p6
    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const/4 p6, 0x0

    invoke-interface {v3, p6}, Landroid/database/Cursor;->getInt(I)I

    move-result p6

    invoke-virtual {p4, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/4 p6, 0x0

    invoke-virtual {p1, p3, v5, p4, p6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :cond_0
    :goto_0
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    move-object p1, v3

    .line 151
    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    :cond_1
    :goto_1
    if-eqz p5, :cond_2

    .line 152
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p1

    .end local p1           #cursor:Landroid/database/Cursor;
    invoke-virtual {p1, p2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    .line 154
    :cond_2
    if-eqz p0, :cond_3

    .line 155
    const p1, 0x7f090008

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p2
    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 158
    :cond_3
    return-void

    .line 94
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local p0
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p6
    :cond_4
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 95
    .local v0, count:I
    const/4 v6, 0x0

    .line 96
    .local v6, matchedTitle:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v0, :cond_9

    .line 99
    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 100
    const/4 v7, 0x5

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 104
    const/16 v4, 0x9

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    .end local v4           #i:I
    move-result v4

    if-ne v4, p6, :cond_9

    .line 106
    const-string v4, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .end local v6           #matchedTitle:Z
    invoke-virtual {v5, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 109
    sget-object v4, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    const/4 v4, 0x1

    .line 116
    .local v4, matchedTitle:Z
    :goto_3
    if-nez v4, :cond_0

    .line 120
    const-string v4, "title"

    .end local v4           #matchedTitle:Z
    invoke-virtual {v5, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const-string p3, "url"

    .end local p3
    invoke-virtual {v5, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string p3, "created"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .end local v1           #creationTime:J
    invoke-virtual {v5, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    const-string p3, "bookmark"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 124
    const-string p3, "date"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, p3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 125
    const-string p3, "thumbnail"

    invoke-static {p4}, Lcom/android/browser/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p4

    .end local p4
    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 128
    const-string p3, "folder"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v5, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 130
    const/4 p3, 0x0

    .line 131
    .local p3, visits:I
    if-lez v0, :cond_5

    .line 137
    const/4 p3, 0x2

    invoke-interface {v3, p3}, Landroid/database/Cursor;->getInt(I)I

    .end local p3           #visits:I
    move-result p3

    .line 142
    .restart local p3       #visits:I
    :cond_5
    const-string p4, "visits"

    add-int/lit8 p3, p3, 0x3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .end local p3           #visits:I
    move-result-object p3

    invoke-virtual {v5, p4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    sget-object p3, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p3, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 146
    .end local v0           #count:I
    .end local p6
    :catch_0
    move-exception p1

    move-object p3, p1

    move-object p1, v3

    .line 147
    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :goto_4
    :try_start_3
    const-string p4, "Bookmarks"

    const-string p6, "addBookmark"

    invoke-static {p4, p6, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 149
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 96
    .restart local v0       #count:I
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .local v4, i:I
    .restart local v6       #matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 149
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v4           #i:I
    .end local v6           #matchedTitle:Z
    .local v0, cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #creationTime:J
    .end local p1           #cr:Landroid/content/ContentResolver;
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .end local p6
    .local p0, cursor:Landroid/database/Cursor;
    :goto_5
    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_7
    throw p1

    .restart local v3       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p1       #cr:Landroid/content/ContentResolver;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v3

    .end local v3           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    goto :goto_5

    .local p0, context:Landroid/content/Context;
    .local p1, cursor:Landroid/database/Cursor;
    .local p3, e:Ljava/lang/IllegalStateException;
    :catchall_2
    move-exception p0

    move-object v8, p0

    move-object p0, p1

    .end local p1           #cursor:Landroid/database/Cursor;
    .local p0, cursor:Landroid/database/Cursor;
    move-object p1, v8

    goto :goto_5

    .line 146
    .restart local v0       #cursor:Landroid/database/Cursor;
    .restart local v1       #creationTime:J
    .local p0, context:Landroid/content/Context;
    .local p1, cr:Landroid/content/ContentResolver;
    .local p3, name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :catch_1
    move-exception p1

    move-object p3, p1

    move-object p1, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto :goto_4

    .end local v1           #creationTime:J
    .end local p3           #name:Ljava/lang/String;
    .end local p4
    .end local p6
    .restart local v3       #cursor:Landroid/database/Cursor;
    .local p1, cr:Landroid/content/ContentResolver;
    :cond_8
    move-object p1, v3

    .end local v3           #cursor:Landroid/database/Cursor;
    .local p1, cursor:Landroid/database/Cursor;
    goto/16 :goto_1

    .local v0, count:I
    .restart local v1       #creationTime:J
    .restart local v3       #cursor:Landroid/database/Cursor;
    .restart local v6       #matchedTitle:Z
    .local p1, cr:Landroid/content/ContentResolver;
    .restart local p3       #name:Ljava/lang/String;
    .restart local p4
    .restart local p6
    :cond_9
    move v4, v6

    .end local v6           #matchedTitle:Z
    .local v4, matchedTitle:Z
    goto/16 :goto_3
.end method

.method private static bitmapToBytes(Landroid/graphics/Bitmap;)[B
    .locals 3
    .parameter "bm"

    .prologue
    .line 217
    if-nez p0, :cond_0

    .line 218
    const/4 v1, 0x0

    .line 223
    :goto_0
    return-object v1

    .line 221
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 222
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 223
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_0
.end method

.method static removeFromBookmarks(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "cr"
    .parameter "url"
    .parameter "title"

    .prologue
    const-string v0, "removeFromBookmarks"

    .line 172
    const/4 v6, 0x0

    .line 174
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/Browser;->HISTORY_PROJECTION:[Ljava/lang/String;

    const-string v3, "url = ? AND title = ?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    .line 182
    .local v8, first:Z
    if-nez v8, :cond_1

    .line 183
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL is not in the database! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v8           #first:Z
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 210
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v0, "Bookmarks"

    const-string v1, "removeFromBookmarks"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 214
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local v8       #first:Z
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    .line 188
    sget-object v0, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 190
    .local v10, uri:Landroid/net/Uri;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 192
    .local v9, numVisits:I
    if-nez v9, :cond_3

    .line 193
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v10, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    :goto_1
    if-eqz p0, :cond_2

    .line 206
    const v0, 0x7f090009

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 212
    :cond_2
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 197
    :cond_3
    :try_start_3
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 198
    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "bookmark"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 200
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p1, v10, v11, v0, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 201
    :catch_1
    move-exception v7

    .line 202
    .restart local v7       #e:Ljava/lang/IllegalStateException;
    :try_start_5
    const-string v0, "removeFromBookmarks"

    const-string v1, "no database!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 212
    .end local v7           #e:Ljava/lang/IllegalStateException;
    .end local v8           #first:Z
    .end local v9           #numVisits:I
    .end local v10           #uri:Landroid/net/Uri;
    .end local v11           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method static urlHasAcceptableScheme(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 227
    if-nez p0, :cond_0

    move v1, v2

    .line 236
    :goto_0
    return v1

    .line 231
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 232
    sget-object v1, Lcom/android/browser/Bookmarks;->acceptableBookmarkSchemes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 236
    goto :goto_0
.end method
