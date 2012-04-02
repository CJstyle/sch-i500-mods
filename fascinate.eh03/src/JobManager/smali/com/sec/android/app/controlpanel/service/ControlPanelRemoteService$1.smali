.class Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;
.super Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;
.source "ControlPanelRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;


# direct methods
.method constructor <init>(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-direct {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCPUWarningLevel()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningLevel() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$500(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$500(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCPUWarningMessage()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCPUWarningMessage() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$600(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$600(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRunningApplicationCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v4, "ControlPanelRemoteService"

    .line 54
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ControlPanelRemoteService"

    const-string v2, "getRunningApplicationCount() start"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    const/4 v1, 0x0

    .line 57
    .local v1, size:I
    :try_start_0
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    iget-object v3, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/controlpanel/PackageInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/controlpanel/PackageInfo;->getRunningAppPackageList()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$102(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;Ljava/util/List;)Ljava/util/List;

    .line 58
    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$100(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 62
    :goto_0
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ControlPanelRemoteService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRunningApplicationCount() end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_1
    return v1

    .line 59
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 60
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public initCPUUsage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ControlPanelRemoteService"

    const-string v2, "initCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->init()V

    .line 69
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 71
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public isCPUWarning()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ControlPanelRemoteService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCPUWarning() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v2}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$400(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v0}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$400(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Z

    move-result v0

    return v0
.end method

.method public updateCPUUsage()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$000()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ControlPanelRemoteService"

    const-string v2, "updateCPUUsage()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$200(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)Lcom/sec/android/app/controlpanel/CpuInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/controlpanel/CpuInfo;->update()V

    .line 78
    iget-object v1, p0, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService$1;->this$0:Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;

    invoke-static {v1}, Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;->access$300(Lcom/sec/android/app/controlpanel/service/ControlPanelRemoteService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 80
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
