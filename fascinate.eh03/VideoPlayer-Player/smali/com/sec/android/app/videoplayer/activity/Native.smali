.class public Lcom/sec/android/app/videoplayer/activity/Native;
.super Ljava/lang/Object;
.source "Native.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string v0, "/system/lib/libarcsoft_subtitle.so"

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native ARCSubtitleGetString(JJ)Ljava/lang/String;
.end method

.method public static native ARCSubtitleGetTrackInfo_Language(JJ)J
.end method

.method public static native ARCSubtitleGetTrackNumber(J)I
.end method

.method public static native ARCSubtitleInit([BJ)J
.end method

.method public static native ARCSubtitleSelectTrack(JJJJ)I
.end method

.method public static native ARCSubtitleSetConfig(JJJ)I
.end method

.method public static native ARCSubtitleTime2Index(JJ)I
.end method

.method public static native ARCSubtitleUnInit(J)I
.end method
