.class public abstract Lcom/vzw/location/IVzwGpsStatusListener$Stub;
.super Landroid/os/Binder;
.source "IVzwGpsStatusListener.java"

# interfaces
.implements Lcom/vzw/location/IVzwGpsStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/IVzwGpsStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vzw/location/IVzwGpsStatusListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.vzw.location.IVzwGpsStatusListener"

.field static final TRANSACTION_onFirstFix:I = 0x3

.field static final TRANSACTION_onGpsDeviceStatusChanged:I = 0x5

.field static final TRANSACTION_onGpsStarted:I = 0x1

.field static final TRANSACTION_onGpsStopped:I = 0x2

.field static final TRANSACTION_onSvStatusChanged:I = 0x4

.field static final TRANSACTION_sendArbitraryUpdate:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p0, p0, v0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/vzw/location/IVzwGpsStatusListener;
    .locals 3
    .parameter

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_0
    return-object v1

    .line 26
    :cond_0
    const-string v1, "com.vzw.location.IVzwGpsStatusListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/vzw/location/IVzwGpsStatusListener;

    if-eqz v2, :cond_1

    .line 28
    move-object v0, v1

    check-cast v0, Lcom/vzw/location/IVzwGpsStatusListener;

    move-object p0, v0

    move-object v1, p0

    goto :goto_0

    .line 30
    :cond_1
    new-instance v1, Lcom/vzw/location/IVzwGpsStatusListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const-string v1, "com.vzw.location.IVzwGpsStatusListener"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onGpsStarted()V

    move v0, v7

    .line 49
    goto :goto_0

    .line 53
    :sswitch_2
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onGpsStopped()V

    move v0, v7

    .line 55
    goto :goto_0

    .line 59
    :sswitch_3
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onFirstFix(I)V

    move v0, v7

    .line 63
    goto :goto_0

    .line 67
    :sswitch_4
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v3

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v4

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    move-object v0, p0

    .line 78
    invoke-virtual/range {v0 .. v5}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onSvStatusChanged([I[F[F[F[I)V

    move v0, v7

    .line 79
    goto :goto_0

    .line 83
    :sswitch_5
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v4

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v5

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v6

    move-object v0, p0

    .line 96
    invoke-virtual/range {v0 .. v6}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->onGpsDeviceStatusChanged(II[I[I[I[F)V

    move v0, v7

    .line 97
    goto :goto_0

    .line 101
    :sswitch_6
    const-string v0, "com.vzw.location.IVzwGpsStatusListener"

    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    invoke-virtual {p0, v0}, Lcom/vzw/location/IVzwGpsStatusListener$Stub;->sendArbitraryUpdate(I)V

    move v0, v7

    .line 105
    goto :goto_0

    .line 38
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
