.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->onEventInner(ILjava/lang/String;[Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1048
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-object p2, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const-string v8, "MountService"

    .line 1065
    :try_start_0
    iget-object v3, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v3}, Lcom/android/server/MountService;->access$2100(Lcom/android/server/MountService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1066
    const-string v3, "MountService"

    const-string v4, "Do not mount %s and prepare SharedVolume Mode"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    iget-object v3, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    const-string v5, "ums"

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1086
    :cond_0
    :goto_0
    return-void

    .line 1073
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    const/4 v3, 0x6

    if-ge v1, v3, :cond_3

    .line 1074
    iget-object v3, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-static {v3}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)Lcom/android/server/MountService$VolumeList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/MountService$VolumeList;->getPendingState(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1075
    const-string v3, "MountService"

    const-string v4, "path : %s waiting over pending state "

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1076
    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 1073
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1080
    :cond_3
    iget-object v3, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-object v4, p0, Lcom/android/server/MountService$4;->val$path:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/MountService;->access$300(Lcom/android/server/MountService;Ljava/lang/String;)I

    move-result v2

    .local v2, rc:I
    if-eqz v2, :cond_0

    .line 1081
    const-string v3, "MountService"

    const-string v4, "Insertion mount failed (%d)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1083
    .end local v1           #i:I
    .end local v2           #rc:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1084
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "MountService"

    const-string v3, "Failed to mount media on insertion"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
