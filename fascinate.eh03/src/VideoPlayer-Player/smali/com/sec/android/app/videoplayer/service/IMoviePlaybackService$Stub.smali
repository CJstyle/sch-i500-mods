.class public abstract Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;
.super Landroid/os/Binder;
.source "IMoviePlaybackService.java"

# interfaces
.implements Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p0, p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;
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
    const-string v1, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_0

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 43
    goto :goto_0

    .line 47
    :sswitch_1
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getBufferPercentage()I

    move-result v2

    .line 49
    .local v2, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 51
    goto :goto_0

    .line 55
    .end local v2           #_result:I
    :sswitch_2
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getVideoWidth()I

    move-result v2

    .line 57
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 59
    goto :goto_0

    .line 63
    .end local v2           #_result:I
    :sswitch_3
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getVideoHeight()I

    move-result v2

    .line 65
    .restart local v2       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 67
    goto :goto_0

    .line 71
    .end local v2           #_result:I
    :sswitch_4
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 75
    goto :goto_0

    .line 79
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_5
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getPublisher()Ljava/lang/String;

    move-result-object v2

    .line 81
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 83
    goto :goto_0

    .line 87
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_6
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->getFullPath()Ljava/lang/String;

    move-result-object v2

    .line 89
    .restart local v2       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v4, v5

    .line 91
    goto :goto_0

    .line 95
    .end local v2           #_result:Ljava/lang/String;
    :sswitch_7
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->position()J

    move-result-wide v2

    .line 97
    .local v2, _result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 99
    goto :goto_0

    .line 103
    .end local v2           #_result:J
    :sswitch_8
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->duration()J

    move-result-wide v2

    .line 105
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 107
    goto/16 :goto_0

    .line 111
    .end local v2           #_result:J
    :sswitch_9
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 114
    .local v0, _arg0:J
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->seek(J)J

    move-result-wide v2

    .line 115
    .restart local v2       #_result:J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    move v4, v5

    .line 117
    goto/16 :goto_0

    .line 121
    .end local v0           #_arg0:J
    .end local v2           #_result:J
    :sswitch_a
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->isPlaying()Z

    move-result v2

    .line 123
    .local v2, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v2, :cond_0

    move v4, v5

    :goto_1
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 125
    goto/16 :goto_0

    :cond_0
    move v4, v7

    .line 124
    goto :goto_1

    .line 129
    .end local v2           #_result:Z
    :sswitch_b
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->isInitialized()Z

    move-result v2

    .line 131
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v2, :cond_1

    move v4, v5

    :goto_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 133
    goto/16 :goto_0

    :cond_1
    move v4, v7

    .line 132
    goto :goto_2

    .line 137
    .end local v2           #_result:Z
    :sswitch_c
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->stop()V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 140
    goto/16 :goto_0

    .line 144
    :sswitch_d
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->pause()V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 147
    goto/16 :goto_0

    .line 151
    :sswitch_e
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v5

    .line 154
    .local v0, _arg0:Z
    :goto_3
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->setWakeMode(Z)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 156
    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_2
    move v0, v7

    .line 153
    goto :goto_3

    .line 160
    :sswitch_f
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->play()V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 163
    goto/16 :goto_0

    .line 167
    :sswitch_10
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->reset()V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 170
    goto/16 :goto_0

    .line 174
    :sswitch_11
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->internalSetEq(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v4, v5

    .line 179
    goto/16 :goto_0

    .line 183
    .end local v0           #_arg0:I
    :sswitch_12
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->startPlay(Ljava/lang/String;)Z

    move-result v2

    .line 187
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    if-eqz v2, :cond_3

    move v4, v5

    :goto_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 189
    goto/16 :goto_0

    :cond_3
    move v4, v7

    .line 188
    goto :goto_4

    .line 193
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_13
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->checkIsDRM(Ljava/lang/String;)Z

    move-result v2

    .line 197
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v2, :cond_4

    move v4, v5

    :goto_5
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 199
    goto/16 :goto_0

    :cond_4
    move v4, v7

    .line 198
    goto :goto_5

    .line 203
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v2           #_result:Z
    :sswitch_14
    const-string v4, "com.sec.android.app.videoplayer.service.IMoviePlaybackService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/service/IMoviePlaybackService$Stub;->isConnectionAlive()Z

    move-result v2

    .line 205
    .restart local v2       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    if-eqz v2, :cond_5

    move v4, v5

    :goto_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    move v4, v5

    .line 207
    goto/16 :goto_0

    :cond_5
    move v4, v7

    .line 206
    goto :goto_6

    .line 38
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
