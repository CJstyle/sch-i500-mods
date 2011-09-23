.class public Lcom/android/browser/widget/BookmarkWidgetService;
.super Landroid/app/Service;
.source "BookmarkWidgetService.java"

# interfaces
.implements Landroid/service/urlrenderer/UrlRenderer$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    }
.end annotation


# static fields
.field private static final EXTRA_ID:Ljava/lang/String; = "com.android.browser.widget.extra.ID"

.field private static final HEIGHT:I = 0x182

.field private static final MAX_SERVICE_RETRY_COUNT:I = 0x5

.field private static final MSG_UPDATE:I = 0x0

.field private static final NEXT:Ljava/lang/String; = "com.android.browser.widget.NEXT"

.field private static final NO_ID:I = -0x1

.field private static final PREV:Ljava/lang/String; = "com.android.browser.widget.PREV"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_WHERE:Ljava/lang/String; = "bookmark == 1"

.field private static final TAG:Ljava/lang/String; = "BookmarkWidgetService"

.field public static final UPDATE:Ljava/lang/String; = "com.android.browser.widget.UPDATE"

.field private static final WIDTH:I = 0x132


# instance fields
.field private final mConnection:Landroid/content/ServiceConnection;

.field private mCurrentId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdsToResults:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderer:Landroid/service/urlrenderer/UrlRenderer;

.field private mServiceRetryCount:I

.field private final mUrlsToIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 277
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/widget/BookmarkWidgetService;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 78
    new-instance v0, Lcom/android/browser/widget/BookmarkWidgetService$1;

    invoke-direct {v0, p0}, Lcom/android/browser/widget/BookmarkWidgetService$1;-><init>(Lcom/android/browser/widget/BookmarkWidgetService;)V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mHandler:Landroid/os/Handler;

    .line 98
    new-instance v0, Lcom/android/browser/widget/BookmarkWidgetService$2;

    invoke-direct {v0, p0}, Lcom/android/browser/widget/BookmarkWidgetService$2;-><init>(Lcom/android/browser/widget/BookmarkWidgetService;)V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mConnection:Landroid/content/ServiceConnection;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdsToResults:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mUrlsToIds:Ljava/util/HashMap;

    .line 121
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mCurrentId:I

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/widget/BookmarkWidgetService;)Landroid/service/urlrenderer/UrlRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mRenderer:Landroid/service/urlrenderer/UrlRenderer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/browser/widget/BookmarkWidgetService;Landroid/service/urlrenderer/UrlRenderer;)Landroid/service/urlrenderer/UrlRenderer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mRenderer:Landroid/service/urlrenderer/UrlRenderer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/browser/widget/BookmarkWidgetService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/browser/widget/BookmarkWidgetService;->queryCursorAndRender()V

    return-void
.end method

.method static synthetic access$204(Lcom/android/browser/widget/BookmarkWidgetService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mServiceRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mServiceRetryCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/browser/widget/BookmarkWidgetService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getNextId(Landroid/content/Intent;)I
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 204
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 207
    .local v4, listSize:I
    if-gt v4, v7, :cond_0

    move v5, v6

    .line 230
    .end local p0
    :goto_0
    return v5

    .line 211
    .restart local p0
    :cond_0
    const-string v5, "com.android.browser.widget.extra.ID"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 212
    .local v0, curr:I
    if-ne v0, v6, :cond_1

    move v5, v6

    .line 213
    goto :goto_0

    .line 218
    :cond_1
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    sub-int v6, v4, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 219
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 223
    .restart local p0
    :cond_2
    const/4 v1, 0x1

    .line 224
    .local v1, i:I
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 225
    .local v3, id:I
    if-ne v3, v0, :cond_4

    .line 230
    .end local v3           #id:I
    :cond_3
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 228
    .restart local v3       #id:I
    .restart local p0
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private getPreviousId(Landroid/content/Intent;)I
    .locals 8
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 174
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 177
    .local v3, listSize:I
    if-gt v3, v7, :cond_0

    move v5, v6

    .line 200
    .end local p0
    :goto_0
    return v5

    .line 181
    .restart local p0
    :cond_0
    const-string v5, "com.android.browser.widget.extra.ID"

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 182
    .local v0, curr:I
    if-ne v0, v6, :cond_1

    move v5, v6

    .line 183
    goto :goto_0

    .line 188
    :cond_1
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v0, :cond_2

    .line 189
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    sub-int v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    .line 193
    .restart local p0
    :cond_2
    const/4 v4, -0x1

    .line 194
    .local v4, prev:I
    iget-object v5, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 195
    .local v2, id:I
    if-ne v2, v0, :cond_4

    .end local v2           #id:I
    :cond_3
    move v5, v4

    .line 200
    goto :goto_0

    .line 198
    .restart local v2       #id:I
    :cond_4
    move v4, v2

    goto :goto_1
.end method

.method private queryCursorAndRender()V
    .locals 14

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 296
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 297
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdsToResults:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 300
    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Browser;->BOOKMARKS_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/widget/BookmarkWidgetService;->PROJECTION:[Ljava/lang/String;

    const-string v3, "bookmark == 1"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 302
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 303
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    new-instance v12, Ljava/util/ArrayList;

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    .local v12, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 307
    .local v9, sawCurrentId:Z
    :cond_0
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 308
    .local v7, id:I
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 309
    .local v10, title:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 312
    .local v11, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mUrlsToIds:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mCurrentId:I

    if-ne v0, v7, :cond_1

    .line 319
    const/4 v9, 0x1

    .line 324
    :cond_1
    new-instance v8, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;

    invoke-direct {v8, v7, v10, v11}, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 325
    .local v8, res:Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdsToResults:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mRenderer:Landroid/service/urlrenderer/UrlRenderer;

    const/16 v1, 0x132

    const/16 v2, 0x182

    invoke-virtual {v0, v12, v1, v2, p0}, Landroid/service/urlrenderer/UrlRenderer;->render(Ljava/util/List;IILandroid/service/urlrenderer/UrlRenderer$Callback;)V

    .line 340
    if-nez v9, :cond_2

    .line 341
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mCurrentId:I

    .line 344
    .end local v7           #id:I
    .end local v8           #res:Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    .end local v9           #sawCurrentId:Z
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #url:Ljava/lang/String;
    .end local v12           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 346
    :cond_3
    return-void
.end method

.method private updateWidget(Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;)V
    .locals 12
    .parameter "res"

    .prologue
    const v11, 0x7f0d000d

    const/high16 v10, 0x1000

    const/16 v9, 0x8

    const v8, 0x7f0d000c

    const/4 v7, 0x0

    .line 234
    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/android/browser/widget/BookmarkWidgetService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f030003

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 237
    .local v3, views:Landroid/widget/RemoteViews;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.browser.widget.PREV"

    const/4 v5, 0x0

    const-class v6, Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {v2, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 238
    .local v2, prev:Landroid/content/Intent;
    const-string v4, "com.android.browser.widget.extra.ID"

    iget v5, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 239
    const v4, 0x7f0d000a

    invoke-static {p0, v7, v2, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 243
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.browser.widget.NEXT"

    const/4 v5, 0x0

    const-class v6, Lcom/android/browser/widget/BookmarkWidgetService;

    invoke-direct {v1, v4, v5, p0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    .local v1, next:Landroid/content/Intent;
    const-string v4, "com.android.browser.widget.extra.ID"

    iget v5, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 245
    const v4, 0x7f0d000b

    invoke-static {p0, v7, v1, v10}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 250
    iget-object v0, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mTitle:Ljava/lang/String;

    .line 251
    .local v0, displayTitle:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 252
    iget-object v0, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mUrl:Ljava/lang/String;

    .line 254
    :cond_0
    const v4, 0x7f0d0005

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 257
    iget-object v4, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 258
    iget-object v4, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v8, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 259
    invoke-virtual {v3, v8, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    invoke-virtual {v3, v11, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 267
    :goto_0
    iget v4, p1, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mId:I

    iput v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mCurrentId:I

    .line 269
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    new-instance v5, Landroid/content/ComponentName;

    const-class v6, Lcom/android/browser/widget/BookmarkWidgetProvider;

    invoke-direct {v5, p0, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 272
    return-void

    .line 262
    :cond_1
    invoke-virtual {v3, v11, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 263
    invoke-virtual {v3, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_0
.end method


# virtual methods
.method public complete(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .parameter "url"
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    const-string v7, "BookmarkWidgetService"

    .line 350
    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mUrlsToIds:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 351
    .local v0, id:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 352
    const-string v4, "BookmarkWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No matching id found during completion of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdsToResults:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;

    .line 358
    .local v3, res:Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    if-nez v3, :cond_2

    .line 359
    const-string v4, "BookmarkWidgetService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No result found during completion of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_2
    if-eqz p2, :cond_3

    .line 366
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 368
    .local v1, input:Ljava/io/InputStream;
    invoke-static {v1, v6, v6}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 371
    .local v2, orig:Landroid/graphics/Bitmap;
    const/16 v4, 0x132

    const/16 v5, 0x182

    const/4 v6, 0x1

    invoke-static {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v3, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;->mBitmap:Landroid/graphics/Bitmap;

    .line 373
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    .end local v1           #input:Ljava/io/InputStream;
    .end local v2           #orig:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    iget v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mCurrentId:I

    if-ne v4, v0, :cond_0

    .line 382
    invoke-direct {p0, v3}, Lcom/android/browser/widget/BookmarkWidgetService;->updateWidget(Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;)V

    goto :goto_0

    .line 374
    .restart local v1       #input:Ljava/io/InputStream;
    .restart local v2       #orig:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 141
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 130
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.urlrenderer.UrlRendererService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/browser/widget/BookmarkWidgetService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 132
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/browser/widget/BookmarkWidgetService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 137
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v7, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    const-string v8, "BookmarkWidgetService"

    .line 146
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.android.browser.widget.UPDATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 148
    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    move v4, v6

    .line 170
    :goto_1
    return v4

    .line 149
    :cond_1
    const-string v4, "com.android.browser.widget.PREV"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_3

    .line 150
    invoke-direct {p0, p1}, Lcom/android/browser/widget/BookmarkWidgetService;->getPreviousId(Landroid/content/Intent;)I

    move-result v2

    .line 151
    .local v2, prev:I
    if-ne v2, v5, :cond_2

    .line 152
    const-string v4, "BookmarkWidgetService"

    const-string v4, "Could not determine previous id"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 153
    goto :goto_1

    .line 155
    :cond_2
    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdsToResults:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;

    .line 156
    .local v3, res:Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    if-eqz v3, :cond_0

    .line 157
    invoke-direct {p0, v3}, Lcom/android/browser/widget/BookmarkWidgetService;->updateWidget(Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;)V

    goto :goto_0

    .line 159
    .end local v2           #prev:I
    .end local v3           #res:Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    :cond_3
    const-string v4, "com.android.browser.widget.NEXT"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v6, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/browser/widget/BookmarkWidgetService;->getNextId(Landroid/content/Intent;)I

    move-result v1

    .line 161
    .local v1, next:I
    if-ne v1, v5, :cond_4

    .line 162
    const-string v4, "BookmarkWidgetService"

    const-string v4, "Could not determine next id"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v7

    .line 163
    goto :goto_1

    .line 165
    :cond_4
    iget-object v4, p0, Lcom/android/browser/widget/BookmarkWidgetService;->mIdsToResults:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;

    .line 166
    .restart local v3       #res:Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;
    if-eqz v3, :cond_0

    .line 167
    invoke-direct {p0, v3}, Lcom/android/browser/widget/BookmarkWidgetService;->updateWidget(Lcom/android/browser/widget/BookmarkWidgetService$RenderResult;)V

    goto :goto_0
.end method
