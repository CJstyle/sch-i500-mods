.class public Lcom/sec/android/app/twlauncher/BadgeCache;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/BadgeCache$1;,
        Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    }
.end annotation


# static fields
.field private static final INITIAL_BADGE_CACHE_CAPACITY:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.BadgeCache"


# instance fields
.field private final mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/LauncherApplication;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    .line 48
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 49
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 50
    return-void
.end method

.method private cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    .locals 2
    .parameter "componentName"

    .prologue
    .line 96
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    .line 97
    .local v0, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    return-object v0
.end method

.method private updateBadgeCountLocked(Landroid/content/ComponentName;)V
    .locals 14
    .parameter "componentName"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x0

    const-string v0, "updateApplicationInfoBadgeCount() "

    const-string v12, "Ignoring exception while cursor close() call. e:"

    const-string v10, "Launcher.BadgeCache"

    .line 114
    const/4 v8, 0x0

    .line 115
    .local v8, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 117
    .local v6, badgeCount:I
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mContext:Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.sec.badge/apps"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "badgecount"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

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
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v8

    .line 127
    if-eqz v8, :cond_1

    .line 128
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 133
    :cond_0
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 142
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v7

    .line 143
    .local v7, cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-lez v6, :cond_8

    .line 144
    if-nez v7, :cond_7

    .line 145
    new-instance v7, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    .end local v7           #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    invoke-direct {v7, v13}, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;-><init>(Lcom/sec/android/app/twlauncher/BadgeCache$1;)V

    .line 146
    .restart local v7       #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    iput v6, v7, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_2
    :goto_1
    return-void

    .line 134
    .end local v7           #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :catch_0
    move-exception v9

    .line 136
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "Launcher.BadgeCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring exception while cursor close() call. e:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v9           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 123
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    :try_start_2
    const-string v0, "Launcher.BadgeCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 127
    if-eqz v8, :cond_1

    .line 128
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 133
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 134
    :catch_2
    move-exception v9

    .line 136
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "Launcher.BadgeCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring exception while cursor close() call. e:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 124
    .end local v9           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v0

    move-object v9, v0

    .line 125
    .local v9, e:Ljava/lang/IllegalStateException;
    :try_start_4
    const-string v0, "Launcher.BadgeCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateApplicationInfoBadgeCount() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    if-eqz v8, :cond_1

    .line 128
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 133
    :cond_4
    :try_start_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 134
    :catch_4
    move-exception v9

    .line 136
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "Launcher.BadgeCache"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring exception while cursor close() call. e:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 127
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_6

    .line 128
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_5

    .line 129
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 130
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 133
    :cond_5
    :try_start_6
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 137
    :cond_6
    :goto_2
    throw v0

    .line 134
    :catch_5
    move-exception v9

    .line 136
    .restart local v9       #e:Ljava/lang/Exception;
    const-string v1, "Launcher.BadgeCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring exception while cursor close() call. e:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 149
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v7       #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :cond_7
    iput v6, v7, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    goto/16 :goto_1

    .line 154
    :cond_8
    if-eqz v7, :cond_2

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 67
    monitor-exit v0

    .line 68
    return-void

    .line 67
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBadgeCount(Landroid/content/ComponentName;)I
    .locals 3
    .parameter "component"

    .prologue
    const/4 v2, 0x0

    .line 85
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 86
    if-nez p1, :cond_0

    .line 87
    :try_start_0
    monitor-exit v1

    move v1, v2

    .line 91
    :goto_0
    return v1

    .line 90
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v0

    .line 91
    .local v0, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-eqz v0, :cond_1

    iget v2, v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    :cond_1
    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 92
    .end local v0           #entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getBadgeCount(Landroid/content/Intent;)I
    .locals 7
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    .line 71
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 72
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 73
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 75
    .local v0, component:Landroid/content/ComponentName;
    if-eqz v2, :cond_0

    if-nez v0, :cond_1

    .line 76
    :cond_0
    monitor-exit v3

    move v3, v6

    .line 80
    :goto_0
    return v3

    .line 79
    :cond_1
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v1

    .line 80
    .local v1, entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-eqz v1, :cond_2

    iget v4, v1, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    :goto_1
    monitor-exit v3

    move v3, v4

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 81
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #entry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public remove(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "componentName"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 58
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBadgeCount(Landroid/content/ComponentName;I)V
    .locals 3
    .parameter "componentName"
    .parameter "badgeCount"

    .prologue
    .line 161
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->cacheLocked(Landroid/content/ComponentName;)Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    move-result-object v0

    .line 163
    .local v0, cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    if-lez p2, :cond_2

    .line 164
    if-nez v0, :cond_1

    .line 165
    new-instance v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;

    .end local v0           #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;-><init>(Lcom/sec/android/app/twlauncher/BadgeCache$1;)V

    .line 166
    .restart local v0       #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    iput p2, v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    .line 167
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    :goto_0
    monitor-exit v1

    .line 179
    return-void

    .line 169
    :cond_1
    iput p2, v0, Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;->badgeCount:I

    goto :goto_0

    .line 178
    .end local v0           #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 174
    .restart local v0       #cacheEntry:Lcom/sec/android/app/twlauncher/BadgeCache$CacheEntry;
    :cond_2
    if-eqz v0, :cond_0

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public updateBadgeCount(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "component"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v0

    .line 102
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/BadgeCache;->updateBadgeCountLocked(Landroid/content/ComponentName;)V

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateBadgeCount(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 107
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/BadgeCache;->mCache:Ljava/util/HashMap;

    monitor-enter v1

    .line 108
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 109
    .local v0, component:Landroid/content/ComponentName;
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/BadgeCache;->updateBadgeCountLocked(Landroid/content/ComponentName;)V

    .line 110
    monitor-exit v1

    .line 111
    return-void

    .line 110
    .end local v0           #component:Landroid/content/ComponentName;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
