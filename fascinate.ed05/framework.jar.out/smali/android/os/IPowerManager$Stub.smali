.class public abstract Landroid/os/IPowerManager$Stub;
.super Landroid/os/Binder;
.source "IPowerManager.java"

# interfaces
.implements Landroid/os/IPowerManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IPowerManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IPowerManager"

.field static final TRANSACTION_acquireWakeLock:I = 0x1

.field static final TRANSACTION_clearUserActivityTimeout:I = 0x7

.field static final TRANSACTION_crash:I = 0xf

.field static final TRANSACTION_getPlugType:I = 0x12

.field static final TRANSACTION_getSupportedWakeLockFlags:I = 0x9

.field static final TRANSACTION_goToSleep:I = 0x2

.field static final TRANSACTION_goToSleepWithReason:I = 0x3

.field static final TRANSACTION_isScreenOn:I = 0xd

.field static final TRANSACTION_preventScreenOn:I = 0xc

.field static final TRANSACTION_reboot:I = 0xe

.field static final TRANSACTION_releaseWakeLock:I = 0x4

.field static final TRANSACTION_setAttentionLight:I = 0x13

.field static final TRANSACTION_setBacklightBrightness:I = 0x11

.field static final TRANSACTION_setMaximumScreenOffTimeount:I = 0xb

.field static final TRANSACTION_setPokeLock:I = 0x8

.field static final TRANSACTION_setStayOnSetting:I = 0xa

.field static final TRANSACTION_systemReboot:I = 0x10

.field static final TRANSACTION_systemReboot_Fota:I = 0x14

.field static final TRANSACTION_userActivity:I = 0x5

.field static final TRANSACTION_userActivityWithForce:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IPowerManager"

    invoke-virtual {p0, p0, v0}, Landroid/os/IPowerManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v1, 0x0

    .line 31
    :goto_0
    return-object v1

    .line 27
    :cond_0
    const-string v1, "android.os.IPowerManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IPowerManager;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IPowerManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 31
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/os/IPowerManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/os/IPowerManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v9, 0x0

    const/4 v7, 0x1

    const-string v8, "android.os.IPowerManager"

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 242
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_0
    return v6

    .line 43
    :sswitch_0
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v6, v7

    .line 44
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 54
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 55
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IPowerManager$Stub;->acquireWakeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 57
    goto :goto_0

    .line 61
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_2
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 64
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Landroid/os/IPowerManager$Stub;->goToSleep(J)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 66
    goto :goto_0

    .line 70
    .end local v0           #_arg0:J
    :sswitch_3
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 74
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->goToSleepWithReason(JI)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 77
    goto :goto_0

    .line 81
    .end local v0           #_arg0:J
    .end local v2           #_arg1:I
    :sswitch_4
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 85
    .local v0, _arg0:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 86
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->releaseWakeLock(Landroid/os/IBinder;I)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 88
    goto :goto_0

    .line 92
    .end local v0           #_arg0:Landroid/os/IBinder;
    .end local v2           #_arg1:I
    :sswitch_5
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 96
    .local v0, _arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v2, v7

    .line 97
    .local v2, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IPowerManager$Stub;->userActivity(JZ)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 99
    goto :goto_0

    .end local v2           #_arg1:Z
    :cond_0
    move v2, v9

    .line 96
    goto :goto_1

    .line 103
    .end local v0           #_arg0:J
    :sswitch_6
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 107
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v7

    .line 109
    .restart local v2       #_arg1:Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2

    move v4, v7

    .line 110
    .local v4, _arg2:Z
    :goto_3
    invoke-virtual {p0, v0, v1, v2, v4}, Landroid/os/IPowerManager$Stub;->userActivityWithForce(JZZ)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 112
    goto/16 :goto_0

    .end local v2           #_arg1:Z
    .end local v4           #_arg2:Z
    :cond_1
    move v2, v9

    .line 107
    goto :goto_2

    .restart local v2       #_arg1:Z
    :cond_2
    move v4, v9

    .line 109
    goto :goto_3

    .line 116
    .end local v0           #_arg0:J
    .end local v2           #_arg1:Z
    :sswitch_7
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 120
    .restart local v0       #_arg0:J
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 121
    .local v2, _arg1:J
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/os/IPowerManager$Stub;->clearUserActivityTimeout(JJ)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 123
    goto/16 :goto_0

    .line 127
    .end local v0           #_arg0:J
    .end local v2           #_arg1:J
    :sswitch_8
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 131
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 133
    .local v2, _arg1:Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/os/IPowerManager$Stub;->setPokeLock(ILandroid/os/IBinder;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 136
    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:I
    .end local v2           #_arg1:Landroid/os/IBinder;
    .end local v4           #_arg2:Ljava/lang/String;
    :sswitch_9
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getSupportedWakeLockFlags()I

    move-result v5

    .line 142
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 144
    goto/16 :goto_0

    .line 148
    .end local v5           #_result:I
    :sswitch_a
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 151
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setStayOnSetting(I)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 153
    goto/16 :goto_0

    .line 157
    .end local v0           #_arg0:I
    :sswitch_b
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setMaximumScreenOffTimeount(I)V

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 162
    goto/16 :goto_0

    .line 166
    .end local v0           #_arg0:I
    :sswitch_c
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v7

    .line 169
    .local v0, _arg0:Z
    :goto_4
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->preventScreenOn(Z)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 171
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_3
    move v0, v9

    .line 168
    goto :goto_4

    .line 175
    :sswitch_d
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->isScreenOn()Z

    move-result v5

    .line 177
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    if-eqz v5, :cond_4

    move v6, v7

    :goto_5
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 179
    goto/16 :goto_0

    :cond_4
    move v6, v9

    .line 178
    goto :goto_5

    .line 183
    .end local v5           #_result:Z
    :sswitch_e
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->reboot(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 188
    goto/16 :goto_0

    .line 192
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_f
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->crash(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 197
    goto/16 :goto_0

    .line 201
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_10
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemReboot()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 204
    goto/16 :goto_0

    .line 208
    :sswitch_11
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/os/IPowerManager$Stub;->setBacklightBrightness(I)V

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 213
    goto/16 :goto_0

    .line 217
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->getPlugType()I

    move-result v5

    .line 219
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v6, v7

    .line 221
    goto/16 :goto_0

    .line 225
    .end local v5           #_result:I
    :sswitch_13
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    move v0, v7

    .line 229
    .local v0, _arg0:Z
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 230
    .local v2, _arg1:I
    invoke-virtual {p0, v0, v2}, Landroid/os/IPowerManager$Stub;->setAttentionLight(ZI)V

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 232
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v2           #_arg1:I
    :cond_5
    move v0, v9

    .line 227
    goto :goto_6

    .line 236
    :sswitch_14
    const-string v6, "android.os.IPowerManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p0}, Landroid/os/IPowerManager$Stub;->systemReboot_Fota()V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v6, v7

    .line 239
    goto/16 :goto_0

    .line 39
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
