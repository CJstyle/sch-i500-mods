.class Lcom/android/server/EncryptService$MountCallBackBinderListener;
.super Landroid/os/storage/IMountCallBackListener$Stub;
.source "EncryptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EncryptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MountCallBackBinderListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/EncryptService;


# direct methods
.method private constructor <init>(Lcom/android/server/EncryptService;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/server/EncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/EncryptService;

    invoke-direct {p0}, Landroid/os/storage/IMountCallBackListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/EncryptService;Lcom/android/server/EncryptService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 508
    invoke-direct {p0, p1}, Lcom/android/server/EncryptService$MountCallBackBinderListener;-><init>(Lcom/android/server/EncryptService;)V

    return-void
.end method


# virtual methods
.method public onBeforeActionMassStorage(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 544
    return-void
.end method

.method public onReleasedMassStorage(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 547
    return-void
.end method

.method public onStorageAskPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .parameter "path"
    .parameter "state"

    .prologue
    .line 514
    const-string v1, "EncryptService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MountCallBack Begin! path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", m_State="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/EncryptService;

    iget-object v3, v3, Lcom/android/server/EncryptService;->inter_db:Lcom/android/server/EncryptService$InternalDB;

    invoke-virtual {v3}, Lcom/android/server/EncryptService$InternalDB;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", LatestError="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/EncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/EncryptService;

    invoke-virtual {v3}, Lcom/android/server/EncryptService;->getLatestError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    if-eqz p1, :cond_1

    .line 518
    invoke-static {}, Landroid/os/Environment;->isUsbHostStorageInsalled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 521
    const/16 v1, -0x64

    .line 538
    :goto_0
    return v1

    .line 523
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/EncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/EncryptService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService;->checkMountedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/EncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/EncryptService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/EncryptService;->checkSharedStorage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 528
    const/4 v1, -0x6

    goto :goto_0

    .line 532
    :cond_1
    const/16 v0, -0x64

    .line 534
    .local v0, nRet:I
    iget-object v1, p0, Lcom/android/server/EncryptService$MountCallBackBinderListener;->this$0:Lcom/android/server/EncryptService;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/server/EncryptService;->cryptoMain(Ljava/lang/String;Ljava/lang/String;ZZ)I

    move-result v0

    move v1, v0

    .line 538
    goto :goto_0
.end method
