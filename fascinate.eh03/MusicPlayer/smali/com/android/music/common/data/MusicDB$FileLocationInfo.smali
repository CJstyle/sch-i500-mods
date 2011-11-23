.class public Lcom/android/music/common/data/MusicDB$FileLocationInfo;
.super Ljava/lang/Object;
.source "MusicDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/data/MusicDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileLocationInfo"
.end annotation


# instance fields
.field public isInternal:I

.field public path:Ljava/lang/String;

.field public type:I

.field public uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
