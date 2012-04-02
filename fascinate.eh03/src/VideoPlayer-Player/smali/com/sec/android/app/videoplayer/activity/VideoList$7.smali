.class Lcom/sec/android/app/videoplayer/activity/VideoList$7;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->startThumbnailCreateThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1076
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mCursor:Landroid/database/Cursor;
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$1100(Lcom/sec/android/app/videoplayer/activity/VideoList;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v10

    if-nez v10, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1079
    :cond_1
    sget-object v10, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    iget-object v11, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mListType:I
    invoke-static {v11}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$800(Lcom/sec/android/app/videoplayer/activity/VideoList;)I

    move-result v11

    iget-object v12, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mSortType:I
    invoke-static {v12}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2100(Lcom/sec/android/app/videoplayer/activity/VideoList;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getVideoCursor(II)Landroid/database/Cursor;

    move-result-object v0

    .line 1080
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {}, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->getThumbnailHashMap()Ljava/util/HashMap;

    move-result-object v8

    .line 1082
    .local v8, thumbnail:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/android/app/videoplayer/util/VideoThumb;>;"
    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 1084
    if-eqz v0, :cond_3

    if-eqz v8, :cond_3

    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-gtz v10, :cond_4

    .line 1087
    :cond_3
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread::run() - cursor null or count is 0"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-lt v10, v11, :cond_5

    .line 1092
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread::run() - break!! cursor.getPosition() >= cursor.getCount()"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->inNotifyDataSetChanged()V
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2200(Lcom/sec/android/app/videoplayer/activity/VideoList;)V

    goto :goto_0

    .line 1103
    :cond_5
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1105
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-ge v4, v10, :cond_2

    .line 1107
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$000(Lcom/sec/android/app/videoplayer/activity/VideoList;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v10

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-ge v10, v11, :cond_2

    .line 1110
    move v6, v4

    .line 1111
    .local v6, pos:I
    const/4 v7, 0x0

    .line 1113
    .local v7, thumb:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .line 1114
    .local v3, filePath:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1116
    .local v5, orignalID:Ljava/lang/Long;
    const-string v10, "_data"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1117
    const-string v10, "_id"

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 1119
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 1121
    .local v9, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-nez v9, :cond_6

    .line 1122
    new-instance v9, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .end local v9           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Lcom/sec/android/app/videoplayer/util/VideoThumb;-><init>(Landroid/graphics/Bitmap;Z)V

    .line 1124
    .restart local v9       #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :cond_6
    invoke-virtual {v9}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getRretrieverChecked()Z

    move-result v10

    if-nez v10, :cond_8

    .line 1126
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-virtual {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v10, v11, v12, v13, v14}, Landroid/provider/MediaStore$Video$Thumbnails;->getThumbnail(Landroid/content/ContentResolver;JILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1129
    monitor-enter v8
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1131
    if-nez v7, :cond_7

    .line 1133
    :try_start_1
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #getter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mVideoPlayerListAdapter:Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;
    invoke-static {v10}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$700(Lcom/sec/android/app/videoplayer/activity/VideoList;)Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sec/android/app/videoplayer/adapter/VideoPlayerCursorAdapter;->getDefaultBmp()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1136
    :cond_7
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->setRretrieverChecked(Z)V

    .line 1137
    invoke-virtual {v9, v7}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 1138
    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    #calls: Lcom/sec/android/app/videoplayer/activity/VideoList;->inNotifyDataSetChanged(I)V
    invoke-static {v10, v6}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2300(Lcom/sec/android/app/videoplayer/activity/VideoList;I)V

    .line 1140
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1142
    :cond_8
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_4

    .line 1105
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1140
    :catchall_0
    move-exception v10

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/database/StaleDataException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1145
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #orignalID:Ljava/lang/Long;
    .end local v6           #pos:I
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v9           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 1147
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread - IllegalStateException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1149
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1152
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 1154
    .local v2, ex:Ljava/lang/UnsupportedOperationException;
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread - UnsupportedOperationException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1156
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1159
    .end local v2           #ex:Ljava/lang/UnsupportedOperationException;
    :catch_2
    move-exception v10

    move-object v1, v10

    .line 1161
    .local v1, e:Landroid/database/CursorIndexOutOfBoundsException;
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread - CursorIndexOutOfBoundsException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1163
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1166
    .end local v1           #e:Landroid/database/CursorIndexOutOfBoundsException;
    :catch_3
    move-exception v10

    move-object v1, v10

    .line 1168
    .local v1, e:Landroid/database/StaleDataException;
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread - StaleDataException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1170
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0

    .line 1173
    .end local v1           #e:Landroid/database/StaleDataException;
    :catch_4
    move-exception v10

    move-object v1, v10

    .line 1175
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v10, "VideoList"

    const-string v11, "startThumbnailCreateThread - NullPointerException"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    iget-object v10, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$7;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v11, 0x1

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPausing:Z
    invoke-static {v10, v11}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$002(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1177
    invoke-virtual {v8}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_0
.end method
