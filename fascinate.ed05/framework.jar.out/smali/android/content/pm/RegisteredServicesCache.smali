.class public abstract Landroid/content/pm/RegisteredServicesCache;
.super Ljava/lang/Object;
.source "RegisteredServicesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManager"


# instance fields
.field private final mAttributesName:Ljava/lang/String;

.field public final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mInterfaceName:Ljava/lang/String;

.field private mListener:Landroid/content/pm/RegisteredServicesCacheListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<TV;>;"
        }
    .end annotation
.end field

.field private final mMetaDataName:Ljava/lang/String;

.field private mPersistentServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TV;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

.field private mPersistentServicesFileDidNotExist:Z

.field private final mReceiver:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/content/pm/XmlSerializerAndParser",
            "<TV;>;"
        }
    .end annotation
.end field

.field private mServices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TV;",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;"
        }
    .end annotation
.end field

.field private final mServicesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V
    .locals 10
    .parameter "context"
    .parameter "interfaceName"
    .parameter "metaDataName"
    .parameter "attributeName"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/pm/XmlSerializerAndParser",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p5, serializerAndParser:Landroid/content/pm/XmlSerializerAndParser;,"Landroid/content/pm/XmlSerializerAndParser<TV;>;"
    const/4 v8, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    .line 96
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    .line 98
    iput-object p3, p0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    .line 99
    iput-object p4, p0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    .line 100
    iput-object p5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    .line 102
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 103
    .local v0, dataDir:Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "system"

    invoke-direct {v5, v0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 107
    .local v5, systemDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v6, "/dbdata/system/registered_services"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v4, syncDir:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 109
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_0

    .line 110
    const-string v6, "PackageManager"

    const-string v7, "Unable to create registered_services directory"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x1f9

    invoke-static {v6, v7, v8, v8}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 118
    :cond_1
    new-instance v6, Lcom/android/internal/os/AtomicFile;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v4, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

    .line 120
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->generateServicesMap()V

    .line 122
    new-instance v2, Landroid/content/pm/RegisteredServicesCache$1;

    invoke-direct {v2, p0}, Landroid/content/pm/RegisteredServicesCache$1;-><init>(Landroid/content/pm/RegisteredServicesCache;)V

    .line 128
    .local v2, receiver:Landroid/content/BroadcastReceiver;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 133
    const-string v6, "package"

    invoke-virtual {v1, v6}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 134
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    .local v3, sdFilter:Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 138
    const-string v6, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v6, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 140
    return-void
.end method

.method private containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;TV;)Z"
        }
    .end annotation

    .prologue
    .line 375
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, serviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, type:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .end local p0           #this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 376
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 377
    const/4 v2, 0x1

    .line 381
    :goto_1
    return v2

    .line 375
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z
    .locals 4
    .parameter
    .parameter
    .parameter "uid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;TV;I)Z"
        }
    .end annotation

    .prologue
    .line 385
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, serviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    .local p2, type:Ljava/lang/Object;,"TV;"
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, N:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 386
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 387
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v3, p3, :cond_0

    .line 388
    const/4 v3, 0x1

    .line 392
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :goto_1
    return v3

    .line 385
    .restart local v2       #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v2           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private inSystemImage(I)Z
    .locals 10
    .parameter "callerUid"

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v9, 0x0

    .line 253
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 254
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 256
    .local v4, name:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 258
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 259
    const/4 v7, 0x1

    .line 265
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    return v7

    .line 261
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v7, v9

    .line 262
    goto :goto_1

    .line 254
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    move v7, v9

    .line 265
    goto :goto_1
.end method

.method private notifyListener(Ljava/lang/Object;Z)V
    .locals 6
    .parameter
    .parameter "removed"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, type:Ljava/lang/Object;,"TV;"
    const-string v5, "PackageManager"

    .line 170
    const-string v3, "PackageManager"

    const/4 v3, 0x2

    invoke-static {v5, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    const-string v3, "PackageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyListener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p2, :cond_1

    const-string v4, "removed"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 177
    .local v1, listener:Landroid/content/pm/RegisteredServicesCacheListener;,"Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 178
    .local v0, handler:Landroid/os/Handler;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    if-nez v1, :cond_2

    .line 189
    :goto_1
    return-void

    .line 171
    .end local v0           #handler:Landroid/os/Handler;
    .end local v1           #listener:Landroid/content/pm/RegisteredServicesCacheListener;,"Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    :cond_1
    const-string v4, "added"

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 183
    .restart local v0       #handler:Landroid/os/Handler;
    .restart local v1       #listener:Landroid/content/pm/RegisteredServicesCacheListener;,"Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    :cond_2
    move-object v2, v1

    .line 184
    .local v2, listener2:Landroid/content/pm/RegisteredServicesCacheListener;,"Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    new-instance v3, Landroid/content/pm/RegisteredServicesCache$2;

    invoke-direct {v3, p0, v2, p1, p2}, Landroid/content/pm/RegisteredServicesCache$2;-><init>(Landroid/content/pm/RegisteredServicesCache;Landroid/content/pm/RegisteredServicesCacheListener;Ljava/lang/Object;Z)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 20
    .parameter "service"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            ")",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 397
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v13, v0

    .line 398
    .local v13, si:Landroid/content/pm/ServiceInfo;
    new-instance v7, Landroid/content/ComponentName;

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object v0, v7

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .local v7, componentName:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 402
    .local v11, pm:Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    .line 404
    .local v10, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v13

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    .line 405
    if-nez v10, :cond_1

    .line 406
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "No "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mMetaDataName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " meta-data"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :catch_0
    move-exception v17

    move-object/from16 v8, v17

    .line 432
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unable to load resources for pacakge "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 435
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v17

    if-eqz v10, :cond_0

    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    throw v17

    .line 409
    :cond_1
    :try_start_2
    invoke-static {v10}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 413
    .local v6, attrs:Landroid/util/AttributeSet;
    :cond_2
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v14

    .local v14, type:I
    const/16 v17, 0x1

    move v0, v14

    move/from16 v1, v17

    if-eq v0, v1, :cond_3

    const/16 v17, 0x2

    move v0, v14

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 416
    :cond_3
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 417
    .local v9, nodeName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    .line 418
    new-instance v17, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Meta-data does not start with "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mAttributesName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " tag"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 422
    :cond_4
    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v17

    move-object v0, v13

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/RegisteredServicesCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v16

    .line 424
    .local v16, v:Ljava/lang/Object;,"TV;"
    if-nez v16, :cond_6

    .line 425
    const/16 v17, 0x0

    .line 435
    if-eqz v10, :cond_5

    :goto_0
    invoke-interface {v10}, Landroid/content/res/XmlResourceParser;->close()V

    .line 430
    :cond_5
    return-object v17

    .line 427
    :cond_6
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object v12, v0

    .line 428
    .local v12, serviceInfo:Landroid/content/pm/ServiceInfo;
    iget-object v5, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 429
    .local v5, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget v15, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 430
    .local v15, uid:I
    new-instance v17, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-object v2, v7

    move v3, v15

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/pm/RegisteredServicesCache$1;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 435
    if-eqz v10, :cond_5

    goto :goto_0
.end method

.method private readPersistentServicesLocked()V
    .locals 12

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const/4 v11, 0x1

    const/4 v10, 0x2

    .line 443
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v8

    iput-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    .line 444
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v8, :cond_1

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    const/4 v2, 0x0

    .line 449
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    move v8, v11

    :goto_1
    iput-boolean v8, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFileDidNotExist:Z

    .line 450
    iget-boolean v8, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFileDidNotExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v8, :cond_3

    .line 482
    if-eqz v2, :cond_0

    .line 484
    :try_start_1
    throw v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 485
    :catch_0
    move-exception v8

    goto :goto_0

    .line 449
    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    .line 453
    :cond_3
    :try_start_2
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v8}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 454
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 455
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v8, 0x0

    invoke-interface {v3, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 456
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 457
    .local v1, eventType:I
    :goto_2
    if-eq v1, v10, :cond_4

    .line 458
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_2

    .line 460
    :cond_4
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 461
    .local v5, tagName:Ljava/lang/String;
    const-string/jumbo v8, "services"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 462
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 464
    :cond_5
    if-ne v1, v10, :cond_8

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-ne v8, v10, :cond_8

    .line 465
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 466
    const-string/jumbo v8, "service"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 467
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v8, v3}, Landroid/content/pm/XmlSerializerAndParser;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v4

    .line 468
    .local v4, service:Ljava/lang/Object;,"TV;"
    if-nez v4, :cond_7

    .line 482
    .end local v4           #service:Ljava/lang/Object;,"TV;"
    :cond_6
    :goto_3
    if-eqz v2, :cond_0

    .line 484
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 471
    .restart local v4       #service:Ljava/lang/Object;,"TV;"
    :cond_7
    const/4 v8, 0x0

    :try_start_4
    const-string/jumbo v9, "uid"

    invoke-interface {v3, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 472
    .local v7, uidString:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 473
    .local v6, uid:I
    iget-object v8, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v4           #service:Ljava/lang/Object;,"TV;"
    .end local v6           #uid:I
    .end local v7           #uidString:Ljava/lang/String;
    :cond_8
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result v1

    .line 477
    if-ne v1, v11, :cond_5

    goto :goto_3

    .line 479
    .end local v1           #eventType:I
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #tagName:Ljava/lang/String;
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 480
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v8, "PackageManager"

    const-string v9, "Error reading persistent services, starting from scratch"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 482
    if-eqz v2, :cond_0

    .line 484
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 482
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    if-eqz v2, :cond_9

    .line 484
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 482
    :cond_9
    :goto_4
    throw v8

    .line 485
    :catch_2
    move-exception v9

    goto :goto_4
.end method

.method private writePersistentServicesLocked()V
    .locals 8

    .prologue
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    const-string/jumbo v5, "services"

    const-string/jumbo v5, "service"

    .line 495
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    if-nez v5, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    const/4 v1, 0x0

    .line 500
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 501
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 502
    .local v3, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v5, "utf-8"

    invoke-interface {v3, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 503
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 504
    const-string v5, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v6, 0x1

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 505
    const/4 v5, 0x0

    const-string/jumbo v6, "services"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 506
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 507
    .local v4, service:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 508
    const/4 v6, 0x0

    const-string/jumbo v7, "uid"

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v6, v7, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 509
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mSerializerAndParser:Landroid/content/pm/XmlSerializerAndParser;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6, v3}, Landroid/content/pm/XmlSerializerAndParser;->writeAsXml(Ljava/lang/Object;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 510
    const/4 v5, 0x0

    const-string/jumbo v6, "service"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 515
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v4           #service:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TV;Ljava/lang/Integer;>;"
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 516
    .local v0, e1:Ljava/io/IOException;
    const-string v5, "PackageManager"

    const-string v6, "Error writing accounts"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 517
    if-eqz v1, :cond_0

    .line 518
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    goto :goto_0

    .line 512
    .end local v0           #e1:Ljava/io/IOException;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #out:Lorg/xmlpull/v1/XmlSerializer;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    const-string/jumbo v6, "services"

    invoke-interface {v3, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 513
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 514
    iget-object v5, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v5, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 237
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 238
    .local v0, receiver:Landroid/content/BroadcastReceiver;
    if-eqz v0, :cond_0

    .line 239
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 241
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 144
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v3, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 145
    :try_start_0
    iget-object v2, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    .line 146
    .local v2, services:Ljava/util/Map;,"Ljava/util/Map<TV;Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RegisteredServicesCache: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " services"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 149
    .local v1, info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 146
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .end local v2           #services:Ljava/util/Map;,"Ljava/util/Map<TV;Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 151
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #services:Ljava/util/Map;,"Ljava/util/Map<TV;Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 245
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mReceiver:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "PackageManager"

    const-string v1, "RegisteredServicesCache finalized without being closed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/RegisteredServicesCache;->close()V

    .line 249
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 250
    return-void
.end method

.method generateServicesMap()V
    .locals 15

    .prologue
    .line 269
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v11, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 270
    .local v4, pm:Landroid/content/pm/PackageManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v8, serviceInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;>;"
    new-instance v11, Landroid/content/Intent;

    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v12, 0x80

    invoke-virtual {v4, v11, v12}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 273
    .local v7, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 275
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    :try_start_0
    invoke-direct {p0, v6}, Landroid/content/pm/RegisteredServicesCache;->parseServiceInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v3

    .line 276
    .local v3, info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    if-nez v3, :cond_0

    .line 277
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load service info "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 281
    .end local v3           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 282
    .local v1, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load service info "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 280
    .end local v1           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3       #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 283
    .end local v3           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    :catch_1
    move-exception v11

    move-object v1, v11

    .line 284
    .local v1, e:Ljava/io/IOException;
    const-string v11, "PackageManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to load service info "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v6}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 288
    .end local v1           #e:Ljava/io/IOException;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v11, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v11

    .line 289
    :try_start_2
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 290
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "generateServicesMap: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Landroid/content/pm/RegisteredServicesCache;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_2
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    if-nez v12, :cond_3

    .line 293
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->readPersistentServicesLocked()V

    .line 295
    :cond_3
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v12

    iput-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, changed:Z
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 298
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "found "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " services"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 310
    .restart local v3       #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    iget-object v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 311
    .local v5, previousUid:Ljava/lang/Integer;
    if-nez v5, :cond_7

    .line 312
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 313
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encountered new type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_6
    const/4 v0, 0x1

    .line 316
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    iget-object v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    iget-object v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v14, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    iget-boolean v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFileDidNotExist:Z

    if-nez v12, :cond_5

    .line 319
    iget-object v12, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;Z)V

    goto :goto_1

    .line 371
    .end local v0           #changed:Z
    .end local v3           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v5           #previousUid:Ljava/lang/Integer;
    :catchall_0
    move-exception v12

    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v12

    .line 321
    .restart local v0       #changed:Z
    .restart local v3       #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .restart local v5       #previousUid:Ljava/lang/Integer;
    :cond_7
    :try_start_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-ne v12, v13, :cond_9

    .line 322
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 323
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encountered existing type with the same uid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_8
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    iget-object v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 326
    :cond_9
    iget v12, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-direct {p0, v12}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    move-result v12

    if-nez v12, :cond_a

    iget-object v12, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v8, v12, v13}, Landroid/content/pm/RegisteredServicesCache;->containsTypeAndUid(Ljava/util/ArrayList;Ljava/lang/Object;I)Z

    move-result v12

    if-nez v12, :cond_d

    .line 328
    :cond_a
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 329
    iget v12, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-direct {p0, v12}, Landroid/content/pm/RegisteredServicesCache;->inSystemImage(I)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 330
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encountered existing type with a new uid but from the system: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    :cond_b
    :goto_2
    const/4 v0, 0x1

    .line 338
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    iget-object v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    invoke-interface {v12, v13, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    iget-object v13, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    iget v14, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    iget-object v12, v3, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v12, v13}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;Z)V

    goto/16 :goto_1

    .line 333
    :cond_c
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encountered existing type with a new uid but existing was removed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 343
    :cond_d
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 344
    const-string v12, "PackageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "encountered existing type with a new uid, ignoring: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 349
    .end local v3           #info:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<TV;>;"
    .end local v5           #previousUid:Ljava/lang/Integer;
    :cond_e
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v9

    .line 350
    .local v9, toBeRemoved:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TV;>;"
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 351
    .local v10, v1:Ljava/lang/Object;,"TV;"
    invoke-direct {p0, v8, v10}, Landroid/content/pm/RegisteredServicesCache;->containsType(Ljava/util/ArrayList;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 352
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 355
    .end local v10           #v1:Ljava/lang/Object;,"TV;"
    :cond_10
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 356
    .restart local v10       #v1:Ljava/lang/Object;,"TV;"
    iget-object v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServices:Ljava/util/HashMap;

    invoke-virtual {v12, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const/4 v0, 0x1

    .line 358
    const/4 v12, 0x1

    invoke-direct {p0, v10, v12}, Landroid/content/pm/RegisteredServicesCache;->notifyListener(Ljava/lang/Object;Z)V

    goto :goto_4

    .line 360
    .end local v10           #v1:Ljava/lang/Object;,"TV;"
    :cond_11
    if-eqz v0, :cond_14

    .line 361
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_12

    .line 362
    const-string v12, "PackageManager"

    const-string/jumbo v13, "writing updated list of persistent services"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_12
    invoke-direct {p0}, Landroid/content/pm/RegisteredServicesCache;->writePersistentServicesLocked()V

    .line 370
    :cond_13
    :goto_5
    const/4 v12, 0x0

    iput-boolean v12, p0, Landroid/content/pm/RegisteredServicesCache;->mPersistentServicesFileDidNotExist:Z

    .line 371
    monitor-exit v11

    .line 372
    return-void

    .line 366
    :cond_14
    const-string v12, "PackageManager"

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v12

    if-eqz v12, :cond_13

    .line 367
    const-string v12, "PackageManager"

    const-string v13, "persistent services did not change, so not writing anything"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_5
.end method

.method public getAllServices()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;>;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getListener()Landroid/content/pm/RegisteredServicesCacheListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    monitor-exit p0

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Landroid/content/pm/RegisteredServicesCache$ServiceInfo",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, type:Ljava/lang/Object;,"TV;"
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mServicesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 219
    :try_start_0
    iget-object v1, p0, Landroid/content/pm/RegisteredServicesCache;->mServices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    check-cast p0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    monitor-exit v0

    return-object p0

    .line 220
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/lang/String;",
            "Landroid/util/AttributeSet;",
            ")TV;"
        }
    .end annotation
.end method

.method public setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/RegisteredServicesCacheListener",
            "<TV;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Landroid/content/pm/RegisteredServicesCache;,"Landroid/content/pm/RegisteredServicesCache<TV;>;"
    .local p1, listener:Landroid/content/pm/RegisteredServicesCacheListener;,"Landroid/content/pm/RegisteredServicesCacheListener<TV;>;"
    if-nez p2, :cond_0

    .line 161
    new-instance p2, Landroid/os/Handler;

    .end local p2
    iget-object v0, p0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    .restart local p2
    :cond_0
    monitor-enter p0

    .line 164
    :try_start_0
    iput-object p2, p0, Landroid/content/pm/RegisteredServicesCache;->mHandler:Landroid/os/Handler;

    .line 165
    iput-object p1, p0, Landroid/content/pm/RegisteredServicesCache;->mListener:Landroid/content/pm/RegisteredServicesCacheListener;

    .line 166
    monitor-exit p0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
