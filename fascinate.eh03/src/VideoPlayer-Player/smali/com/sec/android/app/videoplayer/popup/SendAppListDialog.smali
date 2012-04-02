.class public Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;
.super Ljava/lang/Object;
.source "SendAppListDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;,
        Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;
    }
.end annotation


# static fields
.field private static before_setting:Z


# instance fields
.field private final MAX_SIZE:I

.field private mContext:Landroid/content/Context;

.field private mDisplayAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShareInfo:Landroid/content/pm/ResolveInfo;

.field mShareListener:Landroid/content/DialogInterface$OnClickListener;

.field private videoId:J

.field private video_uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->before_setting:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    .line 40
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    .line 43
    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->video_uri:Ljava/lang/String;

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->videoId:J

    .line 46
    const/high16 v0, 0x3d09

    iput v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->MAX_SIZE:I

    .line 168
    new-instance v0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$2;-><init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    .line 57
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->before_setting:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-boolean p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->before_setting:Z

    return p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ResolveInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    return-object p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->video_uri:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->videoId:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->singleSend(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addList(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, listResolveInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    if-nez v1, :cond_1

    .line 266
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    .line 272
    :cond_0
    return-void

    .line 270
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getFileSize(Landroid/net/Uri;)J
    .locals 12
    .parameter "video_uri"

    .prologue
    const-wide/16 v2, 0x0

    const-string v11, "SendAppListDialog"

    .line 375
    const-wide/16 v8, 0x0

    .line 377
    .local v8, fileSize:J
    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1d

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1c

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_0

    sget v0, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mKeyType:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    :cond_0
    move-wide v0, v2

    .line 417
    :goto_0
    return-wide v0

    .line 385
    :cond_1
    if-nez p1, :cond_2

    .line 387
    const-string v0, "SendAppListDialog"

    const-string v0, "getFileSize() - video_uri is null"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v2

    .line 389
    goto :goto_0

    .line 394
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 396
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    .line 400
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    const-string v0, "_size"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 403
    .local v10, idx:I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    .line 408
    .end local v10           #idx:I
    :cond_3
    :try_start_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_4
    :goto_1
    move-wide v0, v8

    .line 417
    goto :goto_0

    .line 408
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 412
    .end local v6           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 414
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "SendAppListDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteException occured  14 :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .parameter "action"
    .parameter "dataType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 278
    .local v1, mPackageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 280
    .local v0, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    .restart local v0       #intent:Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 284
    const v2, 0x10060

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getSetOfMimeType(Landroid/content/pm/ResolveInfo;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "resolveInfo"
    .parameter "mimeType"

    .prologue
    .line 206
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 208
    if-nez p2, :cond_0

    .line 210
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 206
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    const-string v1, ";"

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 215
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->makeMIMEType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 219
    :cond_1
    return-object p2
.end method

.method private isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z
    .locals 4
    .parameter
    .parameter "info"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Landroid/content/pm/ResolveInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 306
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v1, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 309
    const/4 v2, 0x1

    .line 311
    .end local v1           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dataType"

    .prologue
    .line 225
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 227
    const-string v0, "/*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private setDisplayedList()V
    .locals 7

    .prologue
    .line 289
    const-string v1, "com.google.android.apps.uploader.youtube.YouTubeSettingsActivity"

    .line 290
    .local v1, mPackageName:Ljava/lang/String;
    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->videoId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 292
    .local v2, videoUri:Landroid/net/Uri;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 296
    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4, v3}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->isExistedApp(Ljava/util/List;Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 298
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->getFileSize(Landroid/net/Uri;)J

    move-result-wide v3

    const-wide/32 v5, 0x3d090000

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 299
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    :cond_2
    return-void
.end method

.method private setSendIntentList()V
    .locals 2

    .prologue
    .line 254
    const-string v0, "android.intent.action.SEND"

    const-string v1, "video/*"

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->getResolveInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->addList(Ljava/util/List;)V

    .line 256
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "SendAppListDialog"

    const-string v1, "setSendIntentList() - send app list count zero."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->setDisplayedList()V

    .line 260
    return-void
.end method

.method private singleSend(Ljava/lang/String;J)V
    .locals 6
    .parameter "video_uri"
    .parameter "videoId"

    .prologue
    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 237
    .local v2, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v1, shareIntent:Landroid/content/Intent;
    sget-object v3, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mVideoDB:Lcom/sec/android/app/videoplayer/db/VideoDB;

    invoke-virtual {v3, p2, p3}, Lcom/sec/android/app/videoplayer/db/VideoDB;->getMimeType(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 240
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareInfo:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 244
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    :goto_0
    return-void

    .line 245
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 246
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "SendAppListDialog"

    const-string v4, "singleSend() - activity not found!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 247
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    const v5, 0x7f070009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public showSendAppListDialog(JLjava/lang/String;)V
    .locals 10
    .parameter "id"
    .parameter "uri"

    .prologue
    .line 64
    :try_start_0
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 66
    const/4 v7, 0x1

    sput-boolean v7, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->before_setting:Z

    .line 67
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->sService:Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    invoke-interface {v7}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;->pause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->videoId:J

    .line 76
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->video_uri:Ljava/lang/String;

    .line 78
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->setSendIntentList()V

    .line 80
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    .local v6, sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 86
    .local v3, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;>;"
    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 90
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_1

    .line 92
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mDisplayAppList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 93
    .local v4, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v8, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v8, p0, v9, v7}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;-><init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 70
    .end local v0           #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;>;"
    .end local v2           #i:I
    .end local v3           #pm:Landroid/content/pm/PackageManager;
    .end local v4           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v6           #sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 72
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "SendAppListDialog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "showSendAppListDialog(): RemoteException"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 96
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppItem;>;"
    .restart local v2       #i:I
    .restart local v3       #pm:Landroid/content/pm/PackageManager;
    .restart local v6       #sendAppListAlertDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    new-instance v5, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;

    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mContext:Landroid/content/Context;

    invoke-direct {v5, p0, v7, v0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;-><init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 98
    .local v5, sendAppListAdapter:Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$SendAppListAdapter;
    iget-object v7, p0, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;->mShareListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v6, v5, v7}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    new-instance v7, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$1;

    invoke-direct {v7, p0}, Lcom/sec/android/app/videoplayer/popup/SendAppListDialog$1;-><init>(Lcom/sec/android/app/videoplayer/popup/SendAppListDialog;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 163
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    sput-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    .line 164
    sget-object v7, Lcom/sec/android/app/videoplayer/util/VideoServiceUtil;->mSendviaPopup:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    .line 166
    return-void
.end method
