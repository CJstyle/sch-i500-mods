.class Lcom/android/server/MountService$1$1;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$1;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter

    .prologue
    .line 718
    iput-object p1, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-string v8, "unmounted"

    const-string v13, "MountService"

    .line 721
    :try_start_0
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v8}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)V

    .line 722
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 723
    .local v1, path:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v1}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 725
    .local v6, state:Ljava/lang/String;
    const-string v8, "unmounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 726
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v9, "booting"

    invoke-static {v8, v1, v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 727
    .local v3, rc:I
    if-eqz v3, :cond_0

    .line 728
    const-string v8, "MountService"

    const-string v9, "First SD Card :: Boot-time mount failed (%d)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    .end local v3           #rc:I
    :cond_0
    :goto_0
    sget-boolean v8, Lcom/android/server/StorageFeature;->INSTALLED_SECOND_DISK:Z

    if-eqz v8, :cond_1

    .line 740
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectorySd()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 741
    .local v4, secondPath:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 745
    .local v5, secondState:Ljava/lang/String;
    const-string v8, "unmounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 746
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const-string v9, "booting"

    invoke-static {v8, v4, v9}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 747
    .restart local v3       #rc:I
    if-eqz v3, :cond_1

    .line 748
    const-string v8, "MountService"

    const-string v9, "Second SD Card :: Boot-time mount failed (%d)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    .end local v3           #rc:I
    .end local v4           #secondPath:Ljava/lang/String;
    .end local v5           #secondState:Ljava/lang/String;
    :cond_1
    :goto_1
    sget-boolean v8, Lcom/android/server/StorageFeature;->INSTALLED_USBHOST_DISK:Z

    if-eqz v8, :cond_2

    .line 760
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectoryUsbHost()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 761
    .local v2, path_host:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v2}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 765
    .local v7, state_host:Ljava/lang/String;
    const-string v8, "unmounted"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 766
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v8, v2}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v3

    .line 767
    .restart local v3       #rc:I
    if-eqz v3, :cond_2

    .line 768
    const-string v8, "MountService"

    const-string v9, "UsbHost :: Boot-time mount failed (%d)"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .end local v2           #path_host:Ljava/lang/String;
    .end local v3           #rc:I
    .end local v7           #state_host:Ljava/lang/String;
    :cond_2
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    invoke-static {v8}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 777
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Z)V

    .line 778
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/MountService;->access$1202(Lcom/android/server/MountService;Z)Z

    .line 784
    .end local v1           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :cond_3
    :goto_2
    return-void

    .line 730
    .restart local v1       #path:Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    :cond_4
    const-string v8, "shared"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 735
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v8, v9, v1, v10, v11}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 781
    .end local v1           #path:Ljava/lang/String;
    .end local v6           #state:Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 782
    .local v0, ex:Ljava/lang/Exception;
    const-string v8, "MountService"

    const-string v8, "Boot-time mount exception"

    invoke-static {v13, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 750
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v1       #path:Ljava/lang/String;
    .restart local v4       #secondPath:Ljava/lang/String;
    .restart local v5       #secondState:Ljava/lang/String;
    .restart local v6       #state:Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v8, "shared"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 755
    iget-object v8, p0, Lcom/android/server/MountService$1$1;->this$1:Lcom/android/server/MountService$1;

    iget-object v8, v8, Lcom/android/server/MountService$1;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x7

    invoke-static {v8, v9, v4, v10, v11}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
