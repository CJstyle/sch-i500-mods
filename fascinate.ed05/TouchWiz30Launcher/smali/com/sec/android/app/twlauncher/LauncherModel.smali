.class public Lcom/sec/android/app/twlauncher/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;,
        Lcom/sec/android/app/twlauncher/LauncherModel$Loader;,
        Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field private static final ALL_APPS_LOAD_DELAY:I = 0x0

.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final BATCH_SIZE:I = 0x0

.field static final DEBUG_LOADERS:Z = true

.field public static final DEFAULT_NUMBER:I = 0xffff

.field static final PROFILE_LOADERS:Z = false

.field static final TAG:Ljava/lang/String; = "Launcher.Model"

.field static final TOPAPP_COUNT:I = 0x3

.field private static final sCollator:Ljava/text/Collator;


# instance fields
.field private mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

.field private final mAllAppsListLock:Ljava/lang/Object;

.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

.field private mBatchSize:I

.field private mBeforeFirstLoad:Z

.field private mBeforeFirstQuery:Z

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field private mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mIsBusy:Z

.field private mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1972
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 1973
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$4;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$4;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;Lcom/sec/android/app/twlauncher/IconCache;Lcom/sec/android/app/twlauncher/BadgeCache;)V
    .locals 3
    .parameter "app"
    .parameter "iconCache"
    .parameter "badgeCache"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Lcom/sec/android/app/twlauncher/DeferredHandler;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    .line 78
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    .line 86
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    .line 87
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    .line 96
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z

    .line 117
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 118
    new-instance v0, Lcom/sec/android/app/twlauncher/AllAppsList;

    invoke-direct {v0, p2}, Lcom/sec/android/app/twlauncher/AllAppsList;-><init>(Lcom/sec/android/app/twlauncher/IconCache;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    .line 119
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 121
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 124
    iput v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I

    .line 126
    iput v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBatchSize:I

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 61
    invoke-static/range {p0 .. p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/twlauncher/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/twlauncher/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1600(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/twlauncher/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/LauncherModel$Loader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    return-object v0
.end method

.method static synthetic access$2000()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sec/android/app/twlauncher/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/twlauncher/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/LauncherModel;)Lcom/sec/android/app/twlauncher/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/twlauncher/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 61
    invoke-direct/range {p0 .. p7}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static addAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 11
    .parameter "context"
    .parameter "appInfo"

    .prologue
    const-string v1, "addAppToDatabase() "

    const-string v1, "Launcher.Model"

    .line 2071
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 2072
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2074
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    .line 2076
    .local v6, componentName:Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 2077
    .local v7, cursor:Landroid/database/Cursor;
    const/4 v9, 0x1

    .line 2080
    .local v9, isAdd:Z
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentname=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v7

    .line 2089
    if-eqz v7, :cond_1

    .line 2090
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 2091
    const/4 v9, 0x0

    .line 2093
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2097
    :cond_1
    :goto_0
    if-eqz v9, :cond_2

    .line 2098
    const-string v1, "componentname"

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2099
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2101
    :cond_2
    return-void

    .line 2084
    :catch_0
    move-exception v1

    move-object v8, v1

    .line 2085
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2089
    if-eqz v7, :cond_1

    .line 2090
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 2091
    const/4 v9, 0x0

    .line 2093
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2086
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catch_1
    move-exception v1

    move-object v8, v1

    .line 2087
    .local v8, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2089
    if-eqz v7, :cond_1

    .line 2090
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 2091
    const/4 v9, 0x0

    .line 2093
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2089
    .end local v8           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_6

    .line 2090
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 2091
    const/4 v9, 0x0

    .line 2093
    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 261
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 262
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 263
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 264
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 266
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 269
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 271
    if-eqz p7, :cond_1

    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 274
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    .line 277
    :cond_0
    return-void

    .line 271
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_1
    sget-object v3, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 139
    iget-wide v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 141
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/sec/android/app/twlauncher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static allocWidgetId(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 192
    const/4 v6, 0x0

    .line 194
    .local v6, c:Landroid/database/Cursor;
    const/4 v8, -0x1

    .line 196
    .local v8, id:I
    :cond_0
    const/4 v7, 0x0

    .line 197
    .local v7, count:I
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    long-to-int v8, v0

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appWidgetId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 201
    if-eqz v6, :cond_1

    .line 202
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 205
    :cond_1
    if-gtz v7, :cond_0

    .line 206
    return v8
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    .line 342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 344
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 345
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 353
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 354
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/UserFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 356
    return-void
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1952
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1953
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 1955
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LiveFolderInfo;-><init>()V

    .line 1956
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1958
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1937
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    .line 1938
    .local v0, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-nez v1, :cond_1

    .line 1940
    :cond_0
    new-instance v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/UserFolderInfo;-><init>()V

    .line 1941
    .restart local v0       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1943
    :cond_1
    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    return-object v0
.end method

.method private static getLabel(Landroid/content/pm/PackageManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/String;
    .locals 2
    .parameter "manager"
    .parameter "activityInfo"

    .prologue
    .line 1962
    invoke-virtual {p1, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1963
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1964
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1965
    if-nez v0, :cond_0

    .line 1966
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1969
    :cond_0
    return-object v0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 13
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1746
    const/4 v3, 0x0

    .line 1747
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>()V

    .line 1748
    .local v6, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    const/4 v11, 0x1

    iput v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    .line 1752
    move-object v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1754
    move-object v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1755
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 1792
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1793
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1794
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 1797
    :cond_0
    :goto_0
    invoke-virtual {v6, v3}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1798
    return-object v6

    .line 1757
    :pswitch_0
    move-object v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1758
    .local v8, packageName:Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1759
    .local v9, resourceName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1760
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 1763
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 1764
    .local v10, resources:Landroid/content/res/Resources;
    if-eqz v10, :cond_1

    .line 1765
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1766
    .local v5, id:I
    invoke-virtual {v10, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11, p2}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1772
    .end local v5           #id:I
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 1773
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1776
    :cond_2
    if-nez v3, :cond_0

    .line 1777
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1778
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1782
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1783
    if-nez v3, :cond_3

    .line 1784
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1785
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 1786
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1788
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1768
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 1755
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 18
    .parameter "context"
    .parameter "data"

    .prologue
    .line 1825
    const-string v15, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 1826
    .local v11, intent:Landroid/content/Intent;
    const-string v15, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1827
    .local v12, name:Ljava/lang/String;
    const-string v15, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1829
    .local v2, bitmap:Landroid/os/Parcelable;
    const/4 v7, 0x0

    .line 1830
    .local v7, icon:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1831
    .local v6, filtered:Z
    const/4 v3, 0x0

    .line 1832
    .local v3, customIcon:Z
    const/4 v8, 0x0

    .line 1834
    .local v8, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v2, :cond_2

    instance-of v15, v2, Landroid/graphics/Bitmap;

    if-eqz v15, :cond_2

    .line 1835
    new-instance v15, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v15, v2}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1836
    const/4 v6, 0x1

    .line 1837
    const/4 v3, 0x1

    .line 1854
    :cond_0
    :goto_0
    new-instance v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v10}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>()V

    .line 1856
    .local v10, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    if-nez v7, :cond_1

    .line 1857
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1858
    const/4 v15, 0x1

    iput-boolean v15, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1860
    :cond_1
    invoke-virtual {v10, v7}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1862
    iput-object v12, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1863
    iput-object v11, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1864
    iput-boolean v3, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    .line 1865
    iput-object v8, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1867
    return-object v10

    .line 1839
    .end local v10           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .restart local v2       #bitmap:Landroid/os/Parcelable;
    :cond_2
    const-string v15, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1840
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v15, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v15, :cond_0

    .line 1842
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v8, v0

    .line 1843
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1844
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1846
    .local v14, resources:Landroid/content/res/Resources;
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1847
    .local v9, id:I
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1848
    .end local v9           #id:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 1849
    .local v4, e:Ljava/lang/Exception;
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not load shortcut icon: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static loadAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const-string v1, "loadAppToDatabase() "

    const-string v1, "Launcher.Model"

    .line 2035
    const/4 v6, 0x0

    .line 2036
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2039
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "componentname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "top_number"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "page_number"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "cell_number"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "top_number ASC, page_number ASC, cell_number ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2051
    :goto_0
    return-object v6

    .line 2044
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 2045
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2048
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    throw v1

    .line 2046
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 2047
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private static loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/sec/android/app/twlauncher/LiveFolderInfo;)V
    .locals 10
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    const v9, 0x7f02004b

    .line 1873
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1874
    .local v1, iconType:I
    packed-switch v1, :pswitch_data_0

    .line 1894
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1898
    :goto_0
    return-void

    .line 1876
    :pswitch_0
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1877
    .local v4, packageName:Ljava/lang/String;
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1878
    .local v5, resourceName:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1880
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    .line 1881
    .local v6, resources:Landroid/content/res/Resources;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1882
    .local v2, id:I
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1889
    .end local v2           #id:I
    .end local v6           #resources:Landroid/content/res/Resources;
    :goto_1
    new-instance v7, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v7}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1890
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v4, v7, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1891
    iget-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    iput-object v5, v7, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1884
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 1885
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v7, p0}, Lcom/sec/android/app/twlauncher/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p5, Lcom/sec/android/app/twlauncher/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1874
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static loadTopAppToDatabase(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const-string v1, "loadTopAppToDatabase() "

    const-string v1, "Launcher.Model"

    .line 2104
    const/4 v6, 0x0

    .line 2105
    .local v6, c:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2108
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "componentname"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "top_number"

    aput-object v4, v2, v3

    const-string v3, "top_number!=65535"

    const/4 v4, 0x0

    const-string v5, "top_number ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2119
    :goto_0
    return-object v6

    .line 2112
    :catch_0
    move-exception v1

    move-object v7, v1

    .line 2113
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2116
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v1

    throw v1

    .line 2114
    :catch_1
    move-exception v1

    move-object v7, v1

    .line 2115
    .local v7, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadTopAppToDatabase() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    const/4 v5, 0x0

    .line 153
    iput-wide p2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    .line 154
    iput p4, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 155
    iput p5, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 156
    iput p6, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    .line 158
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 159
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 161
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "container"

    iget-wide v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    const-string v2, "cellX"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v2, "cellY"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v2, "screen"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 166
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method private onReceiveExternalApplications(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const-string v7, "android.intent.extra.changed_package_list"

    const-string v6, "Launcher.Model"

    const-string v5, " received"

    .line 531
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstQuery:Z

    if-eqz v2, :cond_1

    .line 558
    :cond_0
    :goto_0
    return-void

    .line 534
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 536
    const-string v2, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 542
    monitor-enter p0

    .line 543
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    .line 544
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 546
    .end local v1           #packages:[Ljava/lang/String;
    :cond_2
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 547
    const-string v2, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " received"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const-string v2, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 550
    .restart local v1       #packages:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eqz v2, :cond_0

    .line 553
    monitor-enter p0

    .line 554
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    .line 555
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 556
    invoke-virtual {p0, p1, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    goto :goto_0

    .line 555
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method static removeAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)V
    .locals 4
    .parameter "context"
    .parameter "appInfo"

    .prologue
    .line 2063
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2065
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "componentname=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2068
    return-void
.end method

.method static removeAppToDatabase(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "strId"

    .prologue
    .line 2055
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2057
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2060
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 175
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 178
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 180
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 182
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 184
    return v7

    .line 182
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static updateAppToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 9
    .parameter "context"
    .parameter "info"

    .prologue
    .line 292
    iget-boolean v0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    if-eqz v0, :cond_0

    const/4 p0, -0x1

    .line 333
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 294
    .restart local p0
    .restart local p1
    :cond_0
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 295
    .local v8, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object p0, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    .line 298
    .local p0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    .line 300
    .local p0, componentName:Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 301
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, -0x1

    .line 304
    .local v7, id:I
    :try_start_0
    sget-object v1, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "componentname=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 313
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    if-eqz v1, :cond_8

    .line 314
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_7

    .line 315
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 318
    .end local v7           #id:I
    .local v2, id:I
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 322
    :goto_2
    const-string v1, "top_number"

    .end local v1           #cursor:Landroid/database/Cursor;
    iget v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 323
    const-string v1, "page_number"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v1, "cell_number"

    iget v3, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v8, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 325
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 327
    const/4 p1, -0x1

    if-eq v2, p1, :cond_1

    .line 328
    .end local p1
    int-to-long p0, v2

    invoke-static {p0, p1}, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->getContentUri(J)Landroid/net/Uri;

    .end local p0           #componentName:Landroid/content/ComponentName;
    move-result-object p0

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v8, p1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    goto/16 :goto_0

    .line 308
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    .restart local p0       #componentName:Landroid/content/ComponentName;
    .restart local p1
    :catch_0
    move-exception v1

    .line 309
    .local v1, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    if-eqz v6, :cond_5

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_6

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 318
    .end local v7           #id:I
    .local v1, id:I
    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v1

    .end local v1           #id:I
    .restart local v2       #id:I
    move-object v1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    goto :goto_2

    .line 310
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :catch_1
    move-exception v1

    .line 311
    .local v1, e:Ljava/lang/IllegalStateException;
    :try_start_2
    const-string v2, "Launcher.Model"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePageNumberToDatabase() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .end local v1           #e:Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 313
    if-eqz v6, :cond_5

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 318
    .end local v7           #id:I
    .local v1, id:I
    :goto_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v2, v1

    .end local v1           #id:I
    .restart local v2       #id:I
    move-object v1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .line 313
    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :catchall_0
    move-exception p0

    move-object p1, p0

    .end local p0           #componentName:Landroid/content/ComponentName;
    .end local p1
    if-eqz v6, :cond_3

    .line 314
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_2

    .line 315
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 316
    const/4 p0, 0x0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    .line 318
    .end local v7           #id:I
    .local p0, id:I
    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_6
    throw p1

    .line 330
    .end local v6           #cursor:Landroid/database/Cursor;
    .restart local v2       #id:I
    .local p0, componentName:Landroid/content/ComponentName;
    :cond_1
    const-string p1, "componentname"

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #componentName:Landroid/content/ComponentName;
    invoke-virtual {v8, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    sget-object p0, Lcom/sec/android/app/twlauncher/LauncherSettings$Apps;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 333
    const/4 p0, -0x1

    goto/16 :goto_0

    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :cond_2
    move p0, v7

    .end local v7           #id:I
    .local p0, id:I
    goto :goto_5

    .end local p0           #id:I
    .restart local v7       #id:I
    :cond_3
    move p0, v7

    .end local v7           #id:I
    .restart local p0       #id:I
    goto :goto_6

    .restart local v7       #id:I
    .local p0, componentName:Landroid/content/ComponentName;
    .restart local p1
    :cond_4
    move v1, v7

    .end local v7           #id:I
    .local v1, id:I
    goto :goto_4

    .end local v1           #id:I
    .restart local v7       #id:I
    :cond_5
    move v2, v7

    .end local v7           #id:I
    .restart local v2       #id:I
    move-object v1, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    goto/16 :goto_2

    .end local v1           #cursor:Landroid/database/Cursor;
    .end local v2           #id:I
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :cond_6
    move v1, v7

    .end local v7           #id:I
    .local v1, id:I
    goto :goto_3

    .end local v6           #cursor:Landroid/database/Cursor;
    .local v1, cursor:Landroid/database/Cursor;
    .restart local v7       #id:I
    :cond_7
    move v2, v7

    .end local v7           #id:I
    .restart local v2       #id:I
    goto/16 :goto_1

    .end local v2           #id:I
    .restart local v7       #id:I
    :cond_8
    move v2, v7

    .end local v7           #id:I
    .restart local v2       #id:I
    goto/16 :goto_2
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 283
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 284
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 286
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/sec/android/app/twlauncher/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 288
    iget-wide v2, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 289
    return-void
.end method


# virtual methods
.method public addAppWidgetArray(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "appWidgetInfo"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->addAppWidgetArray(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 399
    return-void
.end method

.method public addFolderArray(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "folderInfo"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->addFolderArray(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 391
    return-void
.end method

.method public addItemArray(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->addItemArray(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 383
    return-void
.end method

.method public addSamsungWidgetArray(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "sWidgetInfo"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->addSamsungWidgetArray(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 407
    return-void
.end method

.method addShortcut(Landroid/content/Context;Landroid/content/Intent;Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;Z)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "cellInfo"
    .parameter "notify"

    .prologue
    .line 1817
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v1

    .line 1818
    .local v1, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    const-wide/16 v2, -0x64

    iget v4, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->screen:I

    iget v5, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellX:I

    iget v6, p3, Lcom/sec/android/app/twlauncher/CellLayout$CellInfo;->cellY:I

    move-object v0, p1

    move v7, p4

    invoke-static/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIIIZ)V

    .line 1821
    return-object v1
.end method

.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 2123
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBeforeFirstLoad="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCallbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    const-string v0, "Launcher.Model"

    const-string v0, "mAllAppsList.data"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2126
    const-string v0, "Launcher.Model"

    const-string v0, "mAllAppsList.added"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2127
    const-string v0, "Launcher.Model"

    const-string v0, "mAllAppsList.removed"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2128
    const-string v0, "Launcher.Model"

    const-string v0, "mAllAppsList.modified"

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v2, v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2129
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->dumpState()V

    .line 2130
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/FolderInfo;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/sec/android/app/twlauncher/FolderInfo;",
            ">;J)",
            "Lcom/sec/android/app/twlauncher/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 213
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/sec/android/app/twlauncher/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 214
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/sec/android/app/twlauncher/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id=? and (itemType=? or itemType=?)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 221
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 222
    const-string v4, "itemType"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 223
    .local v14, itemTypeIndex:I
    const-string v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 224
    .local v16, titleIndex:I
    const-string v4, "container"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 225
    .local v12, containerIndex:I
    const-string v4, "screen"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 226
    .local v15, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 227
    .local v10, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 229
    .local v11, cellYIndex:I
    const/4 v13, 0x0

    .line 230
    .local v13, folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 239
    :goto_0
    move-object v0, v9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/sec/android/app/twlauncher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 240
    move-wide/from16 v0, p3

    move-object v2, v13

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/FolderInfo;->id:J

    .line 241
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v13, Lcom/sec/android/app/twlauncher/FolderInfo;->container:J

    .line 242
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/sec/android/app/twlauncher/FolderInfo;->screen:I

    .line 243
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/sec/android/app/twlauncher/FolderInfo;->cellX:I

    .line 244
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/sec/android/app/twlauncher/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v4, v13

    .line 252
    .end local v10           #cellXIndex:I
    .end local v11           #cellYIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    .end local v14           #itemTypeIndex:I
    .end local v15           #screenIndex:I
    .end local v16           #titleIndex:I
    :goto_1
    return-object v4

    .line 232
    .restart local v10       #cellXIndex:I
    .restart local v11       #cellYIndex:I
    .restart local v12       #containerIndex:I
    .restart local v13       #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    .restart local v14       #itemTypeIndex:I
    .restart local v15       #screenIndex:I
    .restart local v16       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-result-object v13

    .line 233
    goto :goto_0

    .line 235
    :pswitch_1
    invoke-static/range {p2 .. p4}, Lcom/sec/android/app/twlauncher/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/sec/android/app/twlauncher/LiveFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    goto :goto_0

    .line 249
    .end local v10           #cellXIndex:I
    .end local v11           #cellYIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #folderInfo:Lcom/sec/android/app/twlauncher/FolderInfo;
    .end local v14           #itemTypeIndex:I
    .end local v15           #screenIndex:I
    .end local v16           #titleIndex:I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 252
    const/4 v4, 0x0

    goto :goto_1

    .line 249
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    .line 230
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1806
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1808
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1810
    :goto_0
    return-object v2

    .line 1809
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1810
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 7
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 1679
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1689
    const/4 v1, 0x0

    .line 1690
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    invoke-direct {v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>()V

    .line 1692
    .local v2, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1693
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1694
    const/4 v4, 0x0

    .line 1736
    :goto_0
    return-object v4

    .line 1704
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1705
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1706
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1709
    :cond_1
    if-nez v1, :cond_2

    .line 1710
    if-eqz p4, :cond_2

    .line 1711
    invoke-virtual {p0, p4, p5}, Lcom/sec/android/app/twlauncher/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1715
    :cond_2
    if-nez v1, :cond_3

    .line 1716
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1717
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    .line 1719
    :cond_3
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1722
    if-eqz v3, :cond_4

    .line 1723
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1726
    :cond_4
    iget-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1727
    if-eqz p4, :cond_5

    .line 1728
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1732
    :cond_5
    iget-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1733
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1735
    :cond_6
    iput v5, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->itemType:I

    move-object v4, v2

    .line 1736
    goto :goto_0
.end method

.method public initialize(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 364
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/DeferredHandler;->cancel()V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBusy()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIsBusy:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 418
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 419
    .local v4, action:Ljava/lang/String;
    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const-string v17, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 421
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->onReceiveExternalApplications(Landroid/content/Context;Landroid/content/Intent;)V

    .line 528
    .end local p2
    :cond_1
    :goto_0
    return-void

    .line 426
    .restart local p2
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mApp:Lcom/sec/android/app/twlauncher/LauncherApplication;

    move-object/from16 p1, v0

    .line 428
    const/4 v5, 0x0

    .line 429
    .local v5, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v13, 0x0

    .line 430
    .local v13, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 432
    .local v10, modified:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mBeforeFirstLoad:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsListLock:Ljava/lang/Object;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 439
    :try_start_0
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 442
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v12

    .line 443
    .local v12, packageName:Ljava/lang/String;
    const-string v18, "android.intent.extra.REPLACING"

    const/16 v19, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v15

    .line 445
    .local v15, replacing:Z
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v18

    if-nez v18, :cond_5

    .line 447
    :cond_4
    monitor-exit v17

    goto :goto_0

    .line 527
    .end local v12           #packageName:Ljava/lang/String;
    .end local v15           #replacing:Z
    .end local p2
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 450
    .restart local v12       #packageName:Ljava/lang/String;
    .restart local v15       #replacing:Z
    .restart local p2
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v16

    .line 452
    .local v16, spm:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    const-string v18, "android.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 453
    if-eqz v16, :cond_6

    .line 454
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 480
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_8

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    move-object v5, v0

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->added:Ljava/util/ArrayList;

    .line 484
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_f

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object v13, v0

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->removed:Ljava/util/ArrayList;

    .line 487
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 488
    .local v9, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object/from16 v18, v0

    move-object v0, v9

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/IconCache;->remove(Landroid/content/ComponentName;)V

    goto :goto_2

    .line 457
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_9
    const-string v18, "android.intent.action.PACKAGE_REMOVED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 458
    if-nez v15, :cond_7

    .line 459
    if-eqz v16, :cond_a

    .line 460
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->removePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 462
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AllAppsList;->removePackage(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    :cond_b
    const-string v18, "android.intent.action.PACKAGE_ADDED"

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 467
    if-nez v15, :cond_d

    .line 468
    if-eqz v16, :cond_c

    .line 469
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 471
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AllAppsList;->addPackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 473
    :cond_d
    if-eqz v16, :cond_e

    .line 474
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 476
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 491
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_10

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    move-object v10, v0

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsList:Lcom/sec/android/app/twlauncher/AllAppsList;

    move-object/from16 v18, v0

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/AllAppsList;->modified:Ljava/util/ArrayList;

    .line 496
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-object/from16 v7, p2

    .line 497
    .local v7, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :goto_3
    if-nez v7, :cond_12

    .line 498
    const-string v18, "Launcher.Model"

    const-string v19, "Nobody to tell about the new app.  Launcher is probably loading."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    monitor-exit v17

    goto/16 :goto_0

    .line 496
    .end local v7           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    .restart local p2
    :cond_11
    const/16 v18, 0x0

    move-object/from16 v7, v18

    goto :goto_3

    .line 502
    .end local p2
    .restart local v7       #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    :cond_12
    if-eqz v5, :cond_13

    .line 503
    move-object v6, v5

    .line 504
    .local v6, addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/twlauncher/LauncherModel$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$1;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 510
    .end local v6           #addedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_13
    if-eqz v10, :cond_14

    .line 511
    move-object v11, v10

    .line 512
    .local v11, modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/twlauncher/LauncherModel$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$2;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 518
    .end local v11           #modifiedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_14
    if-eqz v13, :cond_15

    .line 519
    move-object v14, v13

    .line 520
    .local v14, removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/sec/android/app/twlauncher/LauncherModel$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v7

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$3;-><init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/twlauncher/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 527
    .end local v7           #callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    .end local v12           #packageName:Ljava/lang/String;
    .end local v14           #removedFinal:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v15           #replacing:Z
    .end local v16           #spm:Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;
    :cond_15
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public removeAppWidgetArray(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 1
    .parameter "appWidgetInfo"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->removeAppWidgetArray(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    .line 403
    return-void
.end method

.method public removeFolderArray(Lcom/sec/android/app/twlauncher/FolderInfo;)V
    .locals 1
    .parameter "folderInfo"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->removeFolderArray(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 395
    return-void
.end method

.method public removeItemArray(Lcom/sec/android/app/twlauncher/ItemInfo;)V
    .locals 1
    .parameter "itemInfo"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->removeItemArray(Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 387
    return-void
.end method

.method public removeSamsungWidgetArray(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V
    .locals 1
    .parameter "sWidgetInfo"

    .prologue
    .line 410
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->removeSamsungWidgetArray(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 411
    return-void
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 369
    monitor-enter p0

    .line 370
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mWorkspaceLoaded:Z

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mAllAppsLoaded:Z

    .line 371
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mHandler:Lcom/sec/android/app/twlauncher/DeferredHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeferredHandler;->cancel()V

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->startLoader(Landroid/content/Context;Z)V

    .line 375
    return-void

    .line 371
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public stopLoader()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mLoader:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->stopLoader()V

    .line 379
    return-void
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v7, 0x0

    .line 1907
    iget-boolean v5, p2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->onExternalStorage:Z

    if-eqz v5, :cond_0

    iget-boolean v5, p2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->customIcon:Z

    if-nez v5, :cond_0

    iget-boolean v5, p2, Lcom/sec/android/app/twlauncher/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_0

    .line 1909
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1911
    .local v0, data:[B
    if-eqz v0, :cond_2

    .line 1912
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1913
    .local v4, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/LauncherModel;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    invoke-virtual {p2, v5}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1914
    .local v2, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x1

    move v3, v5

    .line 1921
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 1922
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "going to save icon bitmap for info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    invoke-static {p1, p2}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1929
    .end local v0           #data:[B
    .end local v3           #needSave:Z
    :cond_0
    return-void

    .restart local v0       #data:[B
    .restart local v2       #loaded:Landroid/graphics/Bitmap;
    .restart local v4       #saved:Landroid/graphics/Bitmap;
    :cond_1
    move v3, v7

    .line 1914
    goto :goto_0

    .line 1916
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0

    .line 1918
    .end local v3           #needSave:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1919
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_0
.end method
