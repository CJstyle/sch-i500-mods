.class public abstract Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;
.super Landroid/os/Binder;
.source "ITaskManagerService.java"

# interfaces
.implements Lcom/sec/android/app/controlpanel/service/ITaskManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/controlpanel/service/ITaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const-string v3, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 92
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 42
    :sswitch_0
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->getRunningApplicationCount()I

    move-result v0

    .line 49
    .local v0, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 51
    goto :goto_0

    .line 55
    .end local v0           #_result:I
    :sswitch_2
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->initCPUUsage()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 58
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->updateCPUUsage()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v1, v2

    .line 65
    goto :goto_0

    .line 69
    :sswitch_4
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->isCPUWarning()Z

    move-result v0

    .line 71
    .local v0, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    if-eqz v0, :cond_0

    move v1, v2

    :goto_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    move v1, v2

    .line 73
    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 77
    .end local v0           #_result:Z
    :sswitch_5
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->getCPUWarningLevel()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 81
    goto :goto_0

    .line 85
    .end local v0           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v1, "com.sec.android.app.controlpanel.service.ITaskManagerService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/sec/android/app/controlpanel/service/ITaskManagerService$Stub;->getCPUWarningMessage()Ljava/lang/String;

    move-result-object v0

    .line 87
    .restart local v0       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v1, v2

    .line 89
    goto :goto_0

    .line 38
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
