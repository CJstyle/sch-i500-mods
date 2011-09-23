.class public Lcom/sec/android/app/camera/MediaRecorderProfile;
.super Ljava/lang/Object;
.source "MediaRecorderProfile.java"


# static fields
.field private static final PROFILE_1280_720:I = 0x0

.field private static final PROFILE_176_144:I = 0x4

.field private static final PROFILE_320_240:I = 0x3

.field private static final PROFILE_640_480:I = 0x2

.field private static final PROFILE_720_480:I = 0x1

.field private static final PROFILE_MMS:I = 0x5

.field private static final PROPERTY_AUDIO_BITRATE:I = 0x7

.field private static final PROPERTY_AUDIO_ENCORDER:I = 0x6

.field private static final PROPERTY_AUDIO_NUM_CHANNELS:I = 0x8

.field private static final PROPERTY_AUDIO_SAMPLINGRATE:I = 0x9

.field private static final PROPERTY_VIDEO_BITRATE_FINE:I = 0x2

.field private static final PROPERTY_VIDEO_BITRATE_NORMAL:I = 0x3

.field private static final PROPERTY_VIDEO_BITRATE_SUPERFINE:I = 0x1

.field private static final PROPERTY_VIDEO_ENCORDER:I = 0x0

.field private static final PROPERTY_VIDEO_FRAME_RATE:I = 0x4

.field private static final PROPERTY_VIDEO_OUTPUT_FORMAT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "MediaRecorderProfile"


# instance fields
.field public final mAudioBitrate:I

.field public final mAudioChannels:I

.field public final mAudioEncoder:I

.field public final mAudioSamplingRate:I

.field public final mOutputFormat:I

.field private mProfileTable:[[I

.field public final mVideoBitrate:I

.field public final mVideoEncoder:I

.field public final mVideoFps:I

.field public final mVideoHeight:I

.field public final mVideoWidth:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V
    .locals 11
    .parameter "activityContext"
    .parameter "quality"

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x0

    const/16 v6, 0xa

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-array v3, v10, [[I

    new-array v4, v6, [I

    fill-array-data v4, :array_0

    aput-object v4, v3, v7

    const/4 v4, 0x1

    new-array v5, v6, [I

    fill-array-data v5, :array_1

    aput-object v5, v3, v4

    const/4 v4, 0x2

    new-array v5, v6, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v5, v6, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v4

    new-array v4, v6, [I

    fill-array-data v4, :array_4

    aput-object v4, v3, v8

    new-array v4, v6, [I

    fill-array-data v4, :array_5

    aput-object v4, v3, v9

    iput-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, propertyIndex:I
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v2

    .line 103
    .local v2, resolutionId:I
    const/4 v1, 0x3

    .line 106
    .local v1, qualityIndex:I
    packed-switch v2, :pswitch_data_0

    .line 125
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const/4 v0, 0x5

    .line 128
    const/16 v2, 0xc

    .line 131
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 144
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v7

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    .line 145
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v1

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 146
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v8

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    .line 147
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v9

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    .line 148
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntWidth(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    .line 149
    invoke-static {v2}, Lcom/sec/android/app/camera/CameraResolution;->getIntHeight(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    .line 160
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    aget v3, v3, v10

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x7

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 162
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x8

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    .line 163
    iget-object v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mProfileTable:[[I

    aget-object v3, v3, v0

    const/16 v4, 0x9

    aget v3, v3, v4

    iput v3, p0, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    .line 164
    return-void

    .line 108
    :pswitch_1
    const/4 v0, 0x0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    const/4 v0, 0x1

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    const/4 v0, 0x2

    .line 115
    goto :goto_0

    .line 117
    :pswitch_4
    const/4 v0, 0x3

    .line 118
    goto :goto_0

    .line 120
    :pswitch_5
    const/4 v0, 0x4

    goto :goto_0

    .line 133
    :pswitch_6
    const/4 v1, 0x1

    .line 134
    goto :goto_1

    .line 136
    :pswitch_7
    const/4 v1, 0x2

    .line 137
    goto :goto_1

    .line 139
    :pswitch_8
    const/4 v1, 0x3

    goto :goto_1

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x0t 0x1bt 0xb7t 0x0t
        0x80t 0x96t 0x98t 0x0t
        0x0t 0x12t 0x7at 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xa8t 0xa0t 0x34t 0x0t
        0x50t 0x3et 0x2bt 0x0t
        0x90t 0x10t 0x23t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x70t 0xf7t 0x2et 0x0t
        0xa8t 0xf4t 0x26t 0x0t
        0xb8t 0xcet 0x1et 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0xb4t 0xbt 0x0t
        0xe8t 0xc7t 0x9t 0x0t
        0x70t 0xe7t 0x7t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xe8t 0x74t 0x2t 0x0t
        0x90t 0x59t 0x2t 0x0t
        0x70t 0xbt 0x2t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0xb4t 0xf5t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x80t 0x3et 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x18t 0xf0t 0x1t 0x0t
        0x18t 0xf0t 0x1t 0x0t
        0x18t 0xf0t 0x1t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xa8t 0x2ft 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
    .end array-data

    .line 106
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 131
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
