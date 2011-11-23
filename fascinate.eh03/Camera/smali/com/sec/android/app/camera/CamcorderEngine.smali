.class public Lcom/sec/android/app/camera/CamcorderEngine;
.super Lcom/sec/android/app/camera/CameraEngine;
.source "CamcorderEngine.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    }
.end annotation


# instance fields
.field private mCamcorderDevice:Landroid/hardware/Camera;

.field private mCamcorderParameters:Landroid/hardware/Camera$Parameters;

.field private mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

.field private mCameraVideoFilename:Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentVideoFilename:Ljava/lang/String;

.field private mCurrentVideoTitle:Ljava/lang/String;

.field private mCurrentVideoValues:Landroid/content/ContentValues;

.field private mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

.field private mEsn:Ljava/lang/String;

.field private mIsVideoCaptureIntent:Z

.field private mMaxVideoDurationInMs:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mMediaRecorderRecording:Z

.field mPausing:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPrepareRecordingThread:Ljava/lang/Thread;

.field mPreviewing:Z

.field private mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

.field private mRecordingInitiated:Z

.field private mStartRecordingThread:Ljava/lang/Thread;

.field private mVideoFileLengthInByte:J

.field private mVideoRecordingTimeInMiliSecond:J

.field private mZoomIsBlocked:Z

.field private saveUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V
    .locals 8
    .parameter "activityContext"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x6

    const/4 v4, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/CameraEngine;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;)V

    .line 81
    new-instance v0, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    .line 86
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 101
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPausing:Z

    .line 102
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPreviewing:Z

    .line 105
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 117
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 118
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mEsn:Ljava/lang/String;

    .line 120
    iput-wide v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 121
    iput-wide v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 123
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 124
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 126
    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mZoomIsBlocked:Z

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateRecording;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v4}, Lcom/sec/android/app/camera/CeStateRecording;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStateDepot:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/CeStateWaitForSurface;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-direct {v2, p0, v3, v5}, Lcom/sec/android/app/camera/CeStateWaitForSurface;-><init>(Lcom/sec/android/app/camera/CameraEngine;Lcom/sec/android/app/camera/CeRequestQueue;I)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/CamcorderEngine;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/CamcorderEngine;)Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorCallback:Lcom/sec/android/app/camera/CamcorderEngine$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/CamcorderEngine;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initializeRecorder()V

    return-void
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/CamcorderEngine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/CamcorderEngine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/CamcorderEngine;)Landroid/media/MediaRecorder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/CamcorderEngine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    return-void
.end method

.method private cleanupEmptyFile()V
    .locals 5

    .prologue
    .line 1159
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1160
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1161
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1162
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1166
    :cond_0
    return-void
.end method

.method private cleanupTempFile()V
    .locals 3

    .prologue
    .line 1169
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1170
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1171
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "temp video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    :cond_0
    return-void
.end method

.method private createVideoPath()V
    .locals 15

    .prologue
    .line 1099
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1101
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 1104
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v2

    if-nez v2, :cond_0

    .line 1105
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1112
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v3, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1113
    const-string v3, ".mp4"

    .line 1114
    const-string v4, "video/mp4"

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    .line 1120
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1122
    new-instance v5, Ljava/text/SimpleDateFormat;

    iget-object v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1123
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 1124
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 1125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1127
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1130
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    const/4 v11, 0x0

    move-object v12, v7

    move-object v14, v10

    move-object v10, v7

    move v7, v11

    move-object v11, v8

    move-object v8, v14

    .line 1132
    :goto_2
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1133
    const-string v8, "CamcorderEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Duplicated file name found: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    invoke-virtual {v6, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 1135
    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 1136
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1139
    const-string v11, "CamcorderEngine"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "New file name created: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v8

    move-object v14, v11

    move-object v11, v7

    move v7, v10

    move-object v10, v8

    move-object v8, v14

    goto/16 :goto_2

    .line 1107
    :cond_0
    sget-object v2, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    goto/16 :goto_0

    .line 1116
    :cond_1
    const-string v3, ".3gp"

    .line 1117
    const-string v4, "video/3gpp"

    move-object v14, v4

    move-object v4, v3

    move-object v3, v14

    goto/16 :goto_1

    .line 1143
    :cond_2
    new-instance v2, Landroid/content/ContentValues;

    const/4 v4, 0x7

    invoke-direct {v2, v4}, Landroid/content/ContentValues;-><init>(I)V

    .line 1145
    const-string v4, "title"

    invoke-virtual {v2, v4, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    const-string v4, "_display_name"

    invoke-virtual {v2, v4, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v4, "datetaken"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1148
    const-string v4, "mime_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    const-string v3, "_data"

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const-string v3, "date_modified"

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1152
    iput-object v11, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 1153
    iput-object v12, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    .line 1154
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current camera video filename: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1156
    return-void
.end method

.method private disableAlertSound()V
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 722
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 723
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 725
    :cond_0
    return-void
.end method

.method private enableAlertSound()V
    .locals 3

    .prologue
    .line 729
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 730
    .local v0, statusBar:Landroid/app/StatusBarManager;
    if-eqz v0, :cond_0

    .line 731
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 733
    :cond_0
    return-void
.end method

.method private getTempFileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v0

    if-nez v0, :cond_0

    .line 1178
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_PHONE:Ljava/lang/String;

    .line 1182
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp_video"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1180
    :cond_0
    sget-object v0, Lcom/sec/android/app/camera/ImageSavingUtils;->CAMERA_IMAGE_BUCKET_NAME_MMC:Ljava/lang/String;

    goto :goto_0
.end method

.method private initializeRecorder()V
    .locals 15

    .prologue
    const-wide/16 v13, 0x0

    const/4 v12, 0x1

    const-string v11, "CamcorderEngine"

    .line 443
    const-string v8, "CamcorderEngine"

    const-string v8, "initializeRecorder"

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_0

    .line 569
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 450
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 451
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 453
    .local v5, myExtras:Landroid/os/Bundle;
    const-wide/16 v6, 0x0

    .line 454
    .local v6, requestedSizeLimit:J
    iget-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v8, :cond_2

    if-eqz v5, :cond_2

    .line 455
    const-string v8, "output"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    .line 456
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    if-eqz v8, :cond_1

    .line 458
    :try_start_0
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    const-string v10, "rw"

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 466
    :cond_1
    :goto_1
    const-string v8, "android.intent.extra.sizeLimit"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 467
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestedSizeLimit: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_2
    new-instance v8, Landroid/media/MediaRecorder;

    invoke-direct {v8}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 471
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->unlock()V

    .line 472
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 474
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 475
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 478
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 479
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 481
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v12}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 482
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mOutputFormat:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 485
    iget v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    add-int/lit8 v8, v8, 0x22

    iput v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 487
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    .line 490
    :try_start_1
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/16 v9, 0x1f4

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setDurationInterval(I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    .line 498
    :goto_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v8, :cond_9

    .line 499
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    .line 509
    :goto_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoFps:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 510
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoWidth:I

    iget-object v10, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v10, v10, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoHeight:I

    invoke-virtual {v8, v9, v10}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 512
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 513
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 514
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioChannels:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 515
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioSamplingRate:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 516
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoEncoder:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 519
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 520
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v9, v9, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioEncoder:I

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 522
    :cond_4
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 525
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v8

    invoke-static {v8}, Lcom/sec/android/app/camera/CheckMemory;->getAvailableStorage(I)J

    move-result-wide v3

    .line 526
    .local v3, maxFileSize:J
    cmp-long v8, v6, v13

    if-lez v8, :cond_5

    cmp-long v8, v6, v3

    if-gez v8, :cond_5

    .line 527
    move-wide v3, v6

    .line 530
    :cond_5
    const-wide v8, 0xffffffffL

    cmp-long v8, v3, v8

    if-lez v8, :cond_6

    .line 531
    const-wide v3, 0xffffffffL

    .line 534
    :cond_6
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v8

    if-ne v8, v12, :cond_7

    .line 535
    cmp-long v8, v6, v13

    if-nez v8, :cond_a

    .line 537
    const-wide/32 v3, 0x11f800

    .line 543
    :cond_7
    :goto_4
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxFileSize = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :try_start_2
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8, v3, v4}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 553
    :goto_5
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v8, :cond_8

    .line 555
    :try_start_3
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v8}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 568
    :cond_8
    :goto_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    goto/16 :goto_0

    .line 461
    .end local v3           #maxFileSize:J
    :catch_0
    move-exception v8

    move-object v1, v8

    .line 463
    .local v1, ex:Ljava/io/FileNotFoundException;
    const-string v8, "CamcorderEngine"

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 501
    .end local v1           #ex:Ljava/io/FileNotFoundException;
    :cond_9
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->createVideoPath()V

    .line 502
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 538
    .restart local v3       #maxFileSize:J
    :cond_a
    const-wide/32 v8, 0x11f800

    cmp-long v8, v6, v8

    if-lez v8, :cond_7

    .line 539
    const-wide/32 v3, 0x11f800

    goto :goto_4

    .line 547
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 548
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setMaxFileSize failed (maxFileSize: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    goto :goto_5

    .line 556
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    move-object v0, v8

    .line 557
    .local v0, e:Ljava/io/IOException;
    const-string v8, "CamcorderEngine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prepare failed for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v8, "CamcorderEngine"

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 561
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    .line 562
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 565
    iget-object v8, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v9, -0x4

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_6

    .line 491
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #maxFileSize:J
    :catch_3
    move-exception v8

    goto/16 :goto_2
.end method

.method private readVideoPreferences()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-string v5, "android.intent.extra.videoQuality"

    const-string v4, "android.intent.extra.durationLimit"

    .line 1285
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v0

    .line 1288
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1289
    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1290
    const-string v0, "android.intent.extra.videoQuality"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1291
    if-nez v0, :cond_1

    move v0, v3

    .line 1296
    :cond_0
    :goto_0
    iput v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1297
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1298
    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1299
    mul-int/lit16 v1, v1, 0x3e8

    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    .line 1305
    :goto_1
    new-instance v1, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-direct {v1, v2, v0}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1306
    return-void

    .line 1291
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1302
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getMaxVideoDurationInMs()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMaxVideoDurationInMs:I

    goto :goto_1
.end method

.method private registerVideo()V
    .locals 6

    .prologue
    const-string v5, "CamcorderEngine"

    .line 1192
    const-string v0, "CamcorderEngine"

    const-string v0, "registerVideo"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-nez v0, :cond_0

    .line 1195
    const-string v0, "content://media/external/video/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1196
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "_size"

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1197
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "duration"

    iget-wide v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1198
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v2, "resolution"

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1204
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1205
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current video URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1223
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoValues:Landroid/content/ContentValues;

    .line 1224
    return-void

    .line 1207
    :catch_0
    move-exception v0

    .line 1208
    const-string v0, "CamcorderEngine"

    const-string v0, "Not enough space in database"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f070109

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1210
    :catch_1
    move-exception v0

    .line 1211
    const-string v0, "CamcorderEngine"

    const-string v0, "insert failed"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1219
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v0, "saving file with provided intent uri"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->saveUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private renameTempFile()V
    .locals 3

    .prologue
    .line 1186
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->getTempFileName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1187
    .local v1, src:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1188
    .local v0, dest:Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1189
    return-void
.end method


# virtual methods
.method public doCancelVideoRecordingSync()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v3, "CamcorderEngine"

    .line 849
    const-string v0, "CamcorderEngine"

    const-string v0, "doCancelVideoRecordingSync"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v0, "CamcorderEngine"

    const-string v0, "Cancelling VideoRecording..."

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 854
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 856
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 858
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 863
    :goto_0
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 864
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 874
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_2

    .line 877
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 880
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 881
    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 882
    const-string v1, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleting cancelled video file ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :try_start_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    .line 889
    :cond_1
    :goto_1
    iput-object v5, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 893
    :cond_2
    iput-boolean v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 895
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 897
    const-string v0, "CamcorderEngine"

    const-string v0, "Cancelling VideoRecording is completed!"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    return-void

    .line 859
    :catch_0
    move-exception v0

    .line 860
    const-string v1, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 885
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public doChangeParameterSync(Ljava/lang/Object;)V
    .locals 6
    .parameter "param"

    .prologue
    const/16 v5, 0xb

    const-string v3, "CamcorderEngine"

    .line 349
    const-string v2, "CamcorderEngine"

    const-string v2, "doChangeParameterSync"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-nez v2, :cond_0

    .line 352
    const-string v2, "CamcorderEngine"

    const-string v2, "returning because mCameraDevice is null!"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :goto_0
    return-void

    .line 356
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    move-object v1, v0

    .line 358
    .local v1, p:Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 392
    :goto_1
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v2

    const/16 v3, 0x68

    if-ne v2, v3, :cond_1

    .line 393
    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v2

    const/16 v3, 0x9

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v2

    if-ltz v2, :cond_2

    .line 394
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    goto :goto_0

    .line 360
    :sswitch_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraResolution;->getResolutionString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 363
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 366
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getFocusModeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 369
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 372
    :sswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 375
    :sswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 378
    :sswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 386
    :sswitch_7
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getKey()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;->getValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 397
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0x67 -> :sswitch_1
        0x68 -> :sswitch_0
        0x69 -> :sswitch_2
        0x6b -> :sswitch_4
        0x6c -> :sswitch_3
        0x6d -> :sswitch_7
        0x6e -> :sswitch_7
        0x70 -> :sswitch_7
        0x72 -> :sswitch_7
        0x73 -> :sswitch_7
        0x74 -> :sswitch_7
    .end sparse-switch
.end method

.method public doPauseVideoRecordingSync()V
    .locals 3

    .prologue
    const-string v2, "CamcorderEngine"

    .line 742
    const-string v1, "CamcorderEngine"

    const-string v1, "doPauseVideoRecordingSync"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 745
    const-string v1, "CamcorderEngine"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :goto_0
    return-void

    .line 749
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 750
    const-string v1, "CamcorderEngine"

    const-string v1, "Recording is not started yet."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0

    .line 756
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 757
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not pause media recorder. "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 758
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doPrepareVideoRecordingAsync()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "continuous_af"

    const-string v1, "CamcorderEngine"

    .line 597
    const-string v0, "CamcorderEngine"

    const-string v0, "doPrepareVideoRecordingAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 600
    const-string v0, "CamcorderEngine"

    const-string v0, "mMediaRecorder is already initialized."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const-string v0, "CamcorderEngine"

    const-string v0, "Releasing mMediaRecorder..."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    .line 608
    const-string v0, "CamcorderEngine"

    const-string v0, "CamcorderParameters is null"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 637
    :goto_0
    return-void

    .line 613
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 614
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous_af"

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 619
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 623
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 625
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$2;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    .line 635
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    const-string v1, "PrepareRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 616
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "continuous_af"

    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public doResumeVideoRecordingSync()V
    .locals 3

    .prologue
    const-string v2, "CamcorderEngine"

    .line 772
    const-string v1, "CamcorderEngine"

    const-string v1, "doResumeVideoRecordingSync"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v1, :cond_0

    .line 775
    const-string v1, "CamcorderEngine"

    const-string v1, "MediaRecorder is not initialized."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    :goto_0
    return-void

    .line 779
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v1, :cond_1

    .line 780
    const-string v1, "CamcorderEngine"

    const-string v1, "Recording is not started yet."

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 785
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->disableAlertSound()V

    goto :goto_0

    .line 786
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 787
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    const-string v1, "Could not resume media recorder. "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public doSetAllParamsSync()V
    .locals 0

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->initialize()V

    .line 346
    return-void
.end method

.method public doStartEngineAsync()V
    .locals 3

    .prologue
    .line 273
    const-string v1, "CamcorderEngine"

    const-string v2, "doStartEngineAsync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 278
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v1, :cond_0

    .line 279
    new-instance v1, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;-><init>(Lcom/sec/android/app/camera/CameraEngine;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 282
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 284
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/CamcorderEngine$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/CamcorderEngine$1;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    .line 308
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    const-string v2, "openCamcorderThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 309
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mOpenCameraThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 315
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 316
    .local v0, holder:Landroid/view/SurfaceHolder;
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 317
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 318
    return-void
.end method

.method public doStartPreviewAsync()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "CamcorderEngine"

    .line 901
    const-string v0, "CamcorderEngine"

    const-string v0, "doStartPreviewAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    .line 904
    const-string v0, "CamcorderEngine"

    const-string v0, "return because mSurfaceHolder is null."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 909
    const-string v0, "CamcorderEngine"

    const-string v0, "return because mCameraDevice is null."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 913
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->resetPreviewSize()V

    .line 916
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 928
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledVideoGamma(Z)V

    .line 930
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeUIMode(I)V

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderOutdoorVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 934
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    .line 939
    :goto_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$4;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 954
    const-string v1, "startPreviewThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 956
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0

    .line 917
    :catch_0
    move-exception v0

    .line 918
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 919
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    .line 922
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 936
    :cond_2
    invoke-static {v2}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeOutDoor(Z)V

    goto :goto_1
.end method

.method public doStartVideoRecordingAsync()V
    .locals 4

    .prologue
    const-wide/16 v1, 0x0

    const-string v3, "CamcorderEngine"

    .line 648
    const-string v0, "CamcorderEngine"

    const-string v0, "doStartVideoRecordingAsync"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iput-wide v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    .line 650
    iput-wide v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    .line 653
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    :cond_0
    :goto_0
    const-string v0, "CamcorderEngine"

    const-string v0, "start video recording"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-nez v0, :cond_1

    .line 666
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sec/android/app/camera/CamcorderEngine$3;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/CamcorderEngine$3;-><init>(Lcom/sec/android/app/camera/CamcorderEngine;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    const-string v1, "StartRecordingThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 698
    :cond_1
    return-void

    .line 659
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public doStopEngineSync()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 321
    const-string v1, "CamcorderEngine"

    const-string v2, "doStopEngineSync"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 325
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    .line 328
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    if-eqz v1, :cond_1

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceView:Lcom/sec/android/app/camera/PreviewFrameLayout;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/PreviewFrameLayout;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 330
    .local v0, holder:Landroid/view/SurfaceHolder;
    if-eqz v0, :cond_1

    .line 331
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 335
    .end local v0           #holder:Landroid/view/SurfaceHolder;
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 337
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 338
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    .line 341
    :cond_2
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 342
    return-void
.end method

.method public doStopPreviewSync()V
    .locals 2

    .prologue
    .line 960
    const-string v0, "CamcorderEngine"

    const-string v1, "doStopPreviewSync"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 966
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    .line 967
    return-void
.end method

.method public doStopVideoRecordingSync()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const-string v5, "CamcorderEngine"

    .line 800
    const-string v1, "CamcorderEngine"

    const-string v1, "doStopVideoRecordingSync"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const-string v1, "CamcorderEngine"

    const-string v1, "Stopping VideoRecording..."

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    iget-boolean v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 805
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 808
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.UPDATE_GALLERY_CACHE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 810
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->playCameraSound(II)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->stopInactivityTimer()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->renameTempFile()V

    .line 826
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 827
    const-string v1, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting current video filename: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 829
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 830
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->registerVideo()V

    .line 833
    :cond_0
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 834
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 836
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    .line 837
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->updateRemainStorageIndicator()V

    .line 839
    const-string v1, "CamcorderEngine"

    const-string v1, "Stopping VideoRecording is completed!"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    :goto_0
    return-void

    .line 812
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 813
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iput-boolean v6, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    .line 815
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->releaseMediaRecorder()V

    .line 817
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupTempFile()V

    .line 818
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFilename:Ljava/lang/String;

    .line 819
    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraVideoFileDescriptor:Ljava/io/FileDescriptor;

    .line 821
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->enableAlertSound()V

    goto :goto_0
.end method

.method public doWaitForSurfaceAsync()V
    .locals 2

    .prologue
    const-string v1, "CamcorderEngine"

    .line 577
    const-string v0, "CamcorderEngine"

    const-string v0, "doWaitForSurfaceAsync"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 580
    const-string v0, "CamcorderEngine"

    const-string v0, "mSurfaceHolder is already created!!!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CeRequestQueue;->completeRequest()V

    .line 586
    :goto_0
    return-void

    .line 583
    :cond_0
    const-string v0, "CamcorderEngine"

    const-string v0, "start waiting for mSurfaceHolder..."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->changeEngineState(I)V

    goto :goto_0
.end method

.method public getCurrentVideoFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1317
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProfile()Lcom/sec/android/app/camera/MediaRecorderProfile;
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    if-nez v0, :cond_0

    .line 428
    const-string v0, "CamcorderEngine"

    const-string v1, "getMediaProfile: mCameraSettings is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/4 v0, 0x0

    .line 437
    :goto_0
    return-object v0

    .line 432
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0

    .line 436
    :cond_1
    new-instance v0, Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderQuality()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/camera/MediaRecorderProfile;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 437
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    goto :goto_0
.end method

.method public getRemainTime()I
    .locals 5

    .prologue
    .line 1362
    const/4 v1, 0x0

    .line 1363
    .local v1, nBitrate:I
    const/4 v3, 0x0

    .line 1364
    .local v3, nVideoBitrate:I
    const/4 v0, 0x0

    .line 1365
    .local v0, nAudioBitrate:I
    const/4 v2, 0x0

    .line 1367
    .local v2, nRemainTime:I
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->readVideoPreferences()V

    .line 1368
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v3, v4, Lcom/sec/android/app/camera/MediaRecorderProfile;->mVideoBitrate:I

    .line 1370
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAudioRecording()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1371
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    iget v0, v4, Lcom/sec/android/app/camera/MediaRecorderProfile;->mAudioBitrate:I

    .line 1374
    :cond_0
    add-int v4, v3, v0

    div-int/lit8 v1, v4, 0x8

    .line 1375
    iget-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/CameraSettings;->getStorage()I

    move-result v4

    invoke-static {v4, v1}, Lcom/sec/android/app/camera/CheckMemory;->getRemainTime(II)I

    move-result v2

    .line 1377
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1379
    return v2
.end method

.method public getVideoFileLengthInByte()J
    .locals 2

    .prologue
    .line 1309
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    return-wide v0
.end method

.method public getVideoRecordingTimeInSecond()I
    .locals 4

    .prologue
    .line 1313
    iget-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getZoomBlocked()Z
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mZoomIsBlocked:Z

    return v0
.end method

.method public handleVideoRecordingStarted()V
    .locals 2

    .prologue
    .line 701
    const-string v0, "CamcorderEngine"

    const-string v1, "handleVideoRecordingStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 703
    iget-object p0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    .end local p0
    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->onVideoRecordingStarted()V

    .line 704
    return-void
.end method

.method public initialize()V
    .locals 7

    .prologue
    const/16 v5, 0xb

    const/4 v4, 0x0

    const-string v6, "on"

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    .line 147
    .local v0, camSettings:Lcom/sec/android/app/camera/CameraSettings;
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x67

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderFlashMode()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getFlashModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderEffect()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getEffectString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6b

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderWB()I

    move-result v3

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getWhitebalanceString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x70

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderZoomValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 154
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6d

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderExposureValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x6e

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderAutocontrast()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x72

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 157
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x73

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0x74

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "video_recording_gamma"

    const-string v3, "on"

    invoke-virtual {v1, v2, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "slow_ae"

    const-string v3, "on"

    invoke-virtual {v1, v2, v6}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v1

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CameraResolution;->compare(II)I

    move-result v1

    if-ltz v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "60hz"

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v2, 0xa

    invoke-static {v2}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xc

    invoke-static {v3}, Lcom/sec/android/app/camera/CameraSettings;->getIsoString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/sec/android/app/camera/CameraSettings;->getBeautyString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const-string v2, "AppShutterSound"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 190
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 191
    return-void

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {v5}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4}, Lcom/sec/android/app/camera/CameraSettings;->getExposuremeterString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isMediaRecorderRecording()Z
    .locals 1

    .prologue
    .line 1358
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorderRecording:Z

    return v0
.end method

.method public isPrepareRecording()Z
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->isFirstRequest(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 421
    :cond_0
    const/4 v0, 0x1

    .line 423
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 413
    const/4 v0, 0x1

    .line 415
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCameraSettingsChanged(II)V
    .locals 2
    .parameter "menuid"
    .parameter "modeid"

    .prologue
    .line 975
    sparse-switch p1, :sswitch_data_0

    .line 1011
    :goto_0
    :sswitch_0
    return-void

    .line 986
    :sswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleChangeParameter(II)V

    goto :goto_0

    .line 999
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 1000
    new-instance v0, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;

    invoke-direct {v0, p0, p1, p2}, Lcom/sec/android/app/camera/CameraEngine$CeSettingsParameter;-><init>(Lcom/sec/android/app/camera/CameraEngine;II)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->doChangeParameterSync(Ljava/lang/Object;)V

    goto :goto_0

    .line 1002
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, p2}, Landroid/media/MediaRecorder;->setZoom(I)V

    .line 1003
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-static {p1}, Lcom/sec/android/app/camera/CameraSettings;->getModeString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    goto :goto_0

    .line 1008
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->searchForInitialLastContentUri()V

    goto :goto_0

    .line 975
    :sswitch_data_0
    .sparse-switch
        0x16 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_0
        0x67 -> :sswitch_1
        0x68 -> :sswitch_0
        0x69 -> :sswitch_1
        0x6a -> :sswitch_0
        0x6b -> :sswitch_1
        0x6c -> :sswitch_1
        0x6d -> :sswitch_1
        0x6e -> :sswitch_1
        0x6f -> :sswitch_0
        0x70 -> :sswitch_2
        0x72 -> :sswitch_1
        0x73 -> :sswitch_1
        0x74 -> :sswitch_1
    .end sparse-switch
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const-string v1, "CamcorderEngine"

    .line 1321
    const-string v0, "CamcorderEngine"

    const-string v0, "onError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1323
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1324
    const-string v0, "CamcorderEngine"

    const-string v0, "MEDIA_RECORDER_ERROR_UNKNOWN"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleCancelVideoRecording()V

    .line 1327
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1328
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camcorder;->finishRecordingWithError()V

    .line 1335
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mErrorMessageHandler:Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CameraEngine$ErrorMessageHandler;->sendEmptyMessage(I)Z

    .line 1336
    :goto_0
    return-void

    .line 1329
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1330
    const-string v0, "CamcorderEngine"

    const-string v0, "MEDIA_RECORDER_ERROR_BUFFER_OVERFLOW"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->bufferOverflowError()V

    .line 1332
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStopVideoRecording()V

    goto :goto_0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    .line 1339
    const/16 v0, 0x320

    if-ne p2, v0, :cond_1

    .line 1340
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 1341
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1355
    :cond_0
    :goto_0
    return-void

    .line 1343
    :cond_1
    const/16 v0, 0x321

    if-ne p2, v0, :cond_2

    .line 1344
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->handleRecordingCommand(I)V

    .line 1345
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->scheduleStartPreview()V

    .line 1347
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f07000c

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1349
    :cond_2
    const/16 v0, 0x325

    if-ne p2, v0, :cond_3

    .line 1350
    int-to-long v0, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoFileLengthInByte:J

    goto :goto_0

    .line 1352
    :cond_3
    const/16 v0, 0x326

    if-ne p2, v0, :cond_0

    .line 1353
    int-to-long v0, p3

    iput-wide v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mVideoRecordingTimeInMiliSecond:J

    goto :goto_0
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1084
    const-string v0, "CamcorderEngine"

    const-string v1, "Releasing media recorder."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 1086
    invoke-direct {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->cleanupEmptyFile()V

    .line 1087
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 1088
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 1089
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 1090
    iput-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mProfile:Lcom/sec/android/app/camera/MediaRecorderProfile;

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->lock()V

    .line 1095
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 1096
    return-void
.end method

.method protected resetPreviewSize()V
    .locals 9

    .prologue
    const/16 v7, 0x250

    const/4 v6, 0x1

    const/16 v4, 0x280

    const/16 v3, 0x1e0

    const-string v5, "CamcorderEngine"

    .line 1014
    const-string v0, "CamcorderEngine"

    const-string v0, "resetPreviewSize()"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    move v1, v4

    .line 1048
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v2

    if-ne v2, v6, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderResolution()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    move v0, v3

    move v1, v4

    .line 1060
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v2, :cond_2

    .line 1061
    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2, v1, v0}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1067
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCameraSettings:Lcom/sec/android/app/camera/CameraSettings;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getRecordingMode()I

    move-result v0

    if-ne v0, v6, :cond_3

    .line 1069
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x3a98

    const/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 1075
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    .line 1076
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderDevice:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1081
    :goto_3
    return-void

    .line 1019
    :pswitch_1
    const/16 v0, 0x500

    .line 1020
    const/16 v1, 0x2d0

    move v8, v1

    move v1, v0

    move v0, v8

    .line 1021
    goto :goto_0

    .line 1023
    :pswitch_2
    const/16 v0, 0x320

    move v1, v0

    move v0, v3

    .line 1025
    goto :goto_0

    .line 1027
    :pswitch_3
    const/16 v0, 0x2d0

    move v1, v0

    move v0, v3

    .line 1029
    goto :goto_0

    :pswitch_4
    move v0, v3

    move v1, v4

    .line 1033
    goto :goto_0

    :pswitch_5
    move v0, v3

    move v1, v4

    .line 1037
    goto :goto_0

    :pswitch_6
    move v0, v3

    move v1, v7

    .line 1041
    goto :goto_0

    :cond_1
    move v0, v3

    move v1, v7

    .line 1056
    goto :goto_1

    .line 1063
    :cond_2
    const-string v0, "CamcorderEngine"

    const-string v0, "resetPreviewSize()- mParameters is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1072
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCamcorderParameters:Landroid/hardware/Camera$Parameters;

    const/16 v1, 0x7530

    const/16 v2, 0x7530

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_2

    .line 1078
    :cond_4
    const-string v0, "CamcorderEngine"

    const-string v0, "resetPreviewSize()- mCameraDevice is null"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1017
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public scheduleCancelVideoRecording()V
    .locals 3

    .prologue
    .line 843
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleCancelVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x6a

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 846
    return-void
.end method

.method public schedulePauseVideoRecording()V
    .locals 3

    .prologue
    .line 736
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePauseVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 739
    return-void
.end method

.method public schedulePrepareVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x65

    .line 589
    const-string v0, "CamcorderEngine"

    const-string v1, "schedulePrepareVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 594
    :cond_0
    return-void
.end method

.method public scheduleResumeVideoRecording()V
    .locals 3

    .prologue
    .line 766
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleResumeVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 769
    return-void
.end method

.method public scheduleStartVideoRecording()V
    .locals 3

    .prologue
    const/16 v2, 0x66

    .line 640
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStartVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 645
    :cond_0
    return-void
.end method

.method public scheduleStopVideoRecording()V
    .locals 3

    .prologue
    .line 794
    const-string v0, "CamcorderEngine"

    const-string v1, "scheduleStopVideoRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRequestQueue:Lcom/sec/android/app/camera/CeRequestQueue;

    const/16 v1, 0x69

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/CeRequest;->obtainCeRequest(ILjava/lang/Object;)Lcom/sec/android/app/camera/CeRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CeRequestQueue;->addRequest(Lcom/sec/android/app/camera/CeRequest;)V

    .line 797
    return-void
.end method

.method public searchForInitialLastContentUri()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-string v6, "_id"

    .line 1265
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v6, v2, v0

    const/4 v0, 0x1

    const-string v1, "title"

    aput-object v1, v2, v0

    .line 1267
    const-string v5, "datetaken DESC"

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1271
    invoke-virtual {p0}, Lcom/sec/android/app/camera/CamcorderEngine;->clearLastContentUri()V

    .line 1273
    if-eqz v0, :cond_1

    .line 1274
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    const-string v1, "_id"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1276
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1278
    iget-object p0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast p0, Lcom/sec/android/app/camera/Camcorder;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/Camcorder;->updateQuickViewButtonDimmed()V

    .line 1280
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1282
    :cond_1
    return-void
.end method

.method protected searchForLastContentUri()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1227
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_0

    .line 1261
    :goto_0
    return-void

    .line 1231
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "title = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1232
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1234
    if-eqz v1, :cond_4

    .line 1235
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1236
    const-string v0, "_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 1237
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1239
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    .line 1241
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v3, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    .line 1242
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mCurrentVideoFilename:Ljava/lang/String;

    .line 1243
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1246
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mRecordingInitiated:Z

    if-eqz v0, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    if-nez v0, :cond_2

    .line 1248
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1251
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->removeMessages(I)V

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mUriSearchingHandler:Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v6, v2, v3}, Lcom/sec/android/app/camera/CameraEngine$UriSearchingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1257
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1254
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v2}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto :goto_1

    .line 1259
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    check-cast v0, Lcom/sec/android/app/camera/Camcorder;

    iget-object v1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mLastContentUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camcorder;->onVideoStoringCompleted(Landroid/net/Uri;)V

    goto/16 :goto_0
.end method

.method public setIsVideoCaptureIntent(Z)Z
    .locals 3
    .parameter "chkIsVideoCaptureIntent"

    .prologue
    .line 406
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    .line 407
    const-string v0, "CamcorderEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsVideoCaptureIntent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-boolean v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mIsVideoCaptureIntent:Z

    return v0
.end method

.method public setZoomBlocked(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mZoomIsBlocked:Z

    .line 133
    return-void
.end method

.method public startingPreviewCompleted()V
    .locals 1

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/CamcorderEngine;->setZoomBlocked(Z)V

    .line 971
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->onStartingPreviewCompleted()V

    .line 972
    return-void
.end method

.method public waitForStartRecordingThreadComplete()V
    .locals 1

    .prologue
    .line 708
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mPrepareRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    .line 712
    iget-object v0, p0, Lcom/sec/android/app/camera/CamcorderEngine;->mStartRecordingThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 717
    :cond_1
    :goto_0
    return-void

    .line 714
    :catch_0
    move-exception v0

    goto :goto_0
.end method
