.class public Landroid/app/LoadVzwLbs;
.super Ljava/lang/Object;
.source "LoadVzwLbs.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "LoadVzwLbs"

.field public static final hasVzwLbs:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadVzwLbsFromFramework()Ljava/lang/Object;
    .locals 6

    .prologue
    const-string v5, "LoadVzwLbs"

    .line 23
    const-string v3, "LoadVzwLbs"

    const-string v3, "loading WITS LBS from Framework"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    const-string v3, "VZW_LOCATION_SERVICE"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 25
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/vzw/location/IVzwLocationManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwLocationManager;

    move-result-object v2

    .line 26
    .local v2, service:Lcom/vzw/location/IVzwLocationManager;
    if-nez v2, :cond_0

    .line 27
    const-string v3, "LoadVzwLbs"

    const-string v3, "Service returned was null!"

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    new-instance v1, Lcom/vzw/location/VzwLocationManager;

    invoke-direct {v1, v2}, Lcom/vzw/location/VzwLocationManager;-><init>(Lcom/vzw/location/IVzwLocationManager;)V

    .line 30
    .local v1, ret:Lcom/vzw/location/VzwLocationManager;
    const-string v3, "LoadVzwLbs"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning new VzwLocationManager: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-object v1
.end method

.method public static startVzwService(Landroid/content/Context;)V
    .locals 14
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string/jumbo v9, "vzwlbs.jar"

    const-string v11, "LoadVzwLbs"

    .line 35
    const-string v6, "/data/data/com.samsung.vzwlbsjar/files/"

    .line 37
    .local v6, witsJarLoc:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    const-string/jumbo v7, "vzwlbs.jar"

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .local v5, vzwLbsFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 39
    const-string v6, "/system/framework/"

    .line 40
    const-string v7, "LoadVzwLbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not present, trying "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " instead"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v5, Ljava/io/File;

    .end local v5           #vzwLbsFile:Ljava/io/File;
    const-string/jumbo v7, "vzwlbs.jar"

    invoke-direct {v5, v6, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .restart local v5       #vzwLbsFile:Ljava/io/File;
    :cond_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 45
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_1

    .line 46
    const-string v7, "LoadVzwLbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t read "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v7, "LoadVzwLbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v3, Ldalvik/system/DexClassLoader;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "vzwlbs.jar"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "/data/dalvik-cache/"

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-direct {v3, v7, v8, v9, v10}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 51
    .local v3, dcl:Ldalvik/system/DexClassLoader;
    const-string v7, "LoadVzwLbs"

    const-string v7, "Loading VzwLocationManagerService"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v7, "com.vzw.location.service.VzwLocationManagerService"

    invoke-virtual {v3, v7}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, clazz:Ljava/lang/Class;
    new-array v7, v13, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v12

    invoke-virtual {v1, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 54
    .local v2, constructor:Ljava/lang/reflect/Constructor;
    new-array v0, v13, [Ljava/lang/Object;

    aput-object p0, v0, v12

    .line 56
    .local v0, arglist:[Ljava/lang/Object;
    const-string v7, "LoadVzwLbs"

    const-string v7, "Instantiating VzwLocationManagerService"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 59
    .local v4, ib:Landroid/os/IBinder;
    const-string v7, "LoadVzwLbs"

    const-string v7, "Adding VzwLocationManagerService"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const-string v7, "VZW_LOCATION_SERVICE"

    invoke-static {v7, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_0

    .line 63
    .end local v0           #arglist:[Ljava/lang/Object;
    .end local v1           #clazz:Ljava/lang/Class;
    .end local v2           #constructor:Ljava/lang/reflect/Constructor;
    .end local v3           #dcl:Ldalvik/system/DexClassLoader;
    .end local v4           #ib:Landroid/os/IBinder;
    :cond_2
    const-string v7, "LoadVzwLbs"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not present, not loading WITS VZW LBS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
