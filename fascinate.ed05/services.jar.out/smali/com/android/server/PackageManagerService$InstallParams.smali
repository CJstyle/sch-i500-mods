.class Lcom/android/server/PackageManagerService$InstallParams;
.super Lcom/android/server/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InstallParams"
.end annotation


# instance fields
.field flags:I

.field final installerPackageName:Ljava/lang/String;

.field private mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

.field private mRet:I

.field final observer:Landroid/content/pm/IPackageInstallObserver;

.field final packageURI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "packageURI"
    .parameter "observer"
    .parameter "flags"
    .parameter "installerPackageName"

    .prologue
    .line 4947
    iput-object p1, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/PackageManagerService;)V

    .line 4948
    iput-object p2, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    .line 4949
    iput p4, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 4950
    iput-object p3, p0, Lcom/android/server/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver;

    .line 4951
    iput-object p5, p0, Lcom/android/server/PackageManagerService$InstallParams;->installerPackageName:Ljava/lang/String;

    .line 4952
    return-void
.end method

.method private installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I
    .locals 9
    .parameter "pkgLite"
    .parameter "flags"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 4955
    iget-object v2, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    .line 4956
    .local v2, packageName:Ljava/lang/String;
    iget v0, p1, Landroid/content/pm/PackageInfoLite;->installLocation:I

    .line 4957
    .local v0, installLocation:I
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_0

    move v1, v7

    .line 4958
    .local v1, onSd:Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v4

    .line 4959
    :try_start_0
    iget-object v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 4960
    .local v3, pkg:Landroid/content/pm/PackageParser$Package;
    if-eqz v3, :cond_5

    .line 4961
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_8

    .line 4963
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    .line 4964
    if-eqz v1, :cond_1

    .line 4965
    const-string v5, "PackageManager"

    const-string v6, "Cannot install update to system app on sdcard"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    const/4 v5, -0x3

    monitor-exit v4

    move v4, v5

    .line 4999
    :goto_1
    return v4

    .line 4957
    .end local v1           #onSd:Z
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 4968
    .restart local v1       #onSd:Z
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_1
    monitor-exit v4

    move v4, v7

    goto :goto_1

    .line 4970
    :cond_2
    if-eqz v1, :cond_3

    .line 4972
    monitor-exit v4

    move v4, v8

    goto :goto_1

    .line 4975
    :cond_3
    if-ne v0, v7, :cond_4

    .line 4977
    monitor-exit v4

    move v4, v7

    goto :goto_1

    .line 4978
    :cond_4
    if-ne v0, v8, :cond_6

    .line 4993
    :cond_5
    monitor-exit v4

    .line 4996
    if-eqz v1, :cond_9

    move v4, v8

    .line 4997
    goto :goto_1

    .line 4982
    :cond_6
    iget-object v5, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x4

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 4983
    monitor-exit v4

    move v4, v8

    goto :goto_1

    .line 4985
    :cond_7
    monitor-exit v4

    move v4, v7

    goto :goto_1

    .line 4990
    :cond_8
    const/4 v5, -0x4

    monitor-exit v4

    move v4, v5

    goto :goto_1

    .line 4993
    .end local v3           #pkg:Landroid/content/pm/PackageParser$Package;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 4999
    .restart local v3       #pkg:Landroid/content/pm/PackageParser$Package;
    :cond_9
    iget v4, p1, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    goto :goto_1
.end method


# virtual methods
.method handleReturnCode()V
    .locals 3

    .prologue
    .line 5065
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget v2, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    invoke-static {v0, v1, v2}, Lcom/android/server/PackageManagerService;->access$2300(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallArgs;I)V

    .line 5066
    return-void
.end method

.method handleServiceError()V
    .locals 1

    .prologue
    .line 5070
    iget-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v0, p0}, Lcom/android/server/PackageManagerService;->access$2200(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5071
    const/16 v0, -0x6e

    iput v0, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 5072
    return-void
.end method

.method public handleStartCopy()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v8, "PackageManager"

    .line 5009
    const/4 v5, 0x1

    .line 5010
    .local v5, ret:I
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    move v0, v9

    .line 5011
    .local v0, fwdLocked:Z
    :goto_0
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_3

    move v3, v9

    .line 5012
    .local v3, onSd:Z
    :goto_1
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_4

    move v2, v9

    .line 5013
    .local v2, onInt:Z
    :goto_2
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 5015
    const-string v6, "PackageManager"

    const-string v6, "Conflicting flags specified for installing on both internal and external"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5016
    const/16 v5, -0x13

    .line 5054
    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v6, p0}, Lcom/android/server/PackageManagerService;->access$2200(Lcom/android/server/PackageManagerService;Lcom/android/server/PackageManagerService$InstallParams;)Lcom/android/server/PackageManagerService$InstallArgs;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    .line 5055
    if-ne v5, v9, :cond_1

    .line 5058
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->mArgs:Lcom/android/server/PackageManagerService$InstallArgs;

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v7}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v7

    invoke-virtual {v6, v7, v9}, Lcom/android/server/PackageManagerService$InstallArgs;->copyApk(Lcom/android/internal/app/IMediaContainerService;Z)I

    move-result v5

    .line 5060
    :cond_1
    iput v5, p0, Lcom/android/server/PackageManagerService$InstallParams;->mRet:I

    .line 5061
    return-void

    .end local v0           #fwdLocked:Z
    .end local v2           #onInt:Z
    .end local v3           #onSd:Z
    :cond_2
    move v0, v7

    .line 5010
    goto :goto_0

    .restart local v0       #fwdLocked:Z
    :cond_3
    move v3, v7

    .line 5011
    goto :goto_1

    .restart local v3       #onSd:Z
    :cond_4
    move v2, v7

    .line 5012
    goto :goto_2

    .line 5017
    .restart local v2       #onInt:Z
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 5019
    const-string v6, "PackageManager"

    const-string v6, "Cannot install fwd locked apps on sdcard"

    invoke-static {v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5020
    const/16 v5, -0x13

    goto :goto_3

    .line 5023
    :cond_6
    iget-object v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->this$0:Lcom/android/server/PackageManagerService;

    invoke-static {v6}, Lcom/android/server/PackageManagerService;->access$300(Lcom/android/server/PackageManagerService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/PackageManagerService$InstallParams;->packageURI:Landroid/net/Uri;

    iget v8, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-interface {v6, v7, v8}, Lcom/android/internal/app/IMediaContainerService;->getMinimalPackageInfo(Landroid/net/Uri;I)Landroid/content/pm/PackageInfoLite;

    move-result-object v4

    .line 5024
    .local v4, pkgLite:Landroid/content/pm/PackageInfoLite;
    iget v1, v4, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 5025
    .local v1, loc:I
    const/4 v6, -0x3

    if-ne v1, v6, :cond_7

    .line 5026
    const/16 v5, -0x13

    goto :goto_3

    .line 5027
    :cond_7
    const/4 v6, -0x4

    if-ne v1, v6, :cond_8

    .line 5028
    const/4 v5, -0x1

    goto :goto_3

    .line 5029
    :cond_8
    const/4 v6, -0x1

    if-ne v1, v6, :cond_9

    .line 5030
    const/4 v5, -0x4

    goto :goto_3

    .line 5031
    :cond_9
    const/4 v6, -0x2

    if-ne v1, v6, :cond_a

    .line 5032
    const/4 v5, -0x2

    goto :goto_3

    .line 5033
    :cond_a
    const/4 v6, -0x5

    if-ne v1, v6, :cond_b

    .line 5034
    const/16 v5, -0x14

    goto :goto_3

    .line 5037
    :cond_b
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    invoke-direct {p0, v4, v6}, Lcom/android/server/PackageManagerService$InstallParams;->installLocationPolicy(Landroid/content/pm/PackageInfoLite;I)I

    move-result v1

    .line 5038
    if-nez v3, :cond_0

    if-nez v2, :cond_0

    .line 5040
    const/4 v6, 0x2

    if-ne v1, v6, :cond_c

    .line 5042
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v6, v6, 0x8

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 5043
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, -0x11

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto :goto_3

    .line 5047
    :cond_c
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    .line 5048
    iget v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    and-int/lit8 v6, v6, -0x9

    iput v6, p0, Lcom/android/server/PackageManagerService$InstallParams;->flags:I

    goto :goto_3
.end method
