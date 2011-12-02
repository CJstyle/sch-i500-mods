.class public abstract Lcom/android/music/player/service/ICorePlayerService$Stub;
.super Landroid/os/Binder;
.source "ICorePlayerService.java"

# interfaces
.implements Lcom/android/music/player/service/ICorePlayerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/ICorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/service/ICorePlayerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.music.player.service.ICorePlayerService"

.field static final TRANSACTION_InitIndex:I = 0x33

.field static final TRANSACTION_getBufferStatus:I = 0x1

.field static final TRANSACTION_getChannelCount:I = 0x23

.field static final TRANSACTION_getCurrentAlbumInfo:I = 0x9

.field static final TRANSACTION_getCurrentFilePath:I = 0x15

.field static final TRANSACTION_getCurrentMedia:I = 0x12

.field static final TRANSACTION_getCurrentMediaAudioId:I = 0x14

.field static final TRANSACTION_getCurrentMediaListType:I = 0x17

.field static final TRANSACTION_getCurrentVolume:I = 0x25

.field static final TRANSACTION_getCurrent_ID:I = 0x2e

.field static final TRANSACTION_getDuration:I = 0xf

.field static final TRANSACTION_getIndexOfPlayList:I = 0x2d

.field static final TRANSACTION_getLaunchMode:I = 0x29

.field static final TRANSACTION_getLyric:I = 0x18

.field static final TRANSACTION_getMMediaFilePath:I = 0x16

.field static final TRANSACTION_getMaxVolume:I = 0x26

.field static final TRANSACTION_getMpListFilter:I = 0x2f

.field static final TRANSACTION_getNext:I = 0x35

.field static final TRANSACTION_getNextAlbumInfo:I = 0xb

.field static final TRANSACTION_getPlayListType:I = 0x2c

.field static final TRANSACTION_getPosition:I = 0x10

.field static final TRANSACTION_getPrev:I = 0x36

.field static final TRANSACTION_getPrevAlbumInfo:I = 0xa

.field static final TRANSACTION_getRealEQdata:I = 0x34

.field static final TRANSACTION_getRepeat:I = 0x1f

.field static final TRANSACTION_getSampleRate:I = 0x22

.field static final TRANSACTION_getShuffle:I = 0x1d

.field static final TRANSACTION_getTotalMediaCount:I = 0x13

.field static final TRANSACTION_hideNotificationInfo:I = 0x32

.field static final TRANSACTION_isDuringCall:I = 0xc

.field static final TRANSACTION_isPlaying:I = 0xd

.field static final TRANSACTION_isStop:I = 0xe

.field static final TRANSACTION_isThereLastPlayedFile:I = 0x30

.field static final TRANSACTION_pause:I = 0x3

.field static final TRANSACTION_play:I = 0x2

.field static final TRANSACTION_playIt:I = 0x37

.field static final TRANSACTION_playNext:I = 0x5

.field static final TRANSACTION_playPrev:I = 0x6

.field static final TRANSACTION_prepare:I = 0x7

.field static final TRANSACTION_prepareWithLastPlayedFile:I = 0x8

.field static final TRANSACTION_setCurrentVolume:I = 0x24

.field static final TRANSACTION_setLaunchMode:I = 0x28

.field static final TRANSACTION_setPlayIterator:I = 0x19

.field static final TRANSACTION_setPlayIteratorWithFilter:I = 0x1a

.field static final TRANSACTION_setPlayIteratorWithUri:I = 0x1b

.field static final TRANSACTION_setPosition:I = 0x11

.field static final TRANSACTION_setPreviewUri:I = 0x2a

.field static final TRANSACTION_setPreviewUriAndFilePath:I = 0x2b

.field static final TRANSACTION_setR2VSMode:I = 0x20

.field static final TRANSACTION_setR2VSUserEQ:I = 0x21

.field static final TRANSACTION_setRepeat:I = 0x1e

.field static final TRANSACTION_setShuffle:I = 0x1c

.field static final TRANSACTION_showNotificationInfo:I = 0x31

.field static final TRANSACTION_stop:I = 0x4

.field static final TRANSACTION_stopIfNowPlaying:I = 0x27


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;
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
    const-string v1, "com.android.music.player.service.ICorePlayerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/music/player/service/ICorePlayerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/music/player/service/ICorePlayerService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/music/player/service/ICorePlayerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/music/player/service/ICorePlayerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    const/4 v10, 0x0

    const/4 v8, 0x1

    const-string v9, "com.android.music.player.service.ICorePlayerService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 567
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getBufferStatus()I

    move-result v7

    .line 49
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 51
    goto :goto_0

    .line 55
    .end local v7           #_result:I
    :sswitch_2
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->play()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 58
    goto :goto_0

    .line 62
    :sswitch_3
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->pause()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 65
    goto :goto_0

    .line 69
    :sswitch_4
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->stop()V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 72
    goto :goto_0

    .line 76
    :sswitch_5
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v8

    .line 79
    .local v1, _arg0:Z
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playNext(Z)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 81
    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_0
    move v1, v10

    .line 78
    goto :goto_1

    .line 85
    :sswitch_6
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v8

    .line 88
    .restart local v1       #_arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playPrev(Z)V

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 90
    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_1
    move v1, v10

    .line 87
    goto :goto_2

    .line 94
    :sswitch_7
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v1, v8

    .line 97
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->prepare(Z)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 99
    goto :goto_0

    .end local v1           #_arg0:Z
    :cond_2
    move v1, v10

    .line 96
    goto :goto_3

    .line 103
    :sswitch_8
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    move v1, v8

    .line 106
    .restart local v1       #_arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->prepareWithLastPlayedFile(Z)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 108
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_3
    move v1, v10

    .line 105
    goto :goto_4

    .line 112
    :sswitch_9
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v7

    .line 114
    .local v7, _result:Lcom/android/music/player/data/MusicAlbumInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v7, :cond_4

    .line 116
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v7, p3, v8}, Lcom/android/music/player/data/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5
    move v0, v8

    .line 122
    goto/16 :goto_0

    .line 120
    :cond_4
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 126
    .end local v7           #_result:Lcom/android/music/player/data/MusicAlbumInfo;
    :sswitch_a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPrevAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v7

    .line 128
    .restart local v7       #_result:Lcom/android/music/player/data/MusicAlbumInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    if-eqz v7, :cond_5

    .line 130
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {v7, p3, v8}, Lcom/android/music/player/data/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_6
    move v0, v8

    .line 136
    goto/16 :goto_0

    .line 134
    :cond_5
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 140
    .end local v7           #_result:Lcom/android/music/player/data/MusicAlbumInfo;
    :sswitch_b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getNextAlbumInfo()Lcom/android/music/player/data/MusicAlbumInfo;

    move-result-object v7

    .line 142
    .restart local v7       #_result:Lcom/android/music/player/data/MusicAlbumInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    if-eqz v7, :cond_6

    .line 144
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    invoke-virtual {v7, p3, v8}, Lcom/android/music/player/data/MusicAlbumInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_7
    move v0, v8

    .line 150
    goto/16 :goto_0

    .line 148
    :cond_6
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 154
    .end local v7           #_result:Lcom/android/music/player/data/MusicAlbumInfo;
    :sswitch_c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isDuringCall()Z

    move-result v7

    .line 156
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v7, :cond_7

    move v0, v8

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 158
    goto/16 :goto_0

    :cond_7
    move v0, v10

    .line 157
    goto :goto_8

    .line 162
    .end local v7           #_result:Z
    :sswitch_d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isPlaying()Z

    move-result v7

    .line 164
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v7, :cond_8

    move v0, v8

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 166
    goto/16 :goto_0

    :cond_8
    move v0, v10

    .line 165
    goto :goto_9

    .line 170
    .end local v7           #_result:Z
    :sswitch_e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isStop()Z

    move-result v7

    .line 172
    .restart local v7       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    if-eqz v7, :cond_9

    move v0, v8

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 174
    goto/16 :goto_0

    :cond_9
    move v0, v10

    .line 173
    goto :goto_a

    .line 178
    .end local v7           #_result:Z
    :sswitch_f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getDuration()I

    move-result v7

    .line 180
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 182
    goto/16 :goto_0

    .line 186
    .end local v7           #_result:I
    :sswitch_10
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPosition()I

    move-result v7

    .line 188
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 190
    goto/16 :goto_0

    .line 194
    .end local v7           #_result:I
    :sswitch_11
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 197
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPosition(I)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 199
    goto/16 :goto_0

    .line 203
    .end local v1           #_arg0:I
    :sswitch_12
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentMedia()Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 207
    goto/16 :goto_0

    .line 211
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_13
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getTotalMediaCount()I

    move-result v7

    .line 213
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 215
    goto/16 :goto_0

    .line 219
    .end local v7           #_result:I
    :sswitch_14
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentMediaAudioId()I

    move-result v7

    .line 221
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 223
    goto/16 :goto_0

    .line 227
    .end local v7           #_result:I
    :sswitch_15
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 231
    goto/16 :goto_0

    .line 235
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_16
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getMMediaFilePath()Ljava/lang/String;

    move-result-object v7

    .line 237
    .restart local v7       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 239
    goto/16 :goto_0

    .line 243
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_17
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentMediaListType()I

    move-result v7

    .line 245
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 247
    goto/16 :goto_0

    .line 251
    .end local v7           #_result:I
    :sswitch_18
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getLyric()Ljava/lang/String;

    move-result-object v7

    .line 253
    .local v7, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v8

    .line 255
    goto/16 :goto_0

    .line 259
    .end local v7           #_result:Ljava/lang/String;
    :sswitch_19
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 267
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 271
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 272
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    .line 273
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 274
    goto/16 :goto_0

    .line 278
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    :sswitch_1a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 282
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 283
    sget-object v0, Lcom/android/music/common/data/MpListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/common/data/MpListFilter;

    .line 288
    .local v2, _arg1:Lcom/android/music/common/data/MpListFilter;
    :goto_b
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 290
    goto/16 :goto_0

    .line 286
    .end local v2           #_arg1:Lcom/android/music/common/data/MpListFilter;
    :cond_a
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/music/common/data/MpListFilter;
    goto :goto_b

    .line 294
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/android/music/common/data/MpListFilter;
    :sswitch_1b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPlayIteratorWithUri(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 299
    goto/16 :goto_0

    .line 303
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_1c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    move v1, v8

    .line 306
    .local v1, _arg0:Z
    :goto_c
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setShuffle(Z)V

    .line 307
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 308
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    :cond_b
    move v1, v10

    .line 305
    goto :goto_c

    .line 312
    :sswitch_1d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getShuffle()Z

    move-result v7

    .line 314
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    if-eqz v7, :cond_c

    move v0, v8

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 316
    goto/16 :goto_0

    :cond_c
    move v0, v10

    .line 315
    goto :goto_d

    .line 320
    .end local v7           #_result:Z
    :sswitch_1e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 323
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setRepeat(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 325
    goto/16 :goto_0

    .line 329
    .end local v1           #_arg0:I
    :sswitch_1f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getRepeat()I

    move-result v7

    .line 331
    .local v7, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 333
    goto/16 :goto_0

    .line 337
    .end local v7           #_result:I
    :sswitch_20
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setR2VSMode()V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 340
    goto/16 :goto_0

    .line 344
    :sswitch_21
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 348
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 349
    .local v2, _arg1:[I
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setR2VSUserEQ(I[I)V

    .line 350
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 351
    goto/16 :goto_0

    .line 355
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    :sswitch_22
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getSampleRate()I

    move-result v7

    .line 357
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 359
    goto/16 :goto_0

    .line 363
    .end local v7           #_result:I
    :sswitch_23
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getChannelCount()I

    move-result v7

    .line 365
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 367
    goto/16 :goto_0

    .line 371
    .end local v7           #_result:I
    :sswitch_24
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setCurrentVolume(I)V

    .line 375
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 376
    goto/16 :goto_0

    .line 380
    .end local v1           #_arg0:I
    :sswitch_25
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentVolume()I

    move-result v7

    .line 382
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 384
    goto/16 :goto_0

    .line 388
    .end local v7           #_result:I
    :sswitch_26
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getMaxVolume()I

    move-result v7

    .line 390
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 392
    goto/16 :goto_0

    .line 396
    .end local v7           #_result:I
    :sswitch_27
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 399
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->stopIfNowPlaying(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 401
    goto/16 :goto_0

    .line 405
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_28
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 408
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setLaunchMode(I)V

    .line 409
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 410
    goto/16 :goto_0

    .line 414
    .end local v1           #_arg0:I
    :sswitch_29
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getLaunchMode()I

    move-result v7

    .line 416
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 417
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 418
    goto/16 :goto_0

    .line 422
    .end local v7           #_result:I
    :sswitch_2a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 424
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 427
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPreviewUri(Ljava/lang/String;I)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 429
    goto/16 :goto_0

    .line 433
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:I
    :sswitch_2b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 437
    .restart local v1       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 439
    .local v2, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 440
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPreviewUriAndFilePath(Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 442
    goto/16 :goto_0

    .line 446
    .end local v1           #_arg0:Ljava/lang/String;
    .end local v2           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :sswitch_2c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPlayListType()I

    move-result v7

    .line 448
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 449
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 450
    goto/16 :goto_0

    .line 454
    .end local v7           #_result:I
    :sswitch_2d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getIndexOfPlayList()I

    move-result v7

    .line 456
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 458
    goto/16 :goto_0

    .line 462
    .end local v7           #_result:I
    :sswitch_2e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrent_ID()I

    move-result v7

    .line 464
    .restart local v7       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 465
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 466
    goto/16 :goto_0

    .line 470
    .end local v7           #_result:I
    :sswitch_2f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v7

    .line 472
    .local v7, _result:Lcom/android/music/common/data/MpListFilter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    if-eqz v7, :cond_d

    .line 474
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 475
    invoke-virtual {v7, p3, v8}, Lcom/android/music/common/data/MpListFilter;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_e
    move v0, v8

    .line 480
    goto/16 :goto_0

    .line 478
    :cond_d
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 484
    .end local v7           #_result:Lcom/android/music/common/data/MpListFilter;
    :sswitch_30
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isThereLastPlayedFile()Z

    move-result v7

    .line 486
    .local v7, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v7, :cond_e

    move v0, v8

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v8

    .line 488
    goto/16 :goto_0

    :cond_e
    move v0, v10

    .line 487
    goto :goto_f

    .line 492
    .end local v7           #_result:Z
    :sswitch_31
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->showNotificationInfo()V

    .line 494
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 495
    goto/16 :goto_0

    .line 499
    :sswitch_32
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->hideNotificationInfo()V

    .line 501
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 502
    goto/16 :goto_0

    .line 506
    :sswitch_33
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->InitIndex()V

    .line 508
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 509
    goto/16 :goto_0

    .line 513
    :sswitch_34
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 515
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 516
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getRealEQdata([I)V

    .line 517
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 518
    goto/16 :goto_0

    .line 522
    .end local v1           #_arg0:[I
    :sswitch_35
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    move v1, v8

    .line 525
    .local v1, _arg0:Z
    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getNext(Z)Landroid/net/Uri;

    move-result-object v7

    .line 526
    .local v7, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 527
    if-eqz v7, :cond_10

    .line 528
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 529
    invoke-virtual {v7, p3, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_11
    move v0, v8

    .line 534
    goto/16 :goto_0

    .end local v1           #_arg0:Z
    .end local v7           #_result:Landroid/net/Uri;
    :cond_f
    move v1, v10

    .line 524
    goto :goto_10

    .line 532
    .restart local v1       #_arg0:Z
    .restart local v7       #_result:Landroid/net/Uri;
    :cond_10
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_11

    .line 538
    .end local v1           #_arg0:Z
    .end local v7           #_result:Landroid/net/Uri;
    :sswitch_36
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPrev()Landroid/net/Uri;

    move-result-object v7

    .line 540
    .restart local v7       #_result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 541
    if-eqz v7, :cond_11

    .line 542
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    invoke-virtual {v7, p3, v8}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_12
    move v0, v8

    .line 548
    goto/16 :goto_0

    .line 546
    :cond_11
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_12

    .line 552
    .end local v7           #_result:Landroid/net/Uri;
    :sswitch_37
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_12

    .line 555
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 561
    .local v1, _arg0:Landroid/net/Uri;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_13

    move v2, v8

    .line 562
    .local v2, _arg1:Z
    :goto_14
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playIt(Landroid/net/Uri;Z)V

    .line 563
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v8

    .line 564
    goto/16 :goto_0

    .line 558
    .end local v1           #_arg0:Landroid/net/Uri;
    .end local v2           #_arg1:Z
    :cond_12
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/Uri;
    goto :goto_13

    :cond_13
    move v2, v10

    .line 561
    goto :goto_14

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
