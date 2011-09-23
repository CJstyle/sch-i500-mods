.class Lcom/android/server/MountService$7;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const-string v9, "MountService"

    .line 1501
    :try_start_0
    const-string v4, "MountService"

    const-string v5, "notifyShareAvailabilityChange -> usb cable is ejected."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1505
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v1, v4, :cond_0

    .line 1506
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1512
    .end local v1           #i:I
    :cond_0
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1513
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-static {v4}, Lcom/android/server/MountService;->access$2500(Lcom/android/server/MountService;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1514
    const-string v4, "MountService"

    const-string v5, "notifyShareAvailabilityChange -> skip (disabling ums mode by other process)"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_1
    :goto_1
    return-void

    .line 1507
    .restart local v1       #i:I
    :cond_2
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 1508
    const-string v4, "MountService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyShareAvailabilityChange -> waiting to finish ums connection..("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1517
    .end local v1           #i:I
    :cond_3
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Z)V

    .line 1519
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 1520
    .local v2, inter_path:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const-string v5, "ums"

    const/4 v6, 0x0

    invoke-static {v4, v2, v5, v6}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1522
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-static {v4, v2}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;Ljava/lang/String;)V

    .line 1524
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    invoke-static {v4, v2}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .local v3, rc:I
    if-eqz v3, :cond_4

    .line 1525
    const-string v4, "MountService"

    const-string v5, "Failed to remount {%s} on UMS enabled-disconnect (%d)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_4
    iget-object v4, p0, Lcom/android/server/MountService$7;->this$0:Lcom/android/server/MountService;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1542
    .end local v2           #inter_path:Ljava/lang/String;
    .end local v3           #rc:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 1543
    .local v0, ex:Ljava/lang/Exception;
    const-string v4, "MountService"

    const-string v4, "Failed to mount media on UMS enabled-disconnect"

    invoke-static {v9, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
