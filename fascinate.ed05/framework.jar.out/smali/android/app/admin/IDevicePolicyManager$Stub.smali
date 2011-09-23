.class public abstract Landroid/app/admin/IDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IDevicePolicyManager.java"

# interfaces
.implements Landroid/app/admin/IDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/IDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.app.admin.IDevicePolicyManager"

.field static final TRANSACTION_getActiveAdmins:I = 0x48

.field static final TRANSACTION_getAllowBluetoothMode:I = 0x29

.field static final TRANSACTION_getAllowBrowser:I = 0x23

.field static final TRANSACTION_getAllowCamera:I = 0x19

.field static final TRANSACTION_getAllowDesktopSync:I = 0x41

.field static final TRANSACTION_getAllowHTMLEmail:I = 0x21

.field static final TRANSACTION_getAllowInternetSharing:I = 0x25

.field static final TRANSACTION_getAllowIrDA:I = 0x43

.field static final TRANSACTION_getAllowPOPIMAPEmail:I = 0x1f

.field static final TRANSACTION_getAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3d

.field static final TRANSACTION_getAllowSMIMESoftCerts:I = 0x3f

.field static final TRANSACTION_getAllowStorageCard:I = 0x17

.field static final TRANSACTION_getAllowTextMessaging:I = 0x1d

.field static final TRANSACTION_getAllowWifi:I = 0x1b

.field static final TRANSACTION_getAttachmentsEnabled:I = 0x13

.field static final TRANSACTION_getCurrentFailedPasswordAttempts:I = 0x6

.field static final TRANSACTION_getMaxAttachmentSize:I = 0x15

.field static final TRANSACTION_getMaxCalendarAge:I = 0x2d

.field static final TRANSACTION_getMaxEmailAge:I = 0x2f

.field static final TRANSACTION_getMaxEmailBodyTruncSize:I = 0x31

.field static final TRANSACTION_getMaxHtmlEmailBodyTruncSize:I = 0x33

.field static final TRANSACTION_getMaximumFailedPasswordsForWipe:I = 0x8

.field static final TRANSACTION_getMaximumTimeToLock:I = 0xb

.field static final TRANSACTION_getMinPasswordComplexChars:I = 0x2b

.field static final TRANSACTION_getPasswordExpires:I = 0xf

.field static final TRANSACTION_getPasswordHistory:I = 0x11

.field static final TRANSACTION_getPasswordMinimumLength:I = 0x4

.field static final TRANSACTION_getPasswordQuality:I = 0x2

.field static final TRANSACTION_getPasswordRecoverable:I = 0xd

.field static final TRANSACTION_getRemoveWarning:I = 0x4a

.field static final TRANSACTION_getRequireEncryptedSMIMEMessages:I = 0x37

.field static final TRANSACTION_getRequireEncryptionSMIMEAlgorithm:I = 0x3b

.field static final TRANSACTION_getRequireManualSyncRoaming:I = 0x27

.field static final TRANSACTION_getRequireSignedSMIMEAlgorithm:I = 0x39

.field static final TRANSACTION_getRequireSignedSMIMEMessages:I = 0x35

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x5

.field static final TRANSACTION_isAdminActive:I = 0x47

.field static final TRANSACTION_lockNow:I = 0x44

.field static final TRANSACTION_notifyChanges:I = 0x51

.field static final TRANSACTION_packageHasActiveAdmins:I = 0x49

.field static final TRANSACTION_recoverPassword:I = 0x4c

.field static final TRANSACTION_removeActiveAdmin:I = 0x4b

.field static final TRANSACTION_reportFailedPasswordAttempt:I = 0x4f

.field static final TRANSACTION_reportSuccessfulPasswordAttempt:I = 0x50

.field static final TRANSACTION_resetPassword:I = 0x9

.field static final TRANSACTION_setActiveAdmin:I = 0x46

.field static final TRANSACTION_setActivePasswordState:I = 0x4e

.field static final TRANSACTION_setAllowBluetoothMode:I = 0x28

.field static final TRANSACTION_setAllowBrowser:I = 0x22

.field static final TRANSACTION_setAllowCamera:I = 0x18

.field static final TRANSACTION_setAllowDesktopSync:I = 0x40

.field static final TRANSACTION_setAllowHTMLEmail:I = 0x20

.field static final TRANSACTION_setAllowInternetSharing:I = 0x24

.field static final TRANSACTION_setAllowIrDA:I = 0x42

.field static final TRANSACTION_setAllowPOPIMAPEmail:I = 0x1e

.field static final TRANSACTION_setAllowSMIMEEncryptionAlgorithmNegotiation:I = 0x3c

.field static final TRANSACTION_setAllowSMIMESoftCerts:I = 0x3e

.field static final TRANSACTION_setAllowStorageCard:I = 0x16

.field static final TRANSACTION_setAllowTextMessaging:I = 0x1c

.field static final TRANSACTION_setAllowWifi:I = 0x1a

.field static final TRANSACTION_setAttachmentsEnabled:I = 0x12

.field static final TRANSACTION_setMaxAttachmentSize:I = 0x14

.field static final TRANSACTION_setMaxCalendarAge:I = 0x2c

.field static final TRANSACTION_setMaxEmailAge:I = 0x2e

.field static final TRANSACTION_setMaxEmailBodyTruncSize:I = 0x30

.field static final TRANSACTION_setMaxHtmlEmailBodyTruncSize:I = 0x32

.field static final TRANSACTION_setMaximumFailedPasswordsForWipe:I = 0x7

.field static final TRANSACTION_setMaximumTimeToLock:I = 0xa

.field static final TRANSACTION_setMinPasswordComplexChars:I = 0x2a

.field static final TRANSACTION_setPasswordExpires:I = 0xe

.field static final TRANSACTION_setPasswordHistory:I = 0x10

.field static final TRANSACTION_setPasswordMinimumLength:I = 0x3

.field static final TRANSACTION_setPasswordQuality:I = 0x1

.field static final TRANSACTION_setPasswordRecoverable:I = 0xc

.field static final TRANSACTION_setRecoveryPasswordState:I = 0x4d

.field static final TRANSACTION_setRequireEncryptedSMIMEMessages:I = 0x36

.field static final TRANSACTION_setRequireEncryptionSMIMEAlgorithm:I = 0x3a

.field static final TRANSACTION_setRequireManualSyncRoaming:I = 0x26

.field static final TRANSACTION_setRequireSignedSMIMEAlgorithm:I = 0x38

.field static final TRANSACTION_setRequireSignedSMIMEMessages:I = 0x34

.field static final TRANSACTION_wipeData:I = 0x45


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v1, 0x0

    .line 34
    :goto_0
    return-object v1

    .line 30
    :cond_0
    const-string v1, "android.app.admin.IDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/app/admin/IDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/app/admin/IDevicePolicyManager;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 34
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/app/admin/IDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 1236
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v8, 0x1

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_0

    .line 54
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 60
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    const/4 v8, 0x1

    goto :goto_0

    .line 57
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    .line 67
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1

    .line 70
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 75
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v5

    .line 76
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v8, 0x1

    goto :goto_0

    .line 73
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2

    .line 82
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2

    .line 85
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 91
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 92
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    const/4 v8, 0x1

    goto :goto_0

    .line 88
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 98
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3

    .line 101
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 106
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 107
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 104
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 113
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_5
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v5

    .line 115
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v5, :cond_4

    const/4 v8, 0x1

    :goto_5
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 116
    :cond_4
    const/4 v8, 0x0

    goto :goto_5

    .line 121
    .end local v5           #_result:Z
    :sswitch_6
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getCurrentFailedPasswordAttempts()I

    move-result v5

    .line 123
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 129
    .end local v5           #_result:I
    :sswitch_7
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5

    .line 132
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 138
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 139
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 140
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 135
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .line 145
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6

    .line 148
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 153
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v5

    .line 154
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 151
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    .line 160
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_9
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->resetPassword(Ljava/lang/String;I)Z

    move-result v5

    .line 166
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    if-eqz v5, :cond_7

    const/4 v8, 0x1

    :goto_8
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 167
    :cond_7
    const/4 v8, 0x0

    goto :goto_8

    .line 172
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :sswitch_a
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_8

    .line 175
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 181
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 182
    .local v1, _arg1:J
    invoke-virtual {p0, v0, v1, v2}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 183
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 178
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:J
    :cond_8
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_9

    .line 188
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_b
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_9

    .line 191
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 196
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_a
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 197
    .local v5, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 199
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 194
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:J
    :cond_9
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_a

    .line 203
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_c
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_a

    .line 206
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 212
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    move v1, v8

    .line 213
    .local v1, _arg1:Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordRecoverable(Landroid/content/ComponentName;Z)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 209
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    .line 212
    :cond_b
    const/4 v8, 0x0

    move v1, v8

    goto :goto_c

    .line 219
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_c

    .line 222
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 227
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v5

    .line 228
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v5, :cond_d

    const/4 v8, 0x1

    :goto_e
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 225
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 229
    .restart local v5       #_result:Z
    :cond_d
    const/4 v8, 0x0

    goto :goto_e

    .line 234
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_e
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_e

    .line 237
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 243
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 244
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordExpires(Landroid/content/ComponentName;I)V

    .line 245
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 240
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 250
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_f
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_f

    .line 253
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 258
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordExpires(Landroid/content/ComponentName;)I

    move-result v5

    .line 259
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 256
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .line 265
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_10
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_10

    .line 268
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 274
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 275
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setPasswordHistory(Landroid/content/ComponentName;I)V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 271
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 281
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_11

    .line 284
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 289
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getPasswordHistory(Landroid/content/ComponentName;)I

    move-result v5

    .line 290
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 287
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_11
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .line 296
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_12

    .line 299
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 305
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_13

    const/4 v8, 0x1

    move v1, v8

    .line 306
    .local v1, _arg1:Z
    :goto_14
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAttachmentsEnabled(Landroid/content/ComponentName;Z)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 302
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    .line 305
    :cond_13
    const/4 v8, 0x0

    move v1, v8

    goto :goto_14

    .line 312
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_13
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_14

    .line 315
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 320
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAttachmentsEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    .line 321
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    if-eqz v5, :cond_15

    const/4 v8, 0x1

    :goto_16
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 318
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_14
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .line 322
    .restart local v5       #_result:Z
    :cond_15
    const/4 v8, 0x0

    goto :goto_16

    .line 327
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_14
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_16

    .line 330
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 336
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 337
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxAttachmentSize(Landroid/content/ComponentName;I)V

    .line 338
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 333
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_16
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .line 343
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_15
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_17

    .line 346
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 351
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxAttachmentSize(Landroid/content/ComponentName;)I

    move-result v5

    .line 352
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 349
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_17
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    .line 358
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_18

    .line 361
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 367
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_19
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_19

    const/4 v8, 0x1

    move v1, v8

    .line 368
    .local v1, _arg1:Z
    :goto_1a
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowStorageCard(Landroid/content/ComponentName;Z)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 370
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 364
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_19

    .line 367
    :cond_19
    const/4 v8, 0x0

    move v1, v8

    goto :goto_1a

    .line 374
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1a

    .line 377
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 382
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowStorageCard(Landroid/content/ComponentName;)Z

    move-result v5

    .line 383
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    if-eqz v5, :cond_1b

    const/4 v8, 0x1

    :goto_1c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 380
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_1a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1b

    .line 384
    .restart local v5       #_result:Z
    :cond_1b
    const/4 v8, 0x0

    goto :goto_1c

    .line 389
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_18
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1c

    .line 392
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 398
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1d

    const/4 v8, 0x1

    move v1, v8

    .line 399
    .restart local v1       #_arg1:Z
    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowCamera(Landroid/content/ComponentName;Z)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 395
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1d

    .line 398
    :cond_1d
    const/4 v8, 0x0

    move v1, v8

    goto :goto_1e

    .line 405
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_1e

    .line 408
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 413
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v5

    .line 414
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    if-eqz v5, :cond_1f

    const/4 v8, 0x1

    :goto_20
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 411
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_1e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .line 415
    .restart local v5       #_result:Z
    :cond_1f
    const/4 v8, 0x0

    goto :goto_20

    .line 420
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_1a
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_20

    .line 423
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 429
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_21

    const/4 v8, 0x1

    move v1, v8

    .line 430
    .restart local v1       #_arg1:Z
    :goto_22
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowWifi(Landroid/content/ComponentName;Z)V

    .line 431
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 426
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_20
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_21

    .line 429
    :cond_21
    const/4 v8, 0x0

    move v1, v8

    goto :goto_22

    .line 436
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1b
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_22

    .line 439
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 444
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_23
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v5

    .line 445
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v5, :cond_23

    const/4 v8, 0x1

    :goto_24
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 442
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_22
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_23

    .line 446
    .restart local v5       #_result:Z
    :cond_23
    const/4 v8, 0x0

    goto :goto_24

    .line 451
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_1c
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 453
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_24

    .line 454
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 460
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_25
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_25

    const/4 v8, 0x1

    move v1, v8

    .line 461
    .restart local v1       #_arg1:Z
    :goto_26
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowTextMessaging(Landroid/content/ComponentName;Z)V

    .line 462
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 463
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 457
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_24
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_25

    .line 460
    :cond_25
    const/4 v8, 0x0

    move v1, v8

    goto :goto_26

    .line 467
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_26

    .line 470
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 475
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowTextMessaging(Landroid/content/ComponentName;)Z

    move-result v5

    .line 476
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v5, :cond_27

    const/4 v8, 0x1

    :goto_28
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 473
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .line 477
    .restart local v5       #_result:Z
    :cond_27
    const/4 v8, 0x0

    goto :goto_28

    .line 482
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_1e
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_28

    .line 485
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 491
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_29

    const/4 v8, 0x1

    move v1, v8

    .line 492
    .restart local v1       #_arg1:Z
    :goto_2a
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowPOPIMAPEmail(Landroid/content/ComponentName;Z)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 494
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 488
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_28
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .line 491
    :cond_29
    const/4 v8, 0x0

    move v1, v8

    goto :goto_2a

    .line 498
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1f
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2a

    .line 501
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 506
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowPOPIMAPEmail(Landroid/content/ComponentName;)Z

    move-result v5

    .line 507
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 508
    if-eqz v5, :cond_2b

    const/4 v8, 0x1

    :goto_2c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 509
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 504
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .line 508
    .restart local v5       #_result:Z
    :cond_2b
    const/4 v8, 0x0

    goto :goto_2c

    .line 513
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_20
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2c

    .line 516
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 522
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2d

    const/4 v8, 0x1

    move v1, v8

    .line 523
    .restart local v1       #_arg1:Z
    :goto_2e
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowHTMLEmail(Landroid/content/ComponentName;Z)V

    .line 524
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 525
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 519
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_2c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2d

    .line 522
    :cond_2d
    const/4 v8, 0x0

    move v1, v8

    goto :goto_2e

    .line 529
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_2e

    .line 532
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 537
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowHTMLEmail(Landroid/content/ComponentName;)Z

    move-result v5

    .line 538
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 539
    if-eqz v5, :cond_2f

    const/4 v8, 0x1

    :goto_30
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 535
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_2e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2f

    .line 539
    .restart local v5       #_result:Z
    :cond_2f
    const/4 v8, 0x0

    goto :goto_30

    .line 544
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_22
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 546
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_30

    .line 547
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 553
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_31

    const/4 v8, 0x1

    move v1, v8

    .line 554
    .restart local v1       #_arg1:Z
    :goto_32
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBrowser(Landroid/content/ComponentName;Z)V

    .line 555
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 556
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 550
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_31

    .line 553
    :cond_31
    const/4 v8, 0x0

    move v1, v8

    goto :goto_32

    .line 560
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_23
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_32

    .line 563
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 568
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_33
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBrowser(Landroid/content/ComponentName;)Z

    move-result v5

    .line 569
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 570
    if-eqz v5, :cond_33

    const/4 v8, 0x1

    :goto_34
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 571
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 566
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_33

    .line 570
    .restart local v5       #_result:Z
    :cond_33
    const/4 v8, 0x0

    goto :goto_34

    .line 575
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_24
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_34

    .line 578
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 584
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_35
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_35

    const/4 v8, 0x1

    move v1, v8

    .line 585
    .restart local v1       #_arg1:Z
    :goto_36
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowInternetSharing(Landroid/content/ComponentName;Z)V

    .line 586
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 581
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_34
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_35

    .line 584
    :cond_35
    const/4 v8, 0x0

    move v1, v8

    goto :goto_36

    .line 591
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_25
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_36

    .line 594
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 599
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_37
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v5

    .line 600
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 601
    if-eqz v5, :cond_37

    const/4 v8, 0x1

    :goto_38
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 597
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_36
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_37

    .line 601
    .restart local v5       #_result:Z
    :cond_37
    const/4 v8, 0x0

    goto :goto_38

    .line 606
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_26
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_38

    .line 609
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 615
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_39
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_39

    const/4 v8, 0x1

    move v1, v8

    .line 616
    .restart local v1       #_arg1:Z
    :goto_3a
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireManualSyncRoaming(Landroid/content/ComponentName;Z)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 618
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 612
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_38
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_39

    .line 615
    :cond_39
    const/4 v8, 0x0

    move v1, v8

    goto :goto_3a

    .line 622
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_27
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 624
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3a

    .line 625
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 630
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireManualSyncRoaming(Landroid/content/ComponentName;)Z

    move-result v5

    .line 631
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 632
    if-eqz v5, :cond_3b

    const/4 v8, 0x1

    :goto_3c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 633
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 628
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_3a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3b

    .line 632
    .restart local v5       #_result:Z
    :cond_3b
    const/4 v8, 0x0

    goto :goto_3c

    .line 637
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_28
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3c

    .line 640
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 646
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 647
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowBluetoothMode(Landroid/content/ComponentName;I)V

    .line 648
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 649
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 643
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_3c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3d

    .line 653
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_29
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3d

    .line 656
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 661
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3e
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowBluetoothMode(Landroid/content/ComponentName;)I

    move-result v5

    .line 662
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 663
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 664
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 659
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_3d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3e

    .line 668
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2a
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3e

    .line 671
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 677
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 678
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMinPasswordComplexChars(Landroid/content/ComponentName;I)V

    .line 679
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 680
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 674
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_3e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3f

    .line 684
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_3f

    .line 687
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 692
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_40
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMinPasswordComplexChars(Landroid/content/ComponentName;)I

    move-result v5

    .line 693
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 695
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 690
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_3f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_40

    .line 699
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2c
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_40

    .line 702
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 708
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_41
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 709
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxCalendarAge(Landroid/content/ComponentName;I)V

    .line 710
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 711
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 705
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_40
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_41

    .line 715
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2d
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 717
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_41

    .line 718
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 723
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_42
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxCalendarAge(Landroid/content/ComponentName;)I

    move-result v5

    .line 724
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 721
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_41
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_42

    .line 730
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2e
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 732
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_42

    .line 733
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 739
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_43
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 740
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailAge(Landroid/content/ComponentName;I)V

    .line 741
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 742
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 736
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_42
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_43

    .line 746
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2f
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_43

    .line 749
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 754
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_44
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailAge(Landroid/content/ComponentName;)I

    move-result v5

    .line 755
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 757
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 752
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_43
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_44

    .line 761
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_30
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_44

    .line 764
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 770
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_45
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 771
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 772
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 767
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_44
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_45

    .line 777
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_31
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 779
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_45

    .line 780
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 785
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_46
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v5

    .line 786
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 787
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 788
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 783
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_45
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_46

    .line 792
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_32
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_46

    .line 795
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 801
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 802
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;I)V

    .line 803
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 798
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :cond_46
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_47

    .line 808
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_33
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_47

    .line 811
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 816
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_48
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getMaxHtmlEmailBodyTruncSize(Landroid/content/ComponentName;)I

    move-result v5

    .line 817
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 818
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 819
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 814
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_47
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_48

    .line 823
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_34
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 825
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_48

    .line 826
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 832
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_49

    const/4 v8, 0x1

    move v1, v8

    .line 833
    .local v1, _arg1:Z
    :goto_4a
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEMessages(Landroid/content/ComponentName;Z)V

    .line 834
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 835
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 829
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_48
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_49

    .line 832
    :cond_49
    const/4 v8, 0x0

    move v1, v8

    goto :goto_4a

    .line 839
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 841
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4a

    .line 842
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 847
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v5

    .line 848
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 849
    if-eqz v5, :cond_4b

    const/4 v8, 0x1

    :goto_4c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 850
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 845
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_4a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4b

    .line 849
    .restart local v5       #_result:Z
    :cond_4b
    const/4 v8, 0x0

    goto :goto_4c

    .line 854
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_36
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 856
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4c

    .line 857
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 863
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4d

    const/4 v8, 0x1

    move v1, v8

    .line 864
    .restart local v1       #_arg1:Z
    :goto_4e
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;Z)V

    .line 865
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 860
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_4c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4d

    .line 863
    :cond_4d
    const/4 v8, 0x0

    move v1, v8

    goto :goto_4e

    .line 870
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_37
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 872
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_4e

    .line 873
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 878
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4f
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptedSMIMEMessages(Landroid/content/ComponentName;)Z

    move-result v5

    .line 879
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 880
    if-eqz v5, :cond_4f

    const/4 v8, 0x1

    :goto_50
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 881
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 876
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_4e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4f

    .line 880
    .restart local v5       #_result:Z
    :cond_4f
    const/4 v8, 0x0

    goto :goto_50

    .line 885
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_38
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 887
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_50

    .line 888
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 894
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_51

    const/4 v8, 0x1

    move v1, v8

    .line 895
    .restart local v1       #_arg1:Z
    :goto_52
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    .line 896
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 897
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 891
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_50
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_51

    .line 894
    :cond_51
    const/4 v8, 0x0

    move v1, v8

    goto :goto_52

    .line 901
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_39
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_52

    .line 904
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 909
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_53
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireSignedSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v5

    .line 910
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 911
    if-eqz v5, :cond_53

    const/4 v8, 0x1

    :goto_54
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 912
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 907
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_52
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_53

    .line 911
    .restart local v5       #_result:Z
    :cond_53
    const/4 v8, 0x0

    goto :goto_54

    .line 916
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_3a
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 918
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_54

    .line 919
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 925
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_55

    const/4 v8, 0x1

    move v1, v8

    .line 926
    .restart local v1       #_arg1:Z
    :goto_56
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;Z)V

    .line 927
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 928
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 922
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_54
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_55

    .line 925
    :cond_55
    const/4 v8, 0x0

    move v1, v8

    goto :goto_56

    .line 932
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 934
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_56

    .line 935
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 940
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_57
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRequireEncryptionSMIMEAlgorithm(Landroid/content/ComponentName;)Z

    move-result v5

    .line 941
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 942
    if-eqz v5, :cond_57

    const/4 v8, 0x1

    :goto_58
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 943
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 938
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_56
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_57

    .line 942
    .restart local v5       #_result:Z
    :cond_57
    const/4 v8, 0x0

    goto :goto_58

    .line 947
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_3c
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 949
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_58

    .line 950
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 956
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_59

    const/4 v8, 0x1

    move v1, v8

    .line 957
    .restart local v1       #_arg1:Z
    :goto_5a
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;Z)V

    .line 958
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 959
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 953
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_58
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_59

    .line 956
    :cond_59
    const/4 v8, 0x0

    move v1, v8

    goto :goto_5a

    .line 963
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3d
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 965
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5a

    .line 966
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 971
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5b
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMEEncryptionAlgorithmNegotiation(Landroid/content/ComponentName;)Z

    move-result v5

    .line 972
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 973
    if-eqz v5, :cond_5b

    const/4 v8, 0x1

    :goto_5c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 974
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 969
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_5a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5b

    .line 973
    .restart local v5       #_result:Z
    :cond_5b
    const/4 v8, 0x0

    goto :goto_5c

    .line 978
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_3e
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5c

    .line 981
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 987
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5d

    const/4 v8, 0x1

    move v1, v8

    .line 988
    .restart local v1       #_arg1:Z
    :goto_5e
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowSMIMESoftCerts(Landroid/content/ComponentName;Z)V

    .line 989
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 990
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 984
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_5c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5d

    .line 987
    :cond_5d
    const/4 v8, 0x0

    move v1, v8

    goto :goto_5e

    .line 994
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3f
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 996
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5e

    .line 997
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1002
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_5f
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowSMIMESoftCerts(Landroid/content/ComponentName;)Z

    move-result v5

    .line 1003
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1004
    if-eqz v5, :cond_5f

    const/4 v8, 0x1

    :goto_60
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1005
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1000
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_5e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_5f

    .line 1004
    .restart local v5       #_result:Z
    :cond_5f
    const/4 v8, 0x0

    goto :goto_60

    .line 1009
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_40
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_60

    .line 1012
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1018
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_61

    const/4 v8, 0x1

    move v1, v8

    .line 1019
    .restart local v1       #_arg1:Z
    :goto_62
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowDesktopSync(Landroid/content/ComponentName;Z)V

    .line 1020
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1021
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1015
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_60
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_61

    .line 1018
    :cond_61
    const/4 v8, 0x0

    move v1, v8

    goto :goto_62

    .line 1025
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_41
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1027
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_62

    .line 1028
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1033
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_63
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowDesktopSync(Landroid/content/ComponentName;)Z

    move-result v5

    .line 1034
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1035
    if-eqz v5, :cond_63

    const/4 v8, 0x1

    :goto_64
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1036
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1031
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_62
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_63

    .line 1035
    .restart local v5       #_result:Z
    :cond_63
    const/4 v8, 0x0

    goto :goto_64

    .line 1040
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_42
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1042
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_64

    .line 1043
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1049
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_65

    const/4 v8, 0x1

    move v1, v8

    .line 1050
    .restart local v1       #_arg1:Z
    :goto_66
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setAllowIrDA(Landroid/content/ComponentName;Z)V

    .line 1051
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1052
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1046
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_64
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_65

    .line 1049
    :cond_65
    const/4 v8, 0x0

    move v1, v8

    goto :goto_66

    .line 1056
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_43
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1058
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_66

    .line 1059
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1064
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_67
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getAllowIrDA(Landroid/content/ComponentName;)Z

    move-result v5

    .line 1065
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1066
    if-eqz v5, :cond_67

    const/4 v8, 0x1

    :goto_68
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1067
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1062
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_66
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_67

    .line 1066
    .restart local v5       #_result:Z
    :cond_67
    const/4 v8, 0x0

    goto :goto_68

    .line 1071
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_44
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1072
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->lockNow()V

    .line 1073
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1074
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1078
    :sswitch_45
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1080
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1081
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->wipeData(I)V

    .line 1082
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1083
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1087
    .end local v0           #_arg0:I
    :sswitch_46
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1089
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_68

    .line 1090
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1095
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_69
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;)V

    .line 1096
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1097
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1093
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_68
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_69

    .line 1101
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_47
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_69

    .line 1104
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1109
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6a
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    .line 1110
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1111
    if-eqz v5, :cond_6a

    const/4 v8, 0x1

    :goto_6b
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1107
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_69
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6a

    .line 1111
    .restart local v5       #_result:Z
    :cond_6a
    const/4 v8, 0x0

    goto :goto_6b

    .line 1116
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :sswitch_48
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v7

    .line 1118
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1119
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 1120
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1124
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_49
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1126
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v5

    .line 1128
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1129
    if-eqz v5, :cond_6b

    const/4 v8, 0x1

    :goto_6c
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 1130
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1129
    :cond_6b
    const/4 v8, 0x0

    goto :goto_6c

    .line 1134
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:Z
    :sswitch_4a
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6c

    .line 1137
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1143
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_6d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6d

    .line 1144
    sget-object v8, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 1149
    .local v1, _arg1:Landroid/os/RemoteCallback;
    :goto_6e
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 1150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1151
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1140
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :cond_6c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6d

    .line 1147
    :cond_6d
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_6e

    .line 1155
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_4b
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1157
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6e

    .line 1158
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1163
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6f
    invoke-virtual {p0, v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 1164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1165
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1161
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_6e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6f

    .line 1169
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4c
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->recoverPassword()V

    .line 1171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1172
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1176
    :sswitch_4d
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_6f

    .line 1179
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1185
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_70

    const/4 v8, 0x1

    move v1, v8

    .line 1186
    .local v1, _arg1:Z
    :goto_71
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->setRecoveryPasswordState(Landroid/content/ComponentName;Z)V

    .line 1187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1188
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1182
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_6f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_70

    .line 1185
    :cond_70
    const/4 v8, 0x0

    move v1, v8

    goto :goto_71

    .line 1192
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4e
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1196
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1198
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1200
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_71

    const/4 v8, 0x1

    move v4, v8

    .line 1201
    .local v4, _arg3:Z
    :goto_72
    invoke-virtual {p0, v0, v1, v3, v4}, Landroid/app/admin/IDevicePolicyManager$Stub;->setActivePasswordState(IIIZ)V

    .line 1202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1203
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1200
    .end local v4           #_arg3:Z
    :cond_71
    const/4 v8, 0x0

    move v4, v8

    goto :goto_72

    .line 1207
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_4f
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportFailedPasswordAttempt()V

    .line 1209
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1210
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1214
    :sswitch_50
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1215
    invoke-virtual {p0}, Landroid/app/admin/IDevicePolicyManager$Stub;->reportSuccessfulPasswordAttempt()V

    .line 1216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1221
    :sswitch_51
    const-string v8, "android.app.admin.IDevicePolicyManager"

    invoke-virtual {p2, v8}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_72

    .line 1224
    sget-object v8, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 1230
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_73

    const/4 v8, 0x1

    move v1, v8

    .line 1231
    .local v1, _arg1:Z
    :goto_74
    invoke-virtual {p0, v0, v1}, Landroid/app/admin/IDevicePolicyManager$Stub;->notifyChanges(Landroid/content/ComponentName;Z)V

    .line 1232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1233
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1227
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_72
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_73

    .line 1230
    :cond_73
    const/4 v8, 0x0

    move v1, v8

    goto :goto_74

    .line 42
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
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
