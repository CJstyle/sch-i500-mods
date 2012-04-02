.class public abstract Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;
.super Landroid/os/Binder;
.source "IPhoneInfoInterface.java"

# interfaces
.implements Lcom/samsungframeworks/internal/IPhoneInfoInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsungframeworks/internal/IPhoneInfoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsungframeworks.internal.IPhoneInfoInterface"

.field static final TRANSACTION_disableDataconnection:I = 0x37

.field static final TRANSACTION_disableScreenTimeout:I = 0x41

.field static final TRANSACTION_enableScreenTimeout:I = 0x42

.field static final TRANSACTION_getA_Key:I = 0x5

.field static final TRANSACTION_getCurrentSlot:I = 0x38

.field static final TRANSACTION_getDSA_SERVER_IP:I = 0x16

.field static final TRANSACTION_getDSA_SERVER_PORT:I = 0x17

.field static final TRANSACTION_getDSA_SERVER_URL:I = 0x13

.field static final TRANSACTION_getDataProfile:I = 0x3a

.field static final TRANSACTION_getHTTPPD_PROXY_ADDR:I = 0x1a

.field static final TRANSACTION_getHTTPPD_PROXY_PORT:I = 0x1b

.field static final TRANSACTION_getMDN:I = 0x1

.field static final TRANSACTION_getMEID:I = 0x3

.field static final TRANSACTION_getMOBILESYNK_ENABLED:I = 0x12

.field static final TRANSACTION_getMSID:I = 0x2

.field static final TRANSACTION_getPDE_PRIMARY_IP:I = 0x14

.field static final TRANSACTION_getPDE_PRIMARY_PORT:I = 0x15

.field static final TRANSACTION_getPESUDO_ESN:I = 0x4

.field static final TRANSACTION_getRTSP_PROXY_ADDR:I = 0x18

.field static final TRANSACTION_getRTSP_PROXY_PORT:I = 0x19

.field static final TRANSACTION_getSLOT_1_AAA_AUTH_ALGORITHM:I = 0xd

.field static final TRANSACTION_getSLOT_1_AAA_SPI:I = 0xe

.field static final TRANSACTION_getSLOT_1_HA_AUTH_ALGORITHM:I = 0xa

.field static final TRANSACTION_getSLOT_1_HA_PASSWORD:I = 0xc

.field static final TRANSACTION_getSLOT_1_HA_SPI:I = 0xb

.field static final TRANSACTION_getSLOT_1_MOBILE_IP_ADDRESS:I = 0x10

.field static final TRANSACTION_getSLOT_1_NAI:I = 0x6

.field static final TRANSACTION_getSLOT_1_NAI_PASSWORD:I = 0x7

.field static final TRANSACTION_getSLOT_1_PRIMARY_HA:I = 0x8

.field static final TRANSACTION_getSLOT_1_REVERSE_TUNNELING:I = 0xf

.field static final TRANSACTION_getSLOT_1_SECONDARY_HA:I = 0x9

.field static final TRANSACTION_getSetUpCompleted:I = 0x40

.field static final TRANSACTION_getUAPROF:I = 0x11

.field static final TRANSACTION_reboot:I = 0x43

.field static final TRANSACTION_release:I = 0x3c

.field static final TRANSACTION_releaseDSAProxy:I = 0x3e

.field static final TRANSACTION_requestDataProfile:I = 0x3b

.field static final TRANSACTION_setA_Key:I = 0x20

.field static final TRANSACTION_setDSAProxy:I = 0x3d

.field static final TRANSACTION_setDSA_SERVER_IP:I = 0x31

.field static final TRANSACTION_setDSA_SERVER_PORT:I = 0x32

.field static final TRANSACTION_setDSA_SERVER_URL:I = 0x2e

.field static final TRANSACTION_setHTTPPD_PROXY_ADDR:I = 0x35

.field static final TRANSACTION_setHTTPPD_PROXY_PORT:I = 0x36

.field static final TRANSACTION_setMDN:I = 0x1c

.field static final TRANSACTION_setMEID:I = 0x1e

.field static final TRANSACTION_setMOBILESYNK_ENABLED:I = 0x2d

.field static final TRANSACTION_setMSID:I = 0x1d

.field static final TRANSACTION_setNetworkPreference:I = 0x39

.field static final TRANSACTION_setPDE_PRIMARY_IP:I = 0x2f

.field static final TRANSACTION_setPDE_PRIMARY_PORT:I = 0x30

.field static final TRANSACTION_setPESUDO_ESN:I = 0x1f

.field static final TRANSACTION_setRTSP_PROXY_ADDR:I = 0x33

.field static final TRANSACTION_setRTSP_PROXY_PORT:I = 0x34

.field static final TRANSACTION_setSLOT_1_AAA_AUTH_ALGORITHM:I = 0x28

.field static final TRANSACTION_setSLOT_1_AAA_SPI:I = 0x29

.field static final TRANSACTION_setSLOT_1_HA_AUTH_ALGORITHM:I = 0x25

.field static final TRANSACTION_setSLOT_1_HA_PASSWORD:I = 0x27

.field static final TRANSACTION_setSLOT_1_HA_SPI:I = 0x26

.field static final TRANSACTION_setSLOT_1_MOBILE_IP_ADDRESS:I = 0x2b

.field static final TRANSACTION_setSLOT_1_NAI:I = 0x21

.field static final TRANSACTION_setSLOT_1_NAI_PASSWORD:I = 0x22

.field static final TRANSACTION_setSLOT_1_PRIMARY_HA:I = 0x23

.field static final TRANSACTION_setSLOT_1_REVERSE_TUNNELING:I = 0x2a

.field static final TRANSACTION_setSLOT_1_SECONDARY_HA:I = 0x24

.field static final TRANSACTION_setSetUpCompleted:I = 0x3f

.field static final TRANSACTION_setUAPROF:I = 0x2c


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p0, p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsungframeworks/internal/IPhoneInfoInterface;
    .locals 2
    .parameter "obj"

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
    const-string v1, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/samsungframeworks/internal/IPhoneInfoInterface;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v4, 0x1

    const-string v5, "com.samsungframeworks.internal.IPhoneInfoInterface"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 610
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_0
    return v3

    .line 42
    :sswitch_0
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMDN()Ljava/lang/String;

    move-result-object v2

    .line 49
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 51
    goto :goto_0

    .line 55
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMSID()Ljava/lang/String;

    move-result-object v2

    .line 57
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 59
    goto :goto_0

    .line 63
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMEID()Ljava/lang/String;

    move-result-object v2

    .line 65
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 67
    goto :goto_0

    .line 71
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_4
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPESUDO_ESN()Ljava/lang/String;

    move-result-object v2

    .line 73
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 75
    goto :goto_0

    .line 79
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getA_Key()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 83
    goto :goto_0

    .line 87
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_NAI()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 91
    goto :goto_0

    .line 95
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_NAI_PASSWORD()Ljava/lang/String;

    move-result-object v2

    .line 97
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 99
    goto :goto_0

    .line 103
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_8
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_PRIMARY_HA()Ljava/lang/String;

    move-result-object v2

    .line 105
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 107
    goto/16 :goto_0

    .line 111
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_9
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_SECONDARY_HA()Ljava/lang/String;

    move-result-object v2

    .line 113
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 115
    goto/16 :goto_0

    .line 119
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_a
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v2

    .line 121
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 123
    goto/16 :goto_0

    .line 127
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_SPI()Ljava/lang/String;

    move-result-object v2

    .line 129
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 131
    goto/16 :goto_0

    .line 135
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_HA_PASSWORD()Ljava/lang/String;

    move-result-object v2

    .line 137
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 139
    goto/16 :goto_0

    .line 143
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_AAA_AUTH_ALGORITHM()Ljava/lang/String;

    move-result-object v2

    .line 145
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 147
    goto/16 :goto_0

    .line 151
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_e
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_AAA_SPI()Ljava/lang/String;

    move-result-object v2

    .line 153
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 155
    goto/16 :goto_0

    .line 159
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_REVERSE_TUNNELING()Ljava/lang/String;

    move-result-object v2

    .line 161
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 163
    goto/16 :goto_0

    .line 167
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSLOT_1_MOBILE_IP_ADDRESS()Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 171
    goto/16 :goto_0

    .line 175
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getUAPROF()Ljava/lang/String;

    move-result-object v2

    .line 177
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 179
    goto/16 :goto_0

    .line 183
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_12
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getMOBILESYNK_ENABLED()Ljava/lang/String;

    move-result-object v2

    .line 185
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 187
    goto/16 :goto_0

    .line 191
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_URL()Ljava/lang/String;

    move-result-object v2

    .line 193
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 195
    goto/16 :goto_0

    .line 199
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPDE_PRIMARY_IP()Ljava/lang/String;

    move-result-object v2

    .line 201
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 203
    goto/16 :goto_0

    .line 207
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_15
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getPDE_PRIMARY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 209
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 211
    goto/16 :goto_0

    .line 215
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_IP()Ljava/lang/String;

    move-result-object v2

    .line 217
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 219
    goto/16 :goto_0

    .line 223
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDSA_SERVER_PORT()Ljava/lang/String;

    move-result-object v2

    .line 225
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 226
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 227
    goto/16 :goto_0

    .line 231
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_18
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRTSP_PROXY_ADDR()Ljava/lang/String;

    move-result-object v2

    .line 233
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 235
    goto/16 :goto_0

    .line 239
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getRTSP_PROXY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 243
    goto/16 :goto_0

    .line 247
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1a
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getHTTPPD_PROXY_ADDR()Ljava/lang/String;

    move-result-object v2

    .line 249
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 251
    goto/16 :goto_0

    .line 255
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getHTTPPD_PROXY_PORT()Ljava/lang/String;

    move-result-object v2

    .line 257
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 259
    goto/16 :goto_0

    .line 263
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_1c
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMDN(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 268
    goto/16 :goto_0

    .line 272
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 275
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMSID(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 277
    goto/16 :goto_0

    .line 281
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1e
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMEID(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 286
    goto/16 :goto_0

    .line 290
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_1f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 293
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPESUDO_ESN(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 295
    goto/16 :goto_0

    .line 299
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_20
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 302
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setA_Key(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 304
    goto/16 :goto_0

    .line 308
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_21
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_NAI(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 313
    goto/16 :goto_0

    .line 317
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_22
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 320
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_NAI_PASSWORD(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 322
    goto/16 :goto_0

    .line 326
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_23
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 329
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_PRIMARY_HA(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 331
    goto/16 :goto_0

    .line 335
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 338
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_SECONDARY_HA(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 340
    goto/16 :goto_0

    .line 344
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_25
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 347
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_AUTH_ALGORITHM(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 349
    goto/16 :goto_0

    .line 353
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_26
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 356
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_SPI(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 358
    goto/16 :goto_0

    .line 362
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_27
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 365
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_HA_PASSWORD(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 367
    goto/16 :goto_0

    .line 371
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_28
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 374
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_AAA_AUTH_ALGORITHM(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 376
    goto/16 :goto_0

    .line 380
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_29
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 383
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_AAA_SPI(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 385
    goto/16 :goto_0

    .line 389
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2a
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 392
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_REVERSE_TUNNELING(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 394
    goto/16 :goto_0

    .line 398
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSLOT_1_MOBILE_IP_ADDRESS(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 403
    goto/16 :goto_0

    .line 407
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2c
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 410
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setUAPROF(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 412
    goto/16 :goto_0

    .line 416
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 419
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setMOBILESYNK_ENABLED(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 421
    goto/16 :goto_0

    .line 425
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2e
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 428
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_URL(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 430
    goto/16 :goto_0

    .line 434
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPDE_PRIMARY_IP(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 439
    goto/16 :goto_0

    .line 443
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_30
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 446
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setPDE_PRIMARY_PORT(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 448
    goto/16 :goto_0

    .line 452
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_31
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 455
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_IP(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 457
    goto/16 :goto_0

    .line 461
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_32
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 464
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSA_SERVER_PORT(Ljava/lang/String;)V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 466
    goto/16 :goto_0

    .line 470
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_33
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 473
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setRTSP_PROXY_ADDR(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 475
    goto/16 :goto_0

    .line 479
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_34
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 482
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setRTSP_PROXY_PORT(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 484
    goto/16 :goto_0

    .line 488
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_35
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 490
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 491
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setHTTPPD_PROXY_ADDR(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 493
    goto/16 :goto_0

    .line 497
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_36
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 500
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setHTTPPD_PROXY_PORT(Ljava/lang/String;)V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 502
    goto/16 :goto_0

    .line 506
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_37
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->disableDataconnection()V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 509
    goto/16 :goto_0

    .line 513
    :sswitch_38
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getCurrentSlot()I

    move-result v2

    .line 515
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 516
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 517
    goto/16 :goto_0

    .line 521
    .end local v2           #_result:I
    :sswitch_39
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 524
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setNetworkPreference(I)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 526
    goto/16 :goto_0

    .line 530
    .end local v0           #_arg0:I
    :sswitch_3a
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getDataProfile()I

    move-result v2

    .line 532
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 534
    goto/16 :goto_0

    .line 538
    .end local v2           #_result:I
    :sswitch_3b
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 540
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 541
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->requestDataProfile(I)I

    move-result v2

    .line 542
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v3, v4

    .line 544
    goto/16 :goto_0

    .line 548
    .end local v0           #_arg0:I
    .end local v2           #_result:I
    :sswitch_3c
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->release()V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 551
    goto/16 :goto_0

    .line 555
    :sswitch_3d
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 559
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 560
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setDSAProxy(Ljava/lang/String;I)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 562
    goto/16 :goto_0

    .line 566
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    :sswitch_3e
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->releaseDSAProxy()V

    .line 568
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 569
    goto/16 :goto_0

    .line 573
    :sswitch_3f
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 575
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 576
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->setSetUpCompleted(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 578
    goto/16 :goto_0

    .line 582
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_40
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->getSetUpCompleted()Ljava/lang/String;

    move-result-object v2

    .line 584
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 585
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v3, v4

    .line 586
    goto/16 :goto_0

    .line 590
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_41
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 591
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->disableScreenTimeout()V

    .line 592
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 593
    goto/16 :goto_0

    .line 597
    :sswitch_42
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->enableScreenTimeout()V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 600
    goto/16 :goto_0

    .line 604
    :sswitch_43
    const-string v3, "com.samsungframeworks.internal.IPhoneInfoInterface"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/samsungframeworks/internal/IPhoneInfoInterface$Stub;->reboot()V

    .line 606
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v3, v4

    .line 607
    goto/16 :goto_0

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
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
