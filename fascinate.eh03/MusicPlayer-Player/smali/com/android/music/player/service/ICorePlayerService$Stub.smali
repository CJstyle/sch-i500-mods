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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 615
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->openFile(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    const/4 v0, 0x1

    goto :goto_0

    .line 56
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getQueuePosition()I

    move-result v9

    .line 58
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    .end local v9           #_result:I
    :sswitch_3
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isPlaying()Z

    move-result v9

    .line 66
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v9, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    const/4 v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    .end local v9           #_result:Z
    :sswitch_4
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->stop()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :sswitch_5
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->pause()V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v0, 0x1

    goto :goto_0

    .line 86
    :sswitch_6
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->play()V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    :sswitch_7
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->prev()V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 100
    :sswitch_8
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->next()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    :sswitch_9
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v1, v0

    .line 110
    .local v1, _arg0:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playNext(Z)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 109
    .end local v1           #_arg0:Z
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    goto :goto_2

    .line 116
    :sswitch_a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v1, v0

    .line 119
    .restart local v1       #_arg0:Z
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playPrev(Z)V

    .line 120
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 118
    .end local v1           #_arg0:Z
    :cond_2
    const/4 v0, 0x0

    move v1, v0

    goto :goto_3

    .line 125
    :sswitch_b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->duration()J

    move-result-wide v9

    .line 127
    .local v9, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 129
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v9           #_result:J
    :sswitch_c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->position()J

    move-result-wide v9

    .line 135
    .restart local v9       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 137
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 141
    .end local v9           #_result:J
    :sswitch_d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 144
    .local v7, _arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/ICorePlayerService$Stub;->seek(J)J

    move-result-wide v9

    .line 145
    .restart local v9       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 147
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 151
    .end local v7           #_arg0:J
    .end local v9           #_result:J
    :sswitch_e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 153
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 159
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 161
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_10
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 169
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 175
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_11
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 180
    .local v2, _arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->moveQueueItem(II)V

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 186
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    :sswitch_12
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setQueuePosition(I)V

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    .end local v1           #_arg0:I
    :sswitch_13
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 197
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 203
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_14
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getAudioId()I

    move-result v9

    .line 205
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 211
    .end local v9           #_result:I
    :sswitch_15
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 214
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setShuffleMode(I)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 220
    .end local v1           #_arg0:I
    :sswitch_16
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getShuffleMode()I

    move-result v9

    .line 222
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 228
    .end local v9           #_result:I
    :sswitch_17
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 232
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 233
    .restart local v2       #_arg1:I
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->removeTracks(II)I

    move-result v9

    .line 234
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 235
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v9           #_result:I
    :sswitch_18
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 243
    .restart local v7       #_arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/ICorePlayerService$Stub;->removeTrack(J)I

    move-result v9

    .line 244
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    .end local v7           #_arg0:J
    .end local v9           #_result:I
    :sswitch_19
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 253
    .restart local v1       #_arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setRepeatMode(I)V

    .line 254
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 259
    .end local v1           #_arg0:I
    :sswitch_1a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getRepeatMode()I

    move-result v9

    .line 261
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 267
    .end local v9           #_result:I
    :sswitch_1b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getMediaMountedCount()I

    move-result v9

    .line 269
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 275
    .end local v9           #_result:I
    :sswitch_1c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getAudioSessionId()I

    move-result v9

    .line 277
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 283
    .end local v9           #_result:I
    :sswitch_1d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 286
    .restart local v7       #_arg0:J
    invoke-virtual {p0, v7, v8}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playSeek(J)V

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 292
    .end local v7           #_arg0:J
    :sswitch_1e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v1, v0

    .line 295
    .local v1, _arg0:Z
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->openCurrent(Z)V

    .line 296
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1           #_arg0:Z
    :cond_3
    const/4 v0, 0x0

    move v1, v0

    goto :goto_4

    .line 301
    :sswitch_1f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrent_ID()I

    move-result v9

    .line 303
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 309
    .end local v9           #_result:I
    :sswitch_20
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentMedia()Ljava/lang/String;

    move-result-object v9

    .line 311
    .local v9, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 313
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 317
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_21
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v9

    .line 319
    .restart local v9       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 320
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 325
    .end local v9           #_result:Ljava/lang/String;
    :sswitch_22
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getIndexOfPlayList()I

    move-result v9

    .line 327
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 328
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 329
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 333
    .end local v9           #_result:I
    :sswitch_23
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentMediaListType()I

    move-result v9

    .line 335
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 336
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 337
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 341
    .end local v9           #_result:I
    :sswitch_24
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getMpListFilter()Lcom/android/music/common/data/MpListFilter;

    move-result-object v9

    .line 343
    .local v9, _result:Lcom/android/music/common/data/MpListFilter;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    if-eqz v9, :cond_4

    .line 345
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Lcom/android/music/common/data/MpListFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 351
    :goto_5
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 349
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 355
    .end local v9           #_result:Lcom/android/music/common/data/MpListFilter;
    :sswitch_25
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getShuffle()Z

    move-result v9

    .line 357
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v9, :cond_5

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 358
    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    .line 363
    .end local v9           #_result:Z
    :sswitch_26
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setR2VSMode()V

    .line 365
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 370
    :sswitch_27
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 374
    .local v1, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 375
    .local v2, _arg1:[I
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setR2VSUserEQ(I[I)V

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 381
    .end local v1           #_arg0:I
    .end local v2           #_arg1:[I
    :sswitch_28
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getTotalMediaCount()I

    move-result v9

    .line 383
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 384
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 385
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 389
    .end local v9           #_result:I
    :sswitch_29
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getItemCountFromDB()I

    move-result v9

    .line 391
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 393
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 397
    .end local v9           #_result:I
    :sswitch_2a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 401
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 403
    .local v2, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 405
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 407
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 409
    .local v5, _arg4:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .local v6, _arg5:Ljava/lang/String;
    move-object v0, p0

    .line 410
    invoke-virtual/range {v0 .. v6}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPlayIterator(IIILjava/lang/String;ILjava/lang/String;)V

    .line 411
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 416
    .end local v1           #_arg0:I
    .end local v2           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Ljava/lang/String;
    .end local v5           #_arg4:I
    .end local v6           #_arg5:Ljava/lang/String;
    :sswitch_2b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 420
    .restart local v1       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 421
    sget-object v0, Lcom/android/music/common/data/MpListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/music/common/data/MpListFilter;

    .line 426
    .local v2, _arg1:Lcom/android/music/common/data/MpListFilter;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPlayIteratorWithFilter(ILcom/android/music/common/data/MpListFilter;)V

    .line 427
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 424
    .end local v2           #_arg1:Lcom/android/music/common/data/MpListFilter;
    :cond_6
    const/4 v2, 0x0

    .restart local v2       #_arg1:Lcom/android/music/common/data/MpListFilter;
    goto :goto_7

    .line 432
    .end local v1           #_arg0:I
    .end local v2           #_arg1:Lcom/android/music/common/data/MpListFilter;
    :sswitch_2c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 435
    .local v1, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setPlayIteratorWithUri(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 441
    .end local v1           #_arg0:Ljava/lang/String;
    :sswitch_2d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    move v1, v0

    .line 444
    .local v1, _arg0:Z
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->prepareWithLastPlayedFile(Z)V

    .line 445
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 443
    .end local v1           #_arg0:Z
    :cond_7
    const/4 v0, 0x0

    move v1, v0

    goto :goto_8

    .line 450
    :sswitch_2e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 452
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 453
    .local v1, _arg0:[I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getRealEQdata([I)V

    .line 454
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 455
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 459
    .end local v1           #_arg0:[I
    :sswitch_2f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->offRealEQdata()V

    .line 461
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 462
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 466
    :sswitch_30
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPlayListType()I

    move-result v9

    .line 468
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 474
    .end local v9           #_result:I
    :sswitch_31
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isStop()Z

    move-result v9

    .line 476
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    if-eqz v9, :cond_8

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 478
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 477
    :cond_8
    const/4 v0, 0x0

    goto :goto_9

    .line 482
    .end local v9           #_result:Z
    :sswitch_32
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isInitialized()Z

    move-result v9

    .line 484
    .restart local v9       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    if-eqz v9, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 485
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 490
    .end local v9           #_result:Z
    :sswitch_33
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->showNotificationInfo()V

    .line 492
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 497
    :sswitch_34
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->hideNotificationInfo()V

    .line 499
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 500
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 504
    :sswitch_35
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->InitIndex()V

    .line 506
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 507
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 511
    :sswitch_36
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 512
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPrev()Landroid/net/Uri;

    move-result-object v9

    .line 513
    .local v9, _result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    if-eqz v9, :cond_a

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 521
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 519
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 525
    .end local v9           #_result:Landroid/net/Uri;
    :sswitch_37
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    move v1, v0

    .line 528
    .local v1, _arg0:Z
    :goto_c
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getNext(Z)Landroid/net/Uri;

    move-result-object v9

    .line 529
    .restart local v9       #_result:Landroid/net/Uri;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 530
    if-eqz v9, :cond_c

    .line 531
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 532
    const/4 v0, 0x1

    invoke-virtual {v9, p3, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 537
    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 527
    .end local v1           #_arg0:Z
    .end local v9           #_result:Landroid/net/Uri;
    :cond_b
    const/4 v0, 0x0

    move v1, v0

    goto :goto_c

    .line 535
    .restart local v1       #_arg0:Z
    .restart local v9       #_result:Landroid/net/Uri;
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 541
    .end local v1           #_arg0:Z
    .end local v9           #_result:Landroid/net/Uri;
    :sswitch_38
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 544
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 550
    .local v1, _arg0:Landroid/net/Uri;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    move v2, v0

    .line 551
    .local v2, _arg1:Z
    :goto_f
    invoke-virtual {p0, v1, v2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->playIt(Landroid/net/Uri;Z)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 553
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 547
    .end local v1           #_arg0:Landroid/net/Uri;
    .end local v2           #_arg1:Z
    :cond_d
    const/4 v1, 0x0

    .restart local v1       #_arg0:Landroid/net/Uri;
    goto :goto_e

    .line 550
    :cond_e
    const/4 v0, 0x0

    move v2, v0

    goto :goto_f

    .line 557
    .end local v1           #_arg0:Landroid/net/Uri;
    :sswitch_39
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    move v1, v0

    .line 560
    .local v1, _arg0:Z
    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setUlpBypass(Z)V

    .line 561
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 562
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 559
    .end local v1           #_arg0:Z
    :cond_f
    const/4 v0, 0x0

    move v1, v0

    goto :goto_10

    .line 566
    :sswitch_3a
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    move v1, v0

    .line 569
    .restart local v1       #_arg0:Z
    :goto_11
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->prepare(Z)V

    .line 570
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 571
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 568
    .end local v1           #_arg0:Z
    :cond_10
    const/4 v0, 0x0

    move v1, v0

    goto :goto_11

    .line 575
    :sswitch_3b
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getPosition()I

    move-result v9

    .line 577
    .local v9, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 578
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 583
    .end local v9           #_result:I
    :sswitch_3c
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getCurrentVolume()I

    move-result v9

    .line 585
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 591
    .end local v9           #_result:I
    :sswitch_3d
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 594
    .local v1, _arg0:I
    invoke-virtual {p0, v1}, Lcom/android/music/player/service/ICorePlayerService$Stub;->setLaunchMode(I)V

    .line 595
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 596
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 600
    .end local v1           #_arg0:I
    :sswitch_3e
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->getLaunchMode()I

    move-result v9

    .line 602
    .restart local v9       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 604
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 608
    .end local v9           #_result:I
    :sswitch_3f
    const-string v0, "com.android.music.player.service.ICorePlayerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/android/music/player/service/ICorePlayerService$Stub;->isThereLastPlayedFile()Z

    move-result v9

    .line 610
    .local v9, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    if-eqz v9, :cond_11

    const/4 v0, 0x1

    :goto_12
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 611
    :cond_11
    const/4 v0, 0x0

    goto :goto_12

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
