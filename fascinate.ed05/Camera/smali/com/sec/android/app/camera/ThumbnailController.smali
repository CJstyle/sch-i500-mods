.class public Lcom/sec/android/app/camera/ThumbnailController;
.super Ljava/lang/Object;
.source "ThumbnailController.java"


# static fields
.field private static final BUFSIZE:I = 0x1000

.field private static final TAG:Ljava/lang/String; = "ThumbnailController"


# instance fields
.field private final mButton:Landroid/widget/ImageView;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mIllegalStateException:Z

.field private final mResources:Landroid/content/res/Resources;

.field private mShouldAnimateThumb:Z

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;

.field private final mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/widget/ImageView;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/sec/android/app/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 68
    iput-object p2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 69
    iput-object p3, p0, Lcom/sec/android/app/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Lcom/sec/android/app/camera/widget/TwImageButton;Landroid/content/ContentResolver;)V
    .locals 1
    .parameter "resources"
    .parameter "button"
    .parameter "contentResolver"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    .line 77
    iput-object p2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 78
    iput-object p3, p0, Lcom/sec/android/app/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    .line 81
    return-void
.end method

.method private updateThumb(Landroid/graphics/Bitmap;)V
    .locals 10
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x36

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "ThumbnailController"

    .line 181
    const-string v4, "ThumbnailController"

    const-string v4, "updateThumb E"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    if-nez p1, :cond_0

    .line 183
    iput-object v6, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 184
    iput-object v6, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 230
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 190
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 199
    .local v3, param:Landroid/view/ViewGroup$LayoutParams;
    :goto_1
    const/16 v2, 0x36

    .line 200
    .local v2, miniThumbWidth:I
    const/16 v1, 0x36

    .line 205
    .local v1, miniThumbHeight:I
    invoke-static {p1, v5, v5}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    .line 208
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_3

    .line 209
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    iput-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    .line 210
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/android/app/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v8

    .line 211
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v4, v8

    .line 212
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v9, p0, Lcom/sec/android/app/camera/ThumbnailController;->mShouldAnimateThumb:Z

    .line 222
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    if-eqz v4, :cond_4

    .line 224
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 191
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #miniThumbHeight:I
    .end local v2           #miniThumbWidth:I
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    goto :goto_1

    .line 195
    .end local v3           #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    const-string v4, "ThumbnailController"

    const-string v4, "updateThumb - Button param is invalid."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 214
    .restart local v1       #miniThumbHeight:I
    .restart local v2       #miniThumbWidth:I
    .restart local v3       #param:Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v5, v5, v8

    aput-object v5, v4, v9

    .line 215
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/sec/android/app/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    iget-object v7, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v5, v6, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v5, v4, v8

    .line 216
    new-instance v4, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 218
    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    iput-boolean v8, p0, Lcom/sec/android/app/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_2

    .line 228
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isIllegalStateException()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/sec/android/app/camera/ThumbnailController;->mIllegalStateException:Z

    return v0
.end method

.method public isUriValid()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v6, "ThumbnailController"

    .line 233
    const-string v2, "ThumbnailController"

    const-string v2, "isUriValid"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iput-boolean v5, p0, Lcom/sec/android/app/camera/ThumbnailController;->mIllegalStateException:Z

    .line 236
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    .line 237
    const-string v2, "ThumbnailController"

    const-string v2, "isUriValid - mUri == null"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 259
    :goto_0
    return v2

    .line 241
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v3, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 243
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    if-nez v1, :cond_1

    .line 244
    const-string v2, "ThumbnailController"

    const-string v3, "isUriValid - Fail to open URI."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 245
    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v7

    .line 259
    goto :goto_0

    .line 248
    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 249
    .local v0, ex:Ljava/io/IOException;
    const-string v2, "ThumbnailController"

    const-string v2, "isUriValid - IOException ex"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 250
    goto :goto_0

    .line 252
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 254
    .local v0, ex:Ljava/lang/IllegalStateException;
    const-string v2, "ThumbnailController"

    const-string v2, "isUriValid - Caught exception while UriValid check."

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    iput-boolean v7, p0, Lcom/sec/android/app/camera/ThumbnailController;->mIllegalStateException:Z

    move v2, v5

    .line 256
    goto :goto_0
.end method

.method public loadData(Ljava/lang/String;)Z
    .locals 10
    .parameter "filePath"

    .prologue
    .line 139
    const/4 v5, 0x0

    .line 140
    .local v5, f:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 141
    .local v0, b:Ljava/io/BufferedInputStream;
    const/4 v2, 0x0

    .line 143
    .local v2, d:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v5           #f:Ljava/io/FileInputStream;
    .local v6, f:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v9, 0x1000

    invoke-direct {v1, v6, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 145
    .end local v0           #b:Ljava/io/BufferedInputStream;
    .local v1, b:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    .end local v2           #d:Ljava/io/DataInputStream;
    .local v3, d:Ljava/io/DataInputStream;
    :try_start_3
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 147
    .local v8, uri:Landroid/net/Uri;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 148
    .local v7, thumb:Landroid/graphics/Bitmap;
    invoke-virtual {p0, v8, v7}, Lcom/sec/android/app/camera/ThumbnailController;->setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 154
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v6}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 159
    const/4 v9, 0x1

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .end local v7           #thumb:Landroid/graphics/Bitmap;
    .end local v8           #uri:Landroid/net/Uri;
    .restart local v5       #f:Ljava/io/FileInputStream;
    :goto_0
    return v9

    .line 150
    :catch_0
    move-exception v9

    move-object v4, v9

    .line 151
    .local v4, e:Ljava/io/IOException;
    :goto_1
    const/4 v9, 0x0

    .line 154
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .line 154
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_2
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 156
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 154
    throw v9

    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_2

    .line 150
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    move-object v4, v9

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_2
    move-exception v9

    move-object v4, v9

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedInputStream;
    .end local v2           #d:Ljava/io/DataInputStream;
    .end local v5           #f:Ljava/io/FileInputStream;
    .restart local v1       #b:Ljava/io/BufferedInputStream;
    .restart local v3       #d:Ljava/io/DataInputStream;
    .restart local v6       #f:Ljava/io/FileInputStream;
    :catch_3
    move-exception v9

    move-object v4, v9

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataInputStream;
    .restart local v2       #d:Ljava/io/DataInputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedInputStream;
    .restart local v0       #b:Ljava/io/BufferedInputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileInputStream;
    .restart local v5       #f:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public setData(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "uri"
    .parameter "original"

    .prologue
    .line 88
    const-string v0, "ThumbnailController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setData - Uri :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 90
    :cond_0
    const/4 p1, 0x0

    .line 91
    const/4 p2, 0x0

    .line 93
    :cond_1
    if-nez p2, :cond_2

    .line 95
    iget-object v0, p0, Lcom/sec/android/app/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f020002

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 97
    :cond_2
    iput-object p1, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    .line 98
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/ThumbnailController;->updateThumb(Landroid/graphics/Bitmap;)V

    .line 99
    return-void
.end method

.method public storeData(Ljava/lang/String;)Z
    .locals 11
    .parameter "filePath"

    .prologue
    const/4 v10, 0x0

    .line 110
    iget-object v7, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v7, :cond_0

    move v7, v10

    .line 133
    :goto_0
    return v7

    .line 114
    :cond_0
    const/4 v5, 0x0

    .line 115
    .local v5, f:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 116
    .local v0, b:Ljava/io/BufferedOutputStream;
    const/4 v2, 0x0

    .line 118
    .local v2, d:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .end local v5           #f:Ljava/io/FileOutputStream;
    .local v6, f:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    const/16 v7, 0x1000

    invoke-direct {v1, v6, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .local v1, b:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 121
    .end local v2           #d:Ljava/io/DataOutputStream;
    .local v3, d:Ljava/io/DataOutputStream;
    :try_start_3
    iget-object v7, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 122
    iget-object v7, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumb:Landroid/graphics/Bitmap;

    sget-object v8, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v9, 0x64

    invoke-virtual {v7, v8, v9, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 128
    invoke-static {v3}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v6}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v1}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 133
    const/4 v7, 0x1

    goto :goto_0

    .line 124
    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .end local v3           #d:Ljava/io/DataOutputStream;
    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 128
    .local v4, e:Ljava/io/IOException;
    :goto_1
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    move v7, v10

    .line 125
    goto :goto_0

    .line 128
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_2
    invoke-static {v2}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 129
    invoke-static {v5}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 130
    invoke-static {v0}, Lcom/sec/android/app/camera/MenuHelper;->closeSilently(Ljava/io/Closeable;)V

    .line 128
    throw v7

    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 124
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v4, v7

    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v7

    move-object v4, v7

    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #b:Ljava/io/BufferedOutputStream;
    .end local v2           #d:Ljava/io/DataOutputStream;
    .end local v5           #f:Ljava/io/FileOutputStream;
    .restart local v1       #b:Ljava/io/BufferedOutputStream;
    .restart local v3       #d:Ljava/io/DataOutputStream;
    .restart local v6       #f:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #d:Ljava/io/DataOutputStream;
    .restart local v2       #d:Ljava/io/DataOutputStream;
    move-object v0, v1

    .end local v1           #b:Ljava/io/BufferedOutputStream;
    .restart local v0       #b:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #f:Ljava/io/FileOutputStream;
    .restart local v5       #f:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public updateDisplayIfNeeded()V
    .locals 4

    .prologue
    .line 163
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f020002

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 166
    .local v0, bmp:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 167
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v0       #bmp:Landroid/graphics/Bitmap;
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mTwButton:Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v2, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 174
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mShouldAnimateThumb:Z

    if-eqz v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 176
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/ThumbnailController;->mShouldAnimateThumb:Z

    goto :goto_0
.end method
