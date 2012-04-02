.class Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;
.super Ljava/lang/Object;
.source "VideoDetailsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DetailsItem"
.end annotation


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDrmType:Ljava/lang/String;

.field private mDrmUses:Ljava/lang/String;

.field private mDrmValidity:Ljava/lang/String;

.field private mRoCount:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "content"
    .parameter "roCnt"
    .parameter "uses"
    .parameter "type"
    .parameter "validity"

    .prologue
    .line 499
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->this$0:Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mTitle:Ljava/lang/String;

    .line 501
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mContent:Ljava/lang/String;

    .line 502
    iput-object p4, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mRoCount:Ljava/lang/String;

    .line 503
    iput-object p5, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mDrmUses:Ljava/lang/String;

    .line 504
    iput-object p6, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mDrmType:Ljava/lang/String;

    .line 505
    iput-object p7, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mDrmValidity:Ljava/lang/String;

    .line 506
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mDrmType:Ljava/lang/String;

    return-object v0
.end method

.method public getDrmValidity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mDrmValidity:Ljava/lang/String;

    return-object v0
.end method

.method public getRoCnt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mRoCount:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUsesType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/popup/VideoDetailsDialog$DetailsItem;->mDrmUses:Ljava/lang/String;

    return-object v0
.end method
