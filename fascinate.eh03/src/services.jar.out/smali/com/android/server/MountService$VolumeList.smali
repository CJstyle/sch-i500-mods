.class final Lcom/android/server/MountService$VolumeList;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VolumeList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/MountService$VolumeList$VolumeInfo;
    }
.end annotation


# static fields
.field public static final NotMatch:I = -0x1


# instance fields
.field private final asec_path:Ljava/lang/String;

.field public final targeting_prefer_asec_path:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/MountService;

.field private volumeinfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/MountService$VolumeList$VolumeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 6
    .parameter

    .prologue
    const-string v5, "removed"

    const-string v4, "MountService"

    .line 196
    iput-object p1, p0, Lcom/android/server/MountService$VolumeList;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    .line 211
    invoke-static {}, Landroid/os/Environment;->getInstalledStorageDirectory()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->targeting_prefer_asec_path:Ljava/lang/String;

    .line 212
    const-string v0, "ASEC_MOUNTPOINT"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/MountService$VolumeList;->asec_path:Ljava/lang/String;

    .line 197
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "first sdcard path :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-direct {v1, p0, v2, v5}, Lcom/android/server/MountService$VolumeList$VolumeInfo;-><init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v0, :cond_0

    .line 201
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "second sdcard path :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-direct {v1, p0, v2, v5}, Lcom/android/server/MountService$VolumeList$VolumeInfo;-><init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_0
    sget-boolean v0, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v0, :cond_1

    .line 206
    const-string v0, "MountService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbhost sdcard path :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "removed"

    invoke-direct {v1, p0, v2, v5}, Lcom/android/server/MountService$VolumeList$VolumeInfo;-><init>(Lcom/android/server/MountService$VolumeList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    :cond_1
    return-void
.end method

.method private final vaildVolumePath(Ljava/lang/String;)I
    .locals 2
    .parameter "path"

    .prologue
    .line 238
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 239
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 242
    :goto_1
    return v1

    .line 238
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method


# virtual methods
.method public final getASECMountPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/server/MountService$VolumeList;->asec_path:Ljava/lang/String;

    return-object v0
.end method

.method public getDevicePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 286
    const/4 v0, -0x1

    .line 287
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->devPath:Ljava/lang/String;

    .line 290
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final getEncryptedState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 253
    const/4 v0, -0x1

    .line 254
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->CryptogramState:Ljava/lang/String;

    .line 258
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPendingState(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 268
    const/4 v0, -0x1

    .line 269
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-boolean v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->pending:Z

    .line 273
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVolumeState(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 303
    const/4 v0, -0x1

    .line 304
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    .line 307
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isASECMounted(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 222
    invoke-virtual {p0, p1}, Lcom/android/server/MountService$VolumeList;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, state:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    const/4 v1, 0x1

    .line 227
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isVaildVolumePath(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iget-object v1, v1, Lcom/android/server/MountService$VolumeList$VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 234
    :goto_1
    return v1

    .line 231
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public updateDevicePath(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "devPath"

    .prologue
    .line 277
    const/4 v0, 0x0

    .line 278
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->devPath:Ljava/lang/String;

    .line 280
    const/4 v1, 0x1

    .line 282
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateEncrypting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "State"

    .prologue
    .line 246
    const/4 v0, -0x1

    .line 247
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->CryptogramState:Ljava/lang/String;

    .line 250
    :cond_0
    return-void
.end method

.method public updatePending(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "bPending"

    .prologue
    .line 261
    const/4 v0, -0x1

    .line 262
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-boolean p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->pending:Z

    .line 265
    :cond_0
    return-void
.end method

.method public updateVolumeState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "path"
    .parameter "LegacyState"

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, index:I
    invoke-direct {p0, p1}, Lcom/android/server/MountService$VolumeList;->vaildVolumePath(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/server/MountService$VolumeList;->volumeinfo:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;

    iput-object p2, p0, Lcom/android/server/MountService$VolumeList$VolumeInfo;->LegacyState:Ljava/lang/String;

    .line 297
    const/4 v1, 0x1

    .line 299
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
