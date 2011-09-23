.class final Landroid/app/ContextImpl$SharedPreferencesImpl;
.super Ljava/lang/Object;
.source "ContextImpl.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedPreferencesImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;
    }
.end annotation


# static fields
.field private static final mContent:Ljava/lang/Object;


# instance fields
.field private final mBackupFile:Ljava/io/File;

.field private final mFile:Ljava/io/File;

.field private final mFileStatus:Landroid/os/FileUtils$FileStatus;

.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mMap:Ljava/util/Map;

.field private final mMode:I

.field private mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3004
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/io/File;ILjava/util/Map;)V
    .locals 2
    .parameter "file"
    .parameter "mode"
    .parameter "initialContents"

    .prologue
    .line 3008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3001
    new-instance v0, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v0}, Landroid/os/FileUtils$FileStatus;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    .line 3009
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    .line 3010
    invoke-static {p1}, Landroid/app/ContextImpl;->access$000(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    .line 3011
    iput p2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    .line 3012
    if-eqz p3, :cond_1

    move-object v0, p3

    :goto_0
    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 3013
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3014
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    iget-wide v0, v0, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mTimestamp:J

    .line 3016
    :cond_0
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    .line 3017
    return-void

    .line 3012
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0
.end method

.method static synthetic access$100(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2995
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/ContextImpl$SharedPreferencesImpl;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2995
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/ContextImpl$SharedPreferencesImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 2995
    invoke-direct {p0}, Landroid/app/ContextImpl$SharedPreferencesImpl;->writeFileLocked()Z

    move-result v0

    return v0
.end method

.method private createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;
    .locals 13
    .parameter "file"

    .prologue
    const/16 v12, 0x1f9

    const/4 v10, -0x1

    const-string v11, "ApplicationContext"

    .line 3203
    const/4 v6, 0x0

    .line 3205
    .local v6, str:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #str:Ljava/io/FileOutputStream;
    .local v7, str:Ljava/io/FileOutputStream;
    move-object v6, v7

    .end local v7           #str:Ljava/io/FileOutputStream;
    .restart local v6       #str:Ljava/io/FileOutputStream;
    :goto_0
    move-object v8, v6

    .line 3244
    :goto_1
    return-object v8

    .line 3206
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 3207
    .local v2, e:Ljava/io/FileNotFoundException;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 3208
    .local v4, parent:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_1

    .line 3209
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_0

    .line 3210
    const-string v8, "ApplicationContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t create directory for SharedPreferences file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3211
    const/4 v8, 0x0

    goto :goto_1

    .line 3214
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3219
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 3220
    .local v5, pkgName:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/data/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3221
    .local v0, dataPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/shared_prefs"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3223
    .local v1, dataSPPath:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "dbdata"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-eq v8, v10, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 3225
    const-string v8, "ApplicationContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'s shared_prefs is already exist in /data/data, so we should restore the original data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3229
    :try_start_1
    new-instance v8, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v8}, Landroid/os/FileUtils;->copyDirectory(Ljava/io/File;Ljava/io/File;)V

    .line 3230
    invoke-static {v1}, Landroid/os/FileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 3234
    .end local v0           #dataPath:Ljava/lang/String;
    .end local v1           #dataSPPath:Ljava/io/File;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_1
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v12, v10, v10}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 3239
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v6           #str:Ljava/io/FileOutputStream;
    .restart local v7       #str:Ljava/io/FileOutputStream;
    move-object v6, v7

    .line 3242
    .end local v7           #str:Ljava/io/FileOutputStream;
    .restart local v6       #str:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 3240
    :catch_1
    move-exception v8

    move-object v3, v8

    .line 3241
    .local v3, e2:Ljava/io/FileNotFoundException;
    const-string v8, "ApplicationContext"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Couldn\'t create SharedPreferences file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 3231
    .end local v3           #e2:Ljava/io/FileNotFoundException;
    .restart local v0       #dataPath:Ljava/lang/String;
    .restart local v1       #dataSPPath:Ljava/io/File;
    .restart local v5       #pkgName:Ljava/lang/String;
    :catch_2
    move-exception v8

    goto :goto_2
.end method

.method private writeFileLocked()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v7, "writeFileLocked: Got exception:"

    const-string v6, "ApplicationContext"

    .line 3249
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3250
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 3251
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3252
    const-string v2, "ApplicationContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t rename file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to backup file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 3290
    :goto_0
    return v2

    .line 3257
    :cond_0
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 3265
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-direct {p0, v2}, Landroid/app/ContextImpl$SharedPreferencesImpl;->createFileOutputStream(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 3266
    .local v1, str:Ljava/io/FileOutputStream;
    if-nez v1, :cond_2

    move v2, v5

    .line 3267
    goto :goto_0

    .line 3269
    :cond_2
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-static {v2, v1}, Lcom/android/internal/util/XmlUtils;->writeMapXml(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 3270
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 3271
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMode:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/app/ContextImpl;->access$400(Ljava/lang/String;II)V

    .line 3272
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    invoke-static {v2, v3}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3273
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    iget-wide v2, v2, Landroid/os/FileUtils$FileStatus;->mtime:J

    iput-wide v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mTimestamp:J

    .line 3277
    :cond_3
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mBackupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3278
    const/4 v2, 0x1

    goto :goto_0

    .line 3279
    .end local v1           #str:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 3280
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v2, "ApplicationContext"

    const-string/jumbo v2, "writeFileLocked: Got exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3285
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3286
    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_4

    .line 3287
    const-string v2, "ApplicationContext"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t clean up partially-written file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v2, v5

    .line 3290
    goto :goto_0

    .line 3281
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 3282
    .local v0, e:Ljava/io/IOException;
    const-string v2, "ApplicationContext"

    const-string/jumbo v2, "writeFileLocked: Got exception:"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 3088
    monitor-enter p0

    .line 3089
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 3090
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 3199
    new-instance v0, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;

    invoke-direct {v0, p0}, Landroid/app/ContextImpl$SharedPreferencesImpl$EditorImpl;-><init>(Landroid/app/ContextImpl$SharedPreferencesImpl;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 3049
    monitor-enter p0

    .line 3051
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 3052
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3081
    monitor-enter p0

    .line 3082
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 3083
    .local v0, v:Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, p2

    goto :goto_0

    .line 3084
    .end local v0           #v:Ljava/lang/Boolean;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3075
    monitor-enter p0

    .line 3076
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 3077
    .local v0, v:Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, p2

    goto :goto_0

    .line 3078
    .end local v0           #v:Ljava/lang/Float;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3063
    monitor-enter p0

    .line 3064
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 3065
    .local v0, v:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    move v1, p2

    goto :goto_0

    .line 3066
    .end local v0           #v:Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3069
    monitor-enter p0

    .line 3070
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 3071
    .local v0, v:Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_0
    monitor-exit p0

    return-wide v1

    :cond_0
    move-wide v1, p2

    goto :goto_0

    .line 3072
    .end local v0           #v:Ljava/lang/Long;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "defValue"

    .prologue
    .line 3056
    monitor-enter p0

    .line 3057
    :try_start_0
    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3058
    .local v0, v:Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0

    .line 3059
    .end local v0           #v:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasFileChanged()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3020
    monitor-enter p0

    .line 3021
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    invoke-static {v0, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3022
    monitor-exit p0

    move v0, v4

    .line 3024
    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mTimestamp:J

    iget-object v2, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mFileStatus:Landroid/os/FileUtils$FileStatus;

    iget-wide v2, v2, Landroid/os/FileUtils$FileStatus;->mtime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    move v0, v4

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 3025
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3024
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 3037
    monitor-enter p0

    .line 3038
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    sget-object v1, Landroid/app/ContextImpl$SharedPreferencesImpl;->mContent:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3039
    monitor-exit p0

    .line 3040
    return-void

    .line 3039
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public replace(Ljava/util/Map;)V
    .locals 1
    .parameter "newContents"

    .prologue
    .line 3029
    if-eqz p1, :cond_0

    .line 3030
    monitor-enter p0

    .line 3031
    :try_start_0
    iput-object p1, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mMap:Ljava/util/Map;

    .line 3032
    monitor-exit p0

    .line 3034
    :cond_0
    return-void

    .line 3032
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 3043
    monitor-enter p0

    .line 3044
    :try_start_0
    iget-object v0, p0, Landroid/app/ContextImpl$SharedPreferencesImpl;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3045
    monitor-exit p0

    .line 3046
    return-void

    .line 3045
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
