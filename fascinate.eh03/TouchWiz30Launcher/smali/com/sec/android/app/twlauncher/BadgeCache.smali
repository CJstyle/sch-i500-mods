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


# virtual methods
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
