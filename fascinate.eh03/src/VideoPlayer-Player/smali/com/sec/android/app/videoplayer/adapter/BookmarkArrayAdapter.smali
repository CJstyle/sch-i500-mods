.class public Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "BookmarkArrayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static mThumbnail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListType:I

.field private mdeleteitem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mitem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mThumbnail:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIJLjava/lang/String;ZLjava/util/ArrayList;)V
    .locals 1
    .parameter "context"
    .parameter "layout"
    .parameter "mList"
    .parameter "mvideoid"
    .parameter "filepath"
    .parameter "mExceptThumnail"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIJ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p8, mbookmarklist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p8}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mContext:Landroid/content/Context;

    .line 41
    if-nez p7, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->clearCachedBitmap()V

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mContext:Landroid/content/Context;

    .line 45
    iput p3, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mListType:I

    .line 46
    iput-object p8, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mitem:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private clearCachedBitmap()V
    .locals 2

    .prologue
    .line 178
    sget-object v0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mThumbnail:Ljava/util/HashMap;

    monitor-enter v0

    .line 181
    :try_start_0
    sget-object v1, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 182
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "t"

    .prologue
    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, b:Landroid/graphics/Bitmap;
    sget-object v2, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mThumbnail:Ljava/util/HashMap;

    monitor-enter v2

    .line 170
    :try_start_0
    sget-object v3, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mThumbnail:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/videoplayer/util/VideoThumb;

    .line 171
    .local v1, videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/videoplayer/util/VideoThumb;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v3

    move-object v0, v3

    .line 172
    :goto_0
    monitor-exit v2

    .line 173
    return-object v0

    .line 171
    :cond_0
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0

    .line 172
    .end local v1           #videoThumb:Lcom/sec/android/app/videoplayer/util/VideoThumb;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getThumbnail(Ljava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "time"
    .parameter "curPlayingFile"

    .prologue
    const/16 v8, 0x43

    const/16 v7, 0x41

    const/4 v6, 0x0

    .line 137
    new-instance v1, Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v1, imageView:Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 139
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 140
    .local v4, thumbnailDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    .line 142
    invoke-direct {p0, p1}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getCachedBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 148
    :cond_0
    if-nez v0, :cond_1

    .line 150
    const v5, 0x7f020031

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 151
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    :cond_1
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 155
    .local v3, tempBitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 157
    .local v2, overlayCanvas:Landroid/graphics/Canvas;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 158
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v8, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 159
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 161
    return-object v3
.end method

.method private stringForTime(J)Ljava/lang/String;
    .locals 12
    .parameter "timeMs"

    .prologue
    .line 125
    const-wide/16 v8, 0x3e8

    div-long v6, p1, v8

    .line 126
    .local v6, totalSeconds:J
    const-wide/16 v8, 0x3c

    rem-long v4, v6, v8

    .line 127
    .local v4, seconds:J
    const-wide/16 v8, 0x3c

    div-long v8, v6, v8

    const-wide/16 v10, 0x3c

    rem-long v2, v8, v10

    .line 128
    .local v2, minutes:J
    const-wide/16 v8, 0xe10

    div-long v0, v6, v8

    .line 129
    .local v0, hours:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_0

    .line 130
    const-string v8, "%d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    .line 132
    :goto_0
    return-object v8

    :cond_0
    const-string v8, "%02d:%02d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public checkIdExist_RemoveIdList(J)Z
    .locals 3
    .parameter "id"

    .prologue
    .line 112
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    .line 116
    const/4 v1, 0x1

    .line 119
    :goto_1
    return v1

    .line 112
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public deleteId_RemoveIdList(J)V
    .locals 3
    .parameter "id"

    .prologue
    .line 100
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void

    .line 100
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getRemoveIdList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mdeleteitem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getThumbnailHashMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/videoplayer/util/VideoThumb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mThumbnail:Ljava/util/HashMap;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 52
    move-object v6, p2

    .line 54
    .local v6, v:Landroid/view/View;
    if-nez v6, :cond_0

    .line 56
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    .line 57
    .local v7, vi:Landroid/view/LayoutInflater;
    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 60
    .end local v7           #vi:Landroid/view/LayoutInflater;
    :cond_0
    const v8, 0x7f0a0002

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    .local v1, tag_thumb:Landroid/widget/ImageView;
    const v8, 0x7f0a0003

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 62
    .local v2, tag_time:Landroid/widget/TextView;
    const v8, 0x7f0a0004

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 64
    .local v0, tag_checkbox:Landroid/widget/CheckBox;
    iget-object v8, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mitem:Ljava/util/ArrayList;

    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 65
    .local v3, time:J
    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->stringForTime(J)Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, time_str:Ljava/lang/String;
    const-wide/16 v8, 0x0

    cmp-long v8, v3, v8

    if-eqz v8, :cond_1

    .line 69
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v10}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->getThumbnail(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 71
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 74
    :cond_1
    iget v8, p0, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->mListType:I

    if-ne v8, v11, :cond_2

    .line 76
    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    const/16 v8, 0x8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 90
    :goto_0
    return-object v6

    .line 81
    :cond_2
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 82
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {p0, v3, v4}, Lcom/sec/android/app/videoplayer/adapter/BookmarkArrayAdapter;->checkIdExist_RemoveIdList(J)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 85
    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_3
    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method
