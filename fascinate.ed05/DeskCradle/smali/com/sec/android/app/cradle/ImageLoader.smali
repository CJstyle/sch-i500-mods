.class public Lcom/sec/android/app/cradle/ImageLoader;
.super Ljava/lang/Thread;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GridImageLoader"


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mBitmap_slide1:Landroid/graphics/Bitmap;

.field mBitmap_slide2:Landroid/graphics/Bitmap;

.field private mImageUpdateListener:Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;

.field private mIndexArray:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPaused:Z

.field private mSlotArray:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/cradle/ImageLoadingData;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadLive:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    .line 22
    return-void
.end method


# virtual methods
.method public addQueue(Lcom/sec/android/app/cradle/ImageLoadingData;)V
    .locals 5
    .parameter "loadingImage"

    .prologue
    .line 53
    monitor-enter p0

    .line 58
    :try_start_0
    iget v3, p1, Lcom/sec/android/app/cradle/ImageLoadingData;->mTotIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 65
    .local v1, key:Ljava/lang/Integer;
    :cond_0
    const/4 v0, 0x0

    .line 66
    .local v0, bRemoved:Z
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/ImageLoadingData;

    .line 68
    .local v2, prevSlot:Lcom/sec/android/app/cradle/ImageLoadingData;
    if-nez v2, :cond_3

    .line 76
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mPaused:Z

    if-eqz v3, :cond_1

    .line 82
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mPaused:Z

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 87
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 88
    const-string v3, "GridImageLoader"

    const-string v4, "Array mismatch !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_2
    monitor-exit p0

    .line 90
    return-void

    .line 70
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 72
    const/4 v0, 0x1

    .line 74
    if-nez v0, :cond_0

    goto :goto_0

    .line 89
    .end local v0           #bRemoved:Z
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #prevSlot:Lcom/sec/android/app/cradle/ImageLoadingData;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public clearQueue()V
    .locals 1

    .prologue
    .line 25
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 35
    monitor-exit p0

    .line 36
    return-void

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/ImageLoader;->mPaused:Z

    .line 174
    monitor-exit p0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 178
    monitor-enter p0

    .line 179
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/cradle/ImageLoader;->mPaused:Z

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public quit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 188
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    .line 193
    iget-object v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 194
    iget-object v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 196
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    .line 198
    monitor-enter p0

    .line 199
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mThreadLive:Z

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 201
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :try_start_1
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/ImageLoader;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    :goto_0
    return-void

    .line 201
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, ex:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0
.end method

.method public removeQueue(Lcom/sec/android/app/cradle/ImageLoadingData;)V
    .locals 3
    .parameter "loadingImage"

    .prologue
    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    iget v2, p1, Lcom/sec/android/app/cradle/ImageLoadingData;->mTotIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 42
    .local v0, key:Ljava/lang/Integer;
    iget-object v2, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/cradle/ImageLoadingData;

    .line 43
    .local v1, slot:Lcom/sec/android/app/cradle/ImageLoadingData;
    if-eqz v1, :cond_0

    .line 45
    iget-object v2, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 48
    :cond_0
    monitor-exit p0

    .line 49
    return-void

    .line 48
    .end local v0           #key:Ljava/lang/Integer;
    .end local v1           #slot:Lcom/sec/android/app/cradle/ImageLoadingData;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    const-string v10, "imageloader mbitmap set null in run"

    const-string v9, "imageloader mbitmap recycle in run"

    const-string v7, "GridImageLoader"

    .line 94
    iput-boolean v11, p0, Lcom/sec/android/app/cradle/ImageLoader;->mThreadLive:Z

    .line 97
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mThreadLive:Z

    if-eqz v3, :cond_2

    .line 99
    monitor-enter p0

    .line 101
    :try_start_0
    iget-boolean v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    .line 105
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 110
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 112
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 114
    .local v1, key:Ljava/lang/Integer;
    if-eqz v1, :cond_6

    .line 116
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/cradle/ImageLoadingData;

    .line 117
    .local v2, loadingImage:Lcom/sec/android/app/cradle/ImageLoadingData;
    iget v3, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mViewIndex:I

    packed-switch v3, :pswitch_data_0

    .line 154
    :goto_1
    monitor-enter p0

    .line 155
    :try_start_3
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 159
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mSlotArray:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/cradle/ImageLoader;->mIndexArray:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 160
    const-string v3, "GridImageLoader"

    const-string v4, "Array mismatch !!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 106
    .end local v1           #key:Ljava/lang/Integer;
    .end local v2           #loadingImage:Lcom/sec/android/app/cradle/ImageLoadingData;
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_4
    monitor-exit p0

    .line 169
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    return-void

    .line 110
    :catchall_1
    move-exception v3

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v3

    .line 119
    .restart local v1       #key:Ljava/lang/Integer;
    .restart local v2       #loadingImage:Lcom/sec/android/app/cradle/ImageLoadingData;
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    .line 120
    const-string v3, "GridImageLoader"

    const-string v3, "imageloader mbitmap recycle in run"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 123
    :cond_3
    const-string v3, "GridImageLoader"

    const-string v3, "imageloader mbitmap set null in run"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-object v8, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object v3, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mDataPath:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    .line 126
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mImageUpdateListener:Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;

    iget-object v4, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mTotIndex:I

    iget v6, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mViewIndex:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;->onImageUpdate(Landroid/graphics/Bitmap;II)V

    goto :goto_1

    .line 130
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_4

    .line 131
    const-string v3, "GridImageLoader"

    const-string v3, "imageloader mbitmap recycle in run"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 134
    :cond_4
    const-string v3, "GridImageLoader"

    const-string v3, "imageloader mbitmap set null in run"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput-object v8, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    .line 136
    iget-object v3, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mDataPath:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    .line 137
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mImageUpdateListener:Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;

    iget-object v4, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide1:Landroid/graphics/Bitmap;

    iget v5, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mTotIndex:I

    iget v6, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mViewIndex:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;->onImageUpdate(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_1

    .line 141
    :pswitch_2
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_5

    .line 142
    const-string v3, "GridImageLoader"

    const-string v3, "imageloader mbitmap recycle in run"

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 145
    :cond_5
    const-string v3, "GridImageLoader"

    const-string v3, "imageloader mbitmap set null in run"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iput-object v8, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    .line 147
    iget-object v3, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mDataPath:Ljava/lang/String;

    invoke-static {v3, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    .line 148
    iget-object v3, p0, Lcom/sec/android/app/cradle/ImageLoader;->mImageUpdateListener:Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;

    iget-object v4, p0, Lcom/sec/android/app/cradle/ImageLoader;->mBitmap_slide2:Landroid/graphics/Bitmap;

    iget v5, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mTotIndex:I

    iget v6, v2, Lcom/sec/android/app/cradle/ImageLoadingData;->mViewIndex:I

    invoke-interface {v3, v4, v5, v6}, Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;->onImageUpdate(Landroid/graphics/Bitmap;II)V

    goto/16 :goto_1

    .line 165
    .end local v2           #loadingImage:Lcom/sec/android/app/cradle/ImageLoadingData;
    :cond_6
    iput-boolean v11, p0, Lcom/sec/android/app/cradle/ImageLoader;->mPaused:Z

    goto/16 :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setItemUpdateListener(Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;)V
    .locals 0
    .parameter "updateItemListener"

    .prologue
    .line 215
    iput-object p1, p0, Lcom/sec/android/app/cradle/ImageLoader;->mImageUpdateListener:Lcom/sec/android/app/cradle/ImageLoader$OnImageUpdateListener;

    .line 216
    return-void
.end method
