.class Lcom/android/server/WifiService$WifiLock;
.super Lcom/android/server/WifiService$DeathRecipient;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiLock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 0
    .parameter
    .parameter "lockMode"
    .parameter "tag"
    .parameter "binder"
    .parameter "ws"

    .prologue
    .line 2725
    iput-object p1, p0, Lcom/android/server/WifiService$WifiLock;->this$0:Lcom/android/server/WifiService;

    .line 2726
    invoke-direct/range {p0 .. p5}, Lcom/android/server/WifiService$DeathRecipient;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 2727
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 2730
    iget-object v0, p0, Lcom/android/server/WifiService$WifiLock;->this$0:Lcom/android/server/WifiService;

    invoke-static {v0}, Lcom/android/server/WifiService;->access$3000(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 2731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService$WifiLock;->this$0:Lcom/android/server/WifiService;

    iget-object v2, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, v2}, Lcom/android/server/WifiService;->access$3100(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z

    .line 2732
    monitor-exit v0

    .line 2733
    return-void

    .line 2732
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiLock{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$DeathRecipient;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " binder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiService$DeathRecipient;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
