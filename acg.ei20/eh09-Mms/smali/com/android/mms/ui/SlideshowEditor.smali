.class public Lcom/android/mms/ui/SlideshowEditor;
.super Ljava/lang/Object;
.source "SlideshowEditor.java"


# static fields
.field private static final ATTACHMENT_META_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mModel:Lcom/android/mms/model/SlideshowModel;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 227
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SlideshowEditor;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "context"
    .parameter "model"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    .line 58
    return-void
.end method

.method private getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I
    .locals 14
    .parameter "mModel"

    .prologue
    .line 174
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v2, cidIndex:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/mms/model/SlideshowModel;->getSlides()Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    .local v0, SlideModelSize:I
    const/4 v5, 0x0

    .line 177
    .local v5, index:I
    const/4 v1, 0x0

    .line 178
    .local v1, arraySize:I
    const/4 v8, 0x0

    .line 180
    .local v8, mint:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 181
    invoke-virtual {p1, v4}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    .line 182
    .local v9, temp:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v10

    .line 183
    .local v10, text:Lcom/android/mms/model/TextModel;
    if-eqz v10, :cond_1

    .line 184
    invoke-virtual {v10}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, mString:Ljava/lang/String;
    const-string v11, "cid:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 187
    const-string v11, "cid:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 192
    :cond_0
    :goto_1
    :try_start_0
    const-string v11, "text_"

    const-string v12, ""

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    const-string v12, ".txt"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 196
    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    .end local v7           #mString:Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    .restart local v7       #mString:Ljava/lang/String;
    :cond_2
    const-string v11, "Cid:"

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 189
    const-string v11, "Cid:"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 193
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 194
    .local v3, e:Ljava/lang/NumberFormatException;
    move v8, v4

    goto :goto_2

    .line 200
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .end local v7           #mString:Ljava/lang/String;
    .end local v9           #temp:Lcom/android/mms/model/SlideModel;
    .end local v10           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 202
    if-lez v1, :cond_6

    .line 203
    const/4 v6, 0x0

    .end local p0
    .local v6, j:I
    :goto_3
    if-ge v6, v1, :cond_5

    .line 204
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-gt v5, v11, :cond_4

    .line 205
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 203
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 208
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 210
    .end local v6           #j:I
    :cond_6
    return v5
.end method


# virtual methods
.method public addNewSlide()Z
    .locals 2

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 67
    .local v0, position:I
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v1

    return v1
.end method

.method public addNewSlide(I)Z
    .locals 7
    .parameter "position"

    .prologue
    .line 78
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    .line 79
    .local v2, size:I
    const/16 v5, 0xa

    if-ge v2, v5, :cond_0

    .line 80
    new-instance v3, Lcom/android/mms/model/SlideModel;

    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, v5}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 92
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, p1, v3}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    const/4 v5, 0x1

    .line 102
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :goto_1
    return v5

    .line 93
    .restart local v3       #slide:Lcom/android/mms/model/SlideModel;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 95
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090053

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, title:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090065

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, message:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-static {v5, v4, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    .end local v1           #message:Ljava/lang/String;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    const-string v5, "Mms/slideshow"

    const-string v6, "The limitation of the number of slides is reached."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public changeAudio(ILandroid/net/Uri;Z)V
    .locals 10
    .parameter "position"
    .parameter "newAudio"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 235
    const/4 v8, -0x1

    .line 236
    .local v8, size:I
    const/4 v7, 0x0

    .line 237
    .local v7, metaDataCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 239
    sget-object v2, Lcom/android/mms/ui/SlideshowEditor;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 241
    :cond_0
    if-eqz v7, :cond_2

    .line 243
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 245
    const-string v1, "Mms/slideshow"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor :  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-ge v1, v8, :cond_3

    .line 253
    new-instance v1, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct {v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v1

    .line 248
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .line 256
    :cond_3
    new-instance v6, Lcom/android/mms/model/AudioModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-direct {v6, v1, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 258
    .local v6, audio:Lcom/android/mms/model/AudioModel;
    if-eqz p3, :cond_4

    .line 259
    invoke-virtual {v6}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 261
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v9

    .line 262
    .local v9, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v9, v6}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 263
    invoke-virtual {v6}, Lcom/android/mms/model/AudioModel;->getDuration()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 264
    return-void
.end method

.method public changeDuration(II)V
    .locals 1
    .parameter "position"
    .parameter "dur"

    .prologue
    .line 311
    if-ltz p2, :cond_0

    .line 312
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 313
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public changeImage(ILandroid/net/Uri;Z)V
    .locals 4
    .parameter "position"
    .parameter "newImage"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 215
    const/4 v1, 0x0

    .line 216
    .local v1, media:Lcom/android/mms/model/MediaModel;
    new-instance v1, Lcom/android/mms/model/ImageModel;

    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v3

    invoke-direct {v1, v2, p2, v3}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 218
    .restart local v1       #media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_0

    .line 219
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 221
    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/ImageModel;->checkResolution()V

    .line 223
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 225
    return-void
.end method

.method public changeLayout(I)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/mms/model/LayoutModel;->changeTo(I)V

    .line 319
    return-void
.end method

.method public changeText(ILjava/lang/String;)V
    .locals 7
    .parameter "position"
    .parameter "newText"

    .prologue
    .line 148
    if-eqz p2, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v3, v3, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 151
    if-ltz p1, :cond_0

    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v3, v3, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 156
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    .line 157
    .local v2, text:Lcom/android/mms/model/TextModel;
    if-nez v2, :cond_2

    .line 158
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowEditor;->getCidTextIndex(Lcom/android/mms/model/SlideshowModel;)I

    move-result v0

    .line 159
    .local v0, index:I
    new-instance v2, Lcom/android/mms/model/TextModel;

    .end local v2           #text:Lcom/android/mms/model/TextModel;
    iget-object v3, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    const-string v4, "text/plain"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cid:text_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 162
    .restart local v2       #text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v2, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 163
    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    goto :goto_0

    .line 164
    .end local v0           #index:I
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    invoke-virtual {v2, p2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public changeVideo(ILandroid/net/Uri;Z)V
    .locals 10
    .parameter "position"
    .parameter "newVideo"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 268
    const/4 v7, -0x1

    .line 269
    .local v7, size:I
    const/4 v6, 0x0

    .line 270
    .local v6, metaDataCursor:Landroid/database/Cursor;
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 271
    .local v0, contentResolver:Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 272
    sget-object v2, Lcom/android/mms/ui/SlideshowEditor;->ATTACHMENT_META_COLUMNS:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    :cond_0
    if-eqz v6, :cond_2

    .line 276
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 278
    const-string v1, "Mms/slideshow"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursor :  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 284
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v1

    if-ge v1, v7, :cond_3

    .line 285
    new-instance v1, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct {v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v1

    .line 281
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    .line 289
    :cond_3
    new-instance v9, Lcom/android/mms/model/VideoModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v2

    invoke-direct {v9, v1, p2, v2}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 293
    .local v9, video:Lcom/android/mms/model/VideoModel;
    if-eqz p3, :cond_4

    .line 294
    invoke-virtual {v9}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 297
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    .line 298
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v8, v9}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 299
    invoke-virtual {v9}, Lcom/android/mms/model/VideoModel;->getDuration()I

    move-result v1

    invoke-virtual {v8, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 300
    return-void
.end method

.method public moveSlideDown(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 308
    return-void
.end method

.method public moveSlideUp(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 304
    return-void
.end method

.method public removeAllSlides()V
    .locals 1

    .prologue
    .line 119
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public removeAudio(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    move-result v0

    return v0
.end method

.method public removeImage(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    move-result v0

    return v0
.end method

.method public removeSlide(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 113
    return-void
.end method

.method public removeVideo(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowEditor;->mModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    move-result v0

    return v0
.end method
