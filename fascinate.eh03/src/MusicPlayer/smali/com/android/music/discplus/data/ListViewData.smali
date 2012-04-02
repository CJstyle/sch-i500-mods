.class public Lcom/android/music/discplus/data/ListViewData;
.super Ljava/lang/Object;
.source "ListViewData.java"


# instance fields
.field public mAudioId:J

.field public mId:I

.field public mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(IJLjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "audioId"
    .parameter "title"

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/music/discplus/data/ListViewData;->mId:I

    .line 5
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/music/discplus/data/ListViewData;->mAudioId:J

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/music/discplus/data/ListViewData;->mTitle:Ljava/lang/String;

    .line 9
    iput p1, p0, Lcom/android/music/discplus/data/ListViewData;->mId:I

    .line 10
    iput-wide p2, p0, Lcom/android/music/discplus/data/ListViewData;->mAudioId:J

    .line 11
    iput-object p4, p0, Lcom/android/music/discplus/data/ListViewData;->mTitle:Ljava/lang/String;

    .line 12
    return-void
.end method
